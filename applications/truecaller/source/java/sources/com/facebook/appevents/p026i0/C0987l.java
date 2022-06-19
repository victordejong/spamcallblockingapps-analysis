package com.facebook.appevents.p026i0;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.p026i0.C0987l;
import com.facebook.appevents.p026i0.p027n.C0999e;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.appevents.p031m0.C1035g;
import com.facebook.internal.C1139i0;
import com.facebook.internal.C1143k0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.EnumC23248n0;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018�� \u00162\u00020\u0001:\u0002\u0016\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0012\u001a\u00020\u000eJ\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0006\u0010\u0015\u001a\u00020\u000eR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer;", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "activityReference", "Ljava/lang/ref/WeakReference;", "indexingTimer", "Ljava/util/Timer;", "previousDigest", "", "uiThreadHandler", "Landroid/os/Handler;", "processRequest", "", "request", "Lcom/facebook/GraphRequest;", "currentDigest", "schedule", "sendToServer", "tree", "unschedule", "Companion", "ScreenshotTaker", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/l.class */
public final class C0987l {

    /* renamed from: e */
    public static final C0988a f2722e = null;

    /* renamed from: f */
    public static final String f2723f;

    /* renamed from: b */
    public final WeakReference<Activity> f2725b;

    /* renamed from: c */
    public Timer f2726c;

    /* renamed from: d */
    public String f2727d = null;

    /* renamed from: a */
    public final Handler f2724a = new Handler(Looper.getMainLooper());

    @Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer$Companion;", "", "()V", "APP_VERSION_PARAM", "", "PLATFORM_PARAM", "REQUEST_TYPE", "SUCCESS", "TAG", "TREE_PARAM", "instance", "Lcom/facebook/appevents/codeless/ViewIndexer;", "buildAppIndexingRequest", "Lcom/facebook/GraphRequest;", "appIndex", "accessToken", "Lcom/facebook/AccessToken;", "appId", "requestType", "sendToServerUnityInstance", "", "tree", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.l$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/l$a.class */
    public static final class C0988a {
        /* renamed from: a */
        public static final GraphRequest m41934a(String str, AccessToken accessToken, String str2, String str3) {
            String str4;
            l.e(str3, "requestType");
            GraphRequest.C0923c c0923c = GraphRequest.f2543k;
            String format = String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1));
            l.d(format, "java.lang.String.format(locale, format, *args)");
            GraphRequest m41999i = c0923c.m41999i(accessToken, format, null, null);
            Bundle bundle = m41999i.f2552e;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("tree", str);
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            try {
                str4 = m7354a.getPackageManager().getPackageInfo(m7354a.getPackageName(), 0).versionName;
                l.d(str4, "{\n      val packageInfo = context.packageManager.getPackageInfo(context.packageName, 0)\n      packageInfo.versionName\n    }");
            } catch (PackageManager.NameNotFoundException e) {
                str4 = "";
            }
            bundle2.putString("app_version", str4);
            bundle2.putString("platform", Constants.ANDROID_PLATFORM);
            bundle2.putString("request_type", str3);
            if (l.a(str3, "app_indexing")) {
                C0980i c0980i = C0980i.f2694a;
                bundle2.putString("device_session_id", C0980i.m41951b());
            }
            m41999i.m42008l(bundle2);
            m41999i.m42009k(C0975f.f2680a);
            return m41999i;
        }
    }

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;", "Ljava/util/concurrent/Callable;", "", "rootView", "Landroid/view/View;", "(Landroid/view/View;)V", "Ljava/lang/ref/WeakReference;", "call", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.l$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/l$b.class */
    public static final class CallableC0989b implements Callable<String> {

        /* renamed from: a */
        public final WeakReference<View> f2728a;

        public CallableC0989b(View view) {
            l.e(view, "rootView");
            this.f2728a = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            String str;
            View view = this.f2728a.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                str = "";
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                l.d(str, "encodeToString(outputStream.toByteArray(), Base64.NO_WRAP)");
            }
            return str;
        }
    }

    @Metadata(d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/facebook/appevents/codeless/ViewIndexer$schedule$indexingTask$1", "Ljava/util/TimerTask;", "run", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.l$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/l$c.class */
    public static final class C0990c extends TimerTask {
        public C0990c() {
            C0987l.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            String str;
            try {
                Activity activity = (C1220a.m41623b(C0987l.class) ? null : C0987l.this.f2725b).get();
                View m41867b = C1035g.m41867b(activity);
                if (activity == null || m41867b == null) {
                    return;
                }
                String simpleName = activity.getClass().getSimpleName();
                l.d(simpleName, "activity.javaClass.simpleName");
                C0980i c0980i = C0980i.f2694a;
                boolean z = false;
                if (!C1220a.m41623b(C0980i.class)) {
                    z = C0980i.f2700g.get();
                }
                if (!z) {
                    return;
                }
                if (C1139i0.m41734a()) {
                    C0999e.m41930a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
                    return;
                }
                FutureTask futureTask = new FutureTask(new CallableC0989b(m41867b));
                (C1220a.m41623b(C0987l.class) ? null : C0987l.this.f2724a).post(futureTask);
                try {
                    str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                } catch (Exception e) {
                    C0987l.m41937a();
                    str = "";
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("screenname", simpleName);
                    jSONObject.put("screenshot", str);
                    JSONArray jSONArray = new JSONArray();
                    C1000f c1000f = C1000f.f2756a;
                    jSONArray.put(C1000f.m41927c(m41867b));
                    jSONObject.put(ViewAction.VIEW, jSONArray);
                } catch (JSONException e2) {
                    C0987l.m41937a();
                }
                final String jSONObject2 = jSONObject.toString();
                l.d(jSONObject2, "viewTree.toString()");
                final C0987l c0987l = C0987l.this;
                if (C1220a.m41623b(C0987l.class)) {
                    return;
                }
                Objects.requireNonNull(c0987l);
                if (C1220a.m41623b(c0987l)) {
                    return;
                }
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.i0.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = jSONObject2;
                        C0987l c0987l2 = c0987l;
                        if (C1220a.m41623b(C0987l.class)) {
                            return;
                        }
                        try {
                            l.e(str2, "$tree");
                            l.e(c0987l2, "this$0");
                            String m41693I = C1168q0.m41693I(str2);
                            AccessToken.C0907c c0907c = AccessToken.f2460l;
                            AccessToken m42030b = AccessToken.C0907c.m42030b();
                            if (m41693I != null && l.a(m41693I, c0987l2.f2727d)) {
                                return;
                            }
                            C0987l.C0988a c0988a = C0987l.f2722e;
                            C23228f0 c23228f02 = C23228f0.f64291a;
                            c0987l2.m41936b(C0987l.C0988a.m41934a(str2, m42030b, C23228f0.m7353b(), "app_indexing"), m41693I);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0987l.class);
                        }
                    }
                });
            } catch (Exception e3) {
                C0987l.m41937a();
            }
        }
    }

    static {
        String canonicalName = C0987l.class.getCanonicalName();
        String str = canonicalName;
        if (canonicalName == null) {
            str = "";
        }
        f2723f = str;
    }

    public C0987l(Activity activity) {
        l.e(activity, "activity");
        this.f2725b = new WeakReference<>(activity);
    }

    /* renamed from: a */
    public static final /* synthetic */ String m41937a() {
        if (C1220a.m41623b(C0987l.class)) {
            return null;
        }
        try {
            return f2723f;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0987l.class);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41936b(GraphRequest graphRequest, String str) {
        if (!C1220a.m41623b(this) && graphRequest != null) {
            try {
                C23244l0 m42017c = graphRequest.m42017c();
                try {
                    JSONObject jSONObject = m42017c.f64333c;
                    if (jSONObject == null) {
                        l.j("Error sending UI component tree to Facebook: ", m42017c.f64335e);
                        return;
                    }
                    if (l.a("true", jSONObject.optString(AnalyticsConstants.SUCCESS))) {
                        C1143k0.f3139e.m41729b(EnumC23248n0.APP_EVENTS, f2723f, "Successfully send UI component tree to server");
                        this.f2727d = str;
                    }
                    if (!jSONObject.has("is_app_indexing_enabled")) {
                        return;
                    }
                    boolean z = jSONObject.getBoolean("is_app_indexing_enabled");
                    C0980i c0980i = C0980i.f2694a;
                    if (C1220a.m41623b(C0980i.class)) {
                        return;
                    }
                    try {
                        C0980i.f2700g.set(z);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C0980i.class);
                    }
                } catch (JSONException e) {
                }
            } catch (Throwable th2) {
                C1220a.m41624a(th2, this);
            }
        }
    }

    /* renamed from: c */
    public final void m41935c() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            final C0990c c0990c = new C0990c();
            try {
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.i0.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0987l c0987l = C0987l.this;
                        TimerTask timerTask = c0990c;
                        if (C1220a.m41623b(C0987l.class)) {
                            return;
                        }
                        try {
                            l.e(c0987l, "this$0");
                            l.e(timerTask, "$indexingTask");
                            try {
                                Timer timer = c0987l.f2726c;
                                if (timer != null) {
                                    timer.cancel();
                                }
                                c0987l.f2727d = null;
                                Timer timer2 = new Timer();
                                timer2.scheduleAtFixedRate(timerTask, 0L, 1000L);
                                c0987l.f2726c = timer2;
                            } catch (Exception e) {
                            }
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0987l.class);
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
