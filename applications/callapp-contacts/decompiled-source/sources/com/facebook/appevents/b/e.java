package com.facebook.appevents.b;

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
import com.facebook.GraphRequest;
import com.facebook.appevents.b.a.f;
import com.facebook.appevents.f.b;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.v;
import com.facebook.internal.x;
import com.facebook.j;
import com.facebook.m;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static final String f19489a = "com.facebook.appevents.b.e";
    private static e f;

    /* renamed from: b  reason: collision with root package name */
    WeakReference<Activity> f19490b;

    /* renamed from: c  reason: collision with root package name */
    Timer f19491c;

    /* renamed from: d  reason: collision with root package name */
    String f19492d = null;
    private final Handler e = new Handler(Looper.getMainLooper());

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/e$a.class */
    static final class a implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<View> f19498a;

        a(View view) {
            this.f19498a = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public final /* synthetic */ String call() throws Exception {
            View view = this.f19498a.get();
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

    public e(Activity activity) {
        this.f19490b = new WeakReference<>(activity);
        f = this;
    }

    public static GraphRequest a(String str, AccessToken accessToken, String str2, String str3) {
        if (com.facebook.internal.b.b.a.a(e.class) || str == null) {
            return null;
        }
        try {
            GraphRequest a2 = GraphRequest.a(accessToken, String.format(Locale.US, "%s/app_indexing", str2), (JSONObject) null, (GraphRequest.b) null);
            Bundle bundle = a2.f19373d;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("tree", str);
            bundle2.putString(ImpressionData.APP_VERSION, b.d());
            bundle2.putString("platform", Constants.ANDROID_PLATFORM);
            bundle2.putString("request_type", str3);
            if (str3.equals("app_indexing")) {
                bundle2.putString("device_session_id", b.c());
            }
            a2.f19373d = bundle2;
            a2.a(new GraphRequest.b() { // from class: com.facebook.appevents.b.e.4
                @Override // com.facebook.GraphRequest.b
                public final void a(j jVar) {
                    x.a(m.APP_EVENTS, e.b(), "App index sent to FB!");
                }
            });
            return a2;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ WeakReference a(e eVar) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            return eVar.f19490b;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ Timer a(e eVar, Timer timer) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            eVar.f19491c = timer;
            return timer;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ void a(e eVar, final String str) {
        if (!com.facebook.internal.b.b.a.a(e.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(eVar)) {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.b.e.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    String b2 = ae.b(str);
                                    AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                                    if (b2 == null || !b2.equals(e.e(e.this))) {
                                        GraphRequest a2 = e.a(str, currentAccessToken, g.m(), "app_indexing");
                                        e eVar2 = e.this;
                                        if (!com.facebook.internal.b.b.a.a(eVar2) && a2 != null) {
                                            j a3 = GraphRequest.a(a2);
                                            try {
                                                JSONObject jSONObject = a3.f20036a;
                                                if (jSONObject != null) {
                                                    if ("true".equals(jSONObject.optString("success"))) {
                                                        x.a(m.APP_EVENTS, e.f19489a, "Successfully send UI component tree to server");
                                                        eVar2.f19492d = b2;
                                                    }
                                                    if (jSONObject.has("is_app_indexing_enabled")) {
                                                        b.a(Boolean.valueOf(jSONObject.getBoolean("is_app_indexing_enabled")));
                                                        return;
                                                    }
                                                    return;
                                                }
                                                String str2 = e.f19489a;
                                                Log.e(str2, "Error sending UI component tree to Facebook: " + a3.f20037b);
                                            } catch (JSONException e) {
                                                Log.e(e.f19489a, "Error decoding server response.", e);
                                            }
                                        }
                                    }
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, e.class);
            }
        }
    }

    static /* synthetic */ Handler b(e eVar) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            return eVar.e;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ String b() {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            return f19489a;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ Timer c(e eVar) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            return eVar.f19491c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ String d(e eVar) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            eVar.f19492d = null;
            return null;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ String e(e eVar) {
        if (com.facebook.internal.b.b.a.a(e.class)) {
            return null;
        }
        try {
            return eVar.f19492d;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, e.class);
            return null;
        }
    }

    public final void a() {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                final TimerTask timerTask = new TimerTask() { // from class: com.facebook.appevents.b.e.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        try {
                            Activity activity = (Activity) e.a(e.this).get();
                            View a2 = b.a(activity);
                            if (activity != null && a2 != null) {
                                String simpleName = activity.getClass().getSimpleName();
                                if (b.d()) {
                                    if (v.b()) {
                                        com.facebook.appevents.b.a.e.a();
                                        return;
                                    }
                                    FutureTask futureTask = new FutureTask(new a(a2));
                                    e.b(e.this).post(futureTask);
                                    String str = "";
                                    try {
                                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                                    } catch (Exception e) {
                                        Log.e(e.b(), "Failed to take screenshot.", e);
                                    }
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("screenname", simpleName);
                                        jSONObject.put("screenshot", str);
                                        JSONArray jSONArray = new JSONArray();
                                        jSONArray.put(f.c(a2));
                                        jSONObject.put("view", jSONArray);
                                    } catch (JSONException e2) {
                                        Log.e(e.b(), "Failed to create JSONObject");
                                    }
                                    e.a(e.this, jSONObject.toString());
                                }
                            }
                        } catch (Exception e3) {
                            Log.e(e.b(), "UI Component tree indexing failure!", e3);
                        }
                    }
                };
                try {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.b.e.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    try {
                                        if (e.c(e.this) != null) {
                                            e.c(e.this).cancel();
                                        }
                                        e.d(e.this);
                                        e.a(e.this, new Timer());
                                        e.c(e.this).scheduleAtFixedRate(timerTask, 0L, 1000L);
                                    } catch (Exception e) {
                                        Log.e(e.b(), "Error scheduling indexing job", e);
                                    }
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                } catch (RejectedExecutionException e) {
                    Log.e(f19489a, "Error scheduling indexing job", e);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
