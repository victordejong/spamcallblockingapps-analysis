package com.facebook.appevents.codeless;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/ViewIndexer.class */
public class ViewIndexer {
    private static final String APP_VERSION_PARAM = "app_version";
    private static final String PLATFORM_PARAM = "platform";
    private static final String REQUEST_TYPE = "request_type";
    private static final String SUCCESS = "success";
    private static final String TAG = "com.facebook.appevents.codeless.ViewIndexer";
    private static final String TREE_PARAM = "tree";
    private static ViewIndexer instance;
    private WeakReference<Activity> activityReference;
    private Timer indexingTimer;
    private String previousDigest = null;
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker.class */
    private static class ScreenshotTaker implements Callable<String> {
        private WeakReference<View> rootView;

        ScreenshotTaker(View view) {
            this.rootView = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            View view = this.rootView.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                return "";
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            view.draw(new Canvas(createBitmap));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        }
    }

    public ViewIndexer(Activity activity) {
        this.activityReference = new WeakReference<>(activity);
        instance = this;
    }

    static /* synthetic */ WeakReference access$000(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.activityReference;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ Handler access$100(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.uiThreadHandler;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ String access$200() {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ void access$300(ViewIndexer viewIndexer, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            viewIndexer.sendToServer(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    static /* synthetic */ Timer access$400(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.indexingTimer;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ Timer access$402(ViewIndexer viewIndexer, Timer timer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            viewIndexer.indexingTimer = timer;
            return timer;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ String access$500(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.previousDigest;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    static /* synthetic */ String access$502(ViewIndexer viewIndexer, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            viewIndexer.previousDigest = str;
            return str;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
        if (!CrashShieldHandler.isObjectCrashing(ViewIndexer.class) && str != null) {
            try {
                GraphRequest newPostRequest = GraphRequest.newPostRequest(accessToken, String.format(Locale.US, "%s/app_indexing", str2), null, null);
                Bundle parameters = newPostRequest.getParameters();
                Bundle bundle = parameters;
                if (parameters == null) {
                    bundle = new Bundle();
                }
                bundle.putString(TREE_PARAM, str);
                bundle.putString(APP_VERSION_PARAM, AppEventUtility.getAppVersion());
                bundle.putString(PLATFORM_PARAM, Constants.PLATFORM);
                bundle.putString(REQUEST_TYPE, str3);
                if (str3.equals(Constants.APP_INDEXING)) {
                    bundle.putString(Constants.DEVICE_SESSION_ID, CodelessManager.getCurrentDeviceSessionID());
                }
                newPostRequest.setParameters(bundle);
                newPostRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.appevents.codeless.ViewIndexer.4
                    @Override // com.facebook.GraphRequest.Callback
                    public void onCompleted(GraphResponse graphResponse) {
                        Logger.log(LoggingBehavior.APP_EVENTS, ViewIndexer.access$200(), "App index sent to FB!");
                    }
                });
                return newPostRequest;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
                return null;
            }
        }
        return null;
    }

    private void sendToServer(final String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.codeless.ViewIndexer.3
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        String md5hash = Utility.md5hash(str);
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (md5hash != null && md5hash.equals(ViewIndexer.access$500(ViewIndexer.this))) {
                            return;
                        }
                        ViewIndexer.this.processRequest(ViewIndexer.buildAppIndexingRequest(str, currentAccessToken, FacebookSdk.getApplicationId(), Constants.APP_INDEXING), md5hash);
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static void sendToServerUnityInstance(String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            ViewIndexer viewIndexer = instance;
            if (viewIndexer == null) {
                return;
            }
            viewIndexer.sendToServerUnity(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    String getPreviousDigest() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.previousDigest;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    void processRequest(GraphRequest graphRequest, String str) {
        if (!CrashShieldHandler.isObjectCrashing(this) && graphRequest != null) {
            try {
                GraphResponse executeAndWait = graphRequest.executeAndWait();
                try {
                    JSONObject jSONObject = executeAndWait.getJSONObject();
                    if (jSONObject == null) {
                        String str2 = TAG;
                        Log.e(str2, "Error sending UI component tree to Facebook: " + executeAndWait.getError());
                        return;
                    }
                    if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(jSONObject.optString("success"))) {
                        Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Successfully send UI component tree to server");
                        this.previousDigest = str;
                    }
                    if (!jSONObject.has(Constants.APP_INDEXING_ENABLED)) {
                        return;
                    }
                    CodelessManager.updateAppIndexing(Boolean.valueOf(jSONObject.getBoolean(Constants.APP_INDEXING_ENABLED)));
                } catch (JSONException e) {
                    Log.e(TAG, "Error decoding server response.", e);
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    public void schedule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            final TimerTask timerTask = new TimerTask() { // from class: com.facebook.appevents.codeless.ViewIndexer.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        Activity activity = (Activity) ViewIndexer.access$000(ViewIndexer.this).get();
                        View rootView = AppEventUtility.getRootView(activity);
                        if (activity == null || rootView == null) {
                            return;
                        }
                        String simpleName = activity.getClass().getSimpleName();
                        if (!CodelessManager.getIsAppIndexingEnabled()) {
                            return;
                        }
                        if (InternalSettings.isUnityApp()) {
                            UnityReflection.captureViewHierarchy();
                            return;
                        }
                        FutureTask futureTask = new FutureTask(new ScreenshotTaker(rootView));
                        ViewIndexer.access$100(ViewIndexer.this).post(futureTask);
                        String str = "";
                        try {
                            str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                        } catch (Exception e) {
                            Log.e(ViewIndexer.access$200(), "Failed to take screenshot.", e);
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put(ViewHierarchyConstants.SCREEN_NAME_KEY, simpleName);
                            jSONObject.put("screenshot", str);
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(ViewHierarchy.getDictionaryOfView(rootView));
                            jSONObject.put(ViewHierarchyConstants.VIEW_KEY, jSONArray);
                        } catch (JSONException e2) {
                            Log.e(ViewIndexer.access$200(), "Failed to create JSONObject");
                        }
                        ViewIndexer.access$300(ViewIndexer.this, jSONObject.toString());
                    } catch (Exception e3) {
                        Log.e(ViewIndexer.access$200(), "UI Component tree indexing failure!", e3);
                    }
                }
            };
            try {
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.codeless.ViewIndexer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (CrashShieldHandler.isObjectCrashing(this)) {
                                return;
                            }
                            try {
                                if (ViewIndexer.access$400(ViewIndexer.this) != null) {
                                    ViewIndexer.access$400(ViewIndexer.this).cancel();
                                }
                                ViewIndexer.access$502(ViewIndexer.this, null);
                                ViewIndexer.access$402(ViewIndexer.this, new Timer());
                                ViewIndexer.access$400(ViewIndexer.this).scheduleAtFixedRate(timerTask, 0L, 1000L);
                            } catch (Exception e) {
                                Log.e(ViewIndexer.access$200(), "Error scheduling indexing job", e);
                            }
                        } catch (Throwable th) {
                            CrashShieldHandler.handleThrowable(th, this);
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.e(TAG, "Error scheduling indexing job", e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Deprecated
    public void sendToServerUnity(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            instance.sendToServer(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void unschedule() {
        Timer timer;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.activityReference.get() == null || (timer = this.indexingTimer) == null) {
                return;
            }
            try {
                timer.cancel();
                this.indexingTimer = null;
            } catch (Exception e) {
                Log.e(TAG, "Error unscheduling indexing job", e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
