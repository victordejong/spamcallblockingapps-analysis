package com.facebook.appevents.p280b;

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
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.EnumC10396m;
import com.facebook.GraphRequest;
import com.facebook.appevents.p280b.p281a.C9980e;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10333v;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
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
/* renamed from: com.facebook.appevents.b.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/e.class */
public class C9994e {

    /* renamed from: a */
    static final String f33235a = "com.facebook.appevents.b.e";

    /* renamed from: f */
    private static C9994e f33236f;

    /* renamed from: b */
    WeakReference<Activity> f33237b;

    /* renamed from: c */
    Timer f33238c;

    /* renamed from: d */
    String f33239d = null;

    /* renamed from: e */
    private final Handler f33240e = new Handler(Looper.getMainLooper());

    /* renamed from: com.facebook.appevents.b.e$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/e$a.class */
    static final class CallableC9999a implements Callable<String> {

        /* renamed from: a */
        private WeakReference<View> f33246a;

        CallableC9999a(View view) {
            this.f33246a = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public final /* synthetic */ String call() throws Exception {
            View view = this.f33246a.get();
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

    public C9994e(Activity activity) {
        this.f33237b = new WeakReference<>(activity);
        f33236f = this;
    }

    /* renamed from: a */
    public static GraphRequest m23652a(String str, AccessToken accessToken, String str2, String str3) {
        if (!C10249a.m23108a(C9994e.class) && str != null) {
            try {
                GraphRequest m23799a = GraphRequest.m23799a(accessToken, String.format(Locale.US, "%s/app_indexing", str2), (JSONObject) null, (GraphRequest.AbstractC9933b) null);
                Bundle bundle = m23799a.f33078d;
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putString("tree", str);
                bundle2.putString(ImpressionData.APP_VERSION, C10033b.m23555d());
                bundle2.putString("platform", Constants.ANDROID_PLATFORM);
                bundle2.putString("request_type", str3);
                if (str3.equals("app_indexing")) {
                    bundle2.putString("device_session_id", C9982b.m23681c());
                }
                m23799a.f33078d = bundle2;
                m23799a.m23798a(new GraphRequest.AbstractC9933b() { // from class: com.facebook.appevents.b.e.4
                    @Override // com.facebook.GraphRequest.AbstractC9933b
                    /* renamed from: a */
                    public final void mo22725a(C10351j c10351j) {
                        C10336x.m22993a(EnumC10396m.APP_EVENTS, C9994e.m23651b(), "App index sent to FB!");
                    }
                });
                return m23799a;
            } catch (Throwable th) {
                C10249a.m23106a(th, C9994e.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    static /* synthetic */ WeakReference m23655a(C9994e c9994e) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            return c9994e.f33237b;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ Timer m23653a(C9994e c9994e, Timer timer) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            c9994e.f33238c = timer;
            return timer;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23654a(C9994e c9994e, final String str) {
        if (C10249a.m23108a(C9994e.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(c9994e)) {
                return;
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.b.e.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        String m23209b = C10213ae.m23209b(str);
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (m23209b != null && m23209b.equals(C9994e.m23647e(C9994e.this))) {
                            return;
                        }
                        GraphRequest m23652a = C9994e.m23652a(str, currentAccessToken, C10181g.m23286m(), "app_indexing");
                        C9994e c9994e2 = C9994e.this;
                        if (C10249a.m23108a(c9994e2) || m23652a == null) {
                            return;
                        }
                        C10351j m23796a = GraphRequest.m23796a(m23652a);
                        try {
                            JSONObject jSONObject = m23796a.f33959a;
                            if (jSONObject == null) {
                                String str2 = C9994e.f33235a;
                                Log.e(str2, "Error sending UI component tree to Facebook: " + m23796a.f33960b);
                                return;
                            }
                            if ("true".equals(jSONObject.optString("success"))) {
                                C10336x.m22993a(EnumC10396m.APP_EVENTS, C9994e.f33235a, "Successfully send UI component tree to server");
                                c9994e2.f33239d = m23209b;
                            }
                            if (!jSONObject.has("is_app_indexing_enabled")) {
                                return;
                            }
                            C9982b.m23686a(Boolean.valueOf(jSONObject.getBoolean("is_app_indexing_enabled")));
                        } catch (JSONException e) {
                            Log.e(C9994e.f33235a, "Error decoding server response.", e);
                        }
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
        }
    }

    /* renamed from: b */
    static /* synthetic */ Handler m23650b(C9994e c9994e) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            return c9994e.f33240e;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: b */
    static /* synthetic */ String m23651b() {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            return f33235a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: c */
    static /* synthetic */ Timer m23649c(C9994e c9994e) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            return c9994e.f33238c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: d */
    static /* synthetic */ String m23648d(C9994e c9994e) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            c9994e.f33239d = null;
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: e */
    static /* synthetic */ String m23647e(C9994e c9994e) {
        if (C10249a.m23108a(C9994e.class)) {
            return null;
        }
        try {
            return c9994e.f33239d;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9994e.class);
            return null;
        }
    }

    /* renamed from: a */
    public final void m23656a() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            final TimerTask timerTask = new TimerTask() { // from class: com.facebook.appevents.b.e.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    try {
                        Activity activity = (Activity) C9994e.m23655a(C9994e.this).get();
                        View m23560a = C10033b.m23560a(activity);
                        if (activity == null || m23560a == null) {
                            return;
                        }
                        String simpleName = activity.getClass().getSimpleName();
                        if (!C9982b.m23679d()) {
                            return;
                        }
                        if (C10333v.m22996b()) {
                            C9980e.m23708a();
                            return;
                        }
                        FutureTask futureTask = new FutureTask(new CallableC9999a(m23560a));
                        C9994e.m23650b(C9994e.this).post(futureTask);
                        String str = "";
                        try {
                            str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                        } catch (Exception e) {
                            Log.e(C9994e.m23651b(), "Failed to take screenshot.", e);
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("screenname", simpleName);
                            jSONObject.put("screenshot", str);
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(C9981f.m23699c(m23560a));
                            jSONObject.put("view", jSONArray);
                        } catch (JSONException e2) {
                            Log.e(C9994e.m23651b(), "Failed to create JSONObject");
                        }
                        C9994e.m23654a(C9994e.this, jSONObject.toString());
                    } catch (Exception e3) {
                        Log.e(C9994e.m23651b(), "UI Component tree indexing failure!", e3);
                    }
                }
            };
            try {
                C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.b.e.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            try {
                                if (C9994e.m23649c(C9994e.this) != null) {
                                    C9994e.m23649c(C9994e.this).cancel();
                                }
                                C9994e.m23648d(C9994e.this);
                                C9994e.m23653a(C9994e.this, new Timer());
                                C9994e.m23649c(C9994e.this).scheduleAtFixedRate(timerTask, 0L, 1000L);
                            } catch (Exception e) {
                                Log.e(C9994e.m23651b(), "Error scheduling indexing job", e);
                            }
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.e(f33235a, "Error scheduling indexing job", e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
