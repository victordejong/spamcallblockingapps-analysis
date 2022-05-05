package com.facebook.appevents.p036r;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.p036r.p037g.C2325e;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.appevents.p038s.C2334b;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2500w;
import com.facebook.internal.C2503y;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.r.e */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e.class */
public class C2310e {

    /* renamed from: e */
    public static final String f2778e = "com.facebook.appevents.r.e";

    /* renamed from: b */
    public WeakReference<Activity> f2780b;

    /* renamed from: c */
    public Timer f2781c;

    /* renamed from: d */
    public String f2782d = null;

    /* renamed from: a */
    public final Handler f2779a = new Handler(Looper.getMainLooper());

    /* renamed from: com.facebook.appevents.r.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e$a.class */
    public class C2311a extends TimerTask {
        public C2311a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            String str;
            try {
                Activity activity = (Activity) C2310e.this.f2780b.get();
                if (activity != null) {
                    String simpleName = activity.getClass().getSimpleName();
                    View rootView = activity.getWindow().getDecorView().getRootView();
                    if (C2300b.m35225f()) {
                        if (C2500w.m34565b()) {
                            C2325e.m35173a();
                            return;
                        }
                        FutureTask futureTask = new FutureTask(new CallableC2315e(rootView));
                        C2310e.this.f2779a.post(futureTask);
                        try {
                            str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                        } catch (Exception e) {
                            Log.e(C2310e.f2778e, "Failed to take screenshot.", e);
                            str = "";
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("screenname", simpleName);
                            jSONObject.put("screenshot", str);
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(C2326f.m35163d(rootView));
                            jSONObject.put("view", jSONArray);
                        } catch (JSONException e2) {
                            Log.e(C2310e.f2778e, "Failed to create JSONObject");
                        }
                        C2310e.this.m35197a(jSONObject.toString());
                    }
                }
            } catch (Exception e3) {
                Log.e(C2310e.f2778e, "UI Component tree indexing failure!", e3);
            }
        }
    }

    /* renamed from: com.facebook.appevents.r.e$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e$b.class */
    public class RunnableC2312b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ TimerTask f2784a;

        public RunnableC2312b(TimerTask timerTask) {
            this.f2784a = timerTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (C2310e.this.f2781c != null) {
                    C2310e.this.f2781c.cancel();
                }
                C2310e.this.f2782d = null;
                C2310e.this.f2781c = new Timer();
                C2310e.this.f2781c.scheduleAtFixedRate(this.f2784a, 0L, 1000L);
            } catch (Exception e) {
                Log.e(C2310e.f2778e, "Error scheduling indexing job", e);
            }
        }
    }

    /* renamed from: com.facebook.appevents.r.e$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e$c.class */
    public class RunnableC2313c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f2786a;

        public RunnableC2313c(String str) {
            this.f2786a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GraphRequest a;
            String e = C2408g0.m34812e(this.f2786a);
            AccessToken B = AccessToken.m35507B();
            if ((e == null || !e.equals(C2310e.this.f2782d)) && (a = C2310e.m35196a(this.f2786a, B, C6135n.m23745f(), "app_indexing")) != null) {
                C6148s b = a.m35437b();
                try {
                    JSONObject b2 = b.m23698b();
                    if (b2 != null) {
                        if ("true".equals(b2.optString("success"))) {
                            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2310e.f2778e, "Successfully send UI component tree to server");
                            C2310e.this.f2782d = e;
                        }
                        if (b2.has("is_app_indexing_enabled")) {
                            C2300b.m35229c(Boolean.valueOf(b2.getBoolean("is_app_indexing_enabled")));
                            return;
                        }
                        return;
                    }
                    String str = C2310e.f2778e;
                    Log.e(str, "Error sending UI component tree to Facebook: " + b.m23705a());
                } catch (JSONException e2) {
                    Log.e(C2310e.f2778e, "Error decoding server response.", e2);
                }
            }
        }
    }

    /* renamed from: com.facebook.appevents.r.e$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e$d.class */
    public static final class C2314d implements GraphRequest.AbstractC2230f {
        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2310e.f2778e, "App index sent to FB!");
        }
    }

    /* renamed from: com.facebook.appevents.r.e$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/e$e.class */
    public static class CallableC2315e implements Callable<String> {

        /* renamed from: a */
        public WeakReference<View> f2788a;

        public CallableC2315e(View view) {
            this.f2788a = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            View view = this.f2788a.get();
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

    public C2310e(Activity activity) {
        this.f2780b = new WeakReference<>(activity);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public static GraphRequest m35196a(String str, AccessToken accessToken, String str2, String str3) {
        if (str == null) {
            return null;
        }
        GraphRequest a = GraphRequest.m35460a(accessToken, String.format(Locale.US, "%s/app_indexing", str2), (JSONObject) null, (GraphRequest.AbstractC2230f) null);
        Bundle j = a.m35414j();
        Bundle bundle = j;
        if (j == null) {
            bundle = new Bundle();
        }
        bundle.putString("tree", str);
        bundle.putString("app_version", C2334b.m35125c());
        bundle.putString("platform", IJSExecutor.JS_FUNCTION_GROUP);
        bundle.putString("request_type", str3);
        if (str3.equals("app_indexing")) {
            bundle.putString("device_session_id", C2300b.m35226e());
        }
        a.m35464a(bundle);
        a.m35459a((GraphRequest.AbstractC2230f) new C2314d());
        return a;
    }

    /* renamed from: a */
    public void m35201a() {
        C6135n.m23737n().execute(new RunnableC2312b(new C2311a()));
    }

    /* renamed from: a */
    public final void m35197a(String str) {
        C6135n.m23737n().execute(new RunnableC2313c(str));
    }

    /* renamed from: b */
    public void m35195b() {
        Timer timer;
        if (this.f2780b.get() != null && (timer = this.f2781c) != null) {
            try {
                timer.cancel();
                this.f2781c = null;
            } catch (Exception e) {
                Log.e(f2778e, "Error unscheduling indexing job", e);
            }
        }
    }
}
