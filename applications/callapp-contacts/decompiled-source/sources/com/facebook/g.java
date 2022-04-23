package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.GraphRequest;
import com.facebook.appevents.f.c;
import com.facebook.appevents.i;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.ac;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.l;
import com.facebook.internal.q;
import com.facebook.internal.w;
import com.facebook.internal.z;
import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/g.class */
public final class g {

    /* renamed from: c  reason: collision with root package name */
    private static final String f19781c = "com.facebook.g";
    private static Executor e;
    private static volatile String f;
    private static volatile String g;
    private static volatile String h;
    private static volatile Boolean i;
    private static w<File> n;
    private static Context o;

    /* renamed from: d  reason: collision with root package name */
    private static final HashSet<m> f19782d = new HashSet<>(Arrays.asList(m.DEVELOPER_ERRORS));
    private static volatile String j = "facebook.com";
    private static AtomicLong k = new AtomicLong(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
    private static volatile boolean l = false;
    private static boolean m = false;
    private static int p = 64206;
    private static final Object q = new Object();
    private static String r = ac.a();

    /* renamed from: a  reason: collision with root package name */
    public static boolean f19779a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f19780b = false;
    private static final AtomicBoolean s = new AtomicBoolean(false);
    private static Boolean t = Boolean.FALSE;
    private static a u = new a() { // from class: com.facebook.g.1
        @Override // com.facebook.g.a
        public final GraphRequest a(String str, JSONObject jSONObject) {
            return GraphRequest.a((AccessToken) null, str, jSONObject, (GraphRequest.b) null);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/facebook/g$a.class */
    public interface a {
        GraphRequest a(String str, JSONObject jSONObject);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/g$b.class */
    public interface b {
    }

    @Deprecated
    public static void a(Context context) {
        synchronized (g.class) {
            try {
                c(context);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Context context, final String str) {
        if (!com.facebook.internal.b.b.a.a(g.class)) {
            try {
                final Context applicationContext = context.getApplicationContext();
                f().execute(new Runnable() { // from class: com.facebook.g.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!com.facebook.internal.b.b.a.a(this)) {
                            try {
                                g.b(applicationContext, str);
                            } catch (Throwable th) {
                                com.facebook.internal.b.b.a.a(th, this);
                            }
                        }
                    }
                });
                if (l.a(l.b.OnDeviceEventProcessing) && com.facebook.appevents.h.a.a()) {
                    com.facebook.appevents.h.a.a(str, "com.facebook.sdk.attributionTracking");
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, g.class);
            }
        }
    }

    public static void a(m mVar) {
        HashSet<m> hashSet = f19782d;
        synchronized (hashSet) {
            hashSet.add(mVar);
            if (hashSet.contains(m.GRAPH_API_DEBUG_INFO) && !hashSet.contains(m.GRAPH_API_DEBUG_WARNING)) {
                hashSet.add(m.GRAPH_API_DEBUG_WARNING);
            }
        }
    }

    public static void a(String[] strArr) {
        if (!com.facebook.internal.b.b.a.a(g.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(g.class)) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("data_processing_options", new JSONArray((Collection) Arrays.asList(strArr)));
                        jSONObject.put("data_processing_options_country", 0);
                        jSONObject.put("data_processing_options_state", 0);
                        o.getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).edit().putString("data_processing_options", jSONObject.toString()).apply();
                    } catch (JSONException e2) {
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, g.class);
            }
        }
    }

    public static boolean a() {
        return s.get();
    }

    static void b(Context context, String str) {
        if (!com.facebook.internal.b.b.a.a(g.class)) {
            try {
                try {
                    if (context == null || str == null) {
                        throw new IllegalArgumentException("Both context and applicationId must be non-null");
                    }
                    com.facebook.internal.b b2 = com.facebook.internal.b.b(context);
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                    String str2 = str + "ping";
                    long j2 = sharedPreferences.getLong(str2, 0L);
                    try {
                        GraphRequest a2 = u.a(String.format("%s/activities", str), c.a(c.a.MOBILE_INSTALL_EVENT, b2, com.facebook.appevents.g.b(context), b(context), context));
                        if (j2 == 0 && GraphRequest.a(a2).f20037b == null) {
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.putLong(str2, System.currentTimeMillis());
                            edit.apply();
                        }
                    } catch (JSONException e2) {
                        throw new FacebookException("An error occurred while publishing install.", e2);
                    }
                } catch (Exception e3) {
                    ae.a("Facebook-publish", e3);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, g.class);
            }
        }
    }

    public static boolean b() {
        boolean booleanValue;
        synchronized (g.class) {
            try {
                booleanValue = t.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public static boolean b(Context context) {
        af.a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static boolean b(m mVar) {
        boolean z;
        HashSet<m> hashSet = f19782d;
        synchronized (hashSet) {
            z = l && hashSet.contains(mVar);
        }
        return z;
    }

    @Deprecated
    private static void c(final Context context) {
        synchronized (g.class) {
            try {
                if (!s.get()) {
                    af.a((Object) context, "applicationContext");
                    af.b(context);
                    af.a(context);
                    o = context.getApplicationContext();
                    com.facebook.appevents.g.b(context);
                    Context context2 = o;
                    if (context2 != null) {
                        try {
                            ApplicationInfo applicationInfo = context2.getPackageManager().getApplicationInfo(context2.getPackageName(), 128);
                            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                                if (f == null) {
                                    Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                                    if (obj instanceof String) {
                                        String str = (String) obj;
                                        if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                            f = str.substring(2);
                                        } else {
                                            f = str;
                                        }
                                    } else if (obj instanceof Number) {
                                        throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                                    }
                                }
                                if (g == null) {
                                    g = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                                }
                                if (h == null) {
                                    h = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                                }
                                if (p == 64206) {
                                    p = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                                }
                                if (i == null) {
                                    i = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
                                }
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                        }
                    }
                    if (!ae.a(f)) {
                        s.set(true);
                        if (u.b()) {
                            t = Boolean.TRUE;
                        }
                        if ((o instanceof Application) && u.c()) {
                            com.facebook.appevents.f.a.a((Application) o, f);
                        }
                        q.a();
                        z.b();
                        BoltsMeasurementEventListener.a(o);
                        n = new w<>(new Callable<File>() { // from class: com.facebook.g.2
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ File call() throws Exception {
                                return g.o.getCacheDir();
                            }
                        });
                        l.a(l.b.Instrument, new l.a() { // from class: com.facebook.g.3
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    com.facebook.internal.b.c.a();
                                }
                            }
                        });
                        l.a(l.b.AppEvents, new l.a() { // from class: com.facebook.g.4
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    i.a();
                                }
                            }
                        });
                        l.a(l.b.ChromeCustomTabsPrefetching, new l.a() { // from class: com.facebook.g.5
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    g.f19779a = true;
                                }
                            }
                        });
                        l.a(l.b.IgnoreAppSwitchToLoggedOut, new l.a() { // from class: com.facebook.g.6
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    g.f19780b = true;
                                }
                            }
                        });
                        f().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.g.7
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Void call() throws Exception {
                                com.facebook.b a2 = com.facebook.b.a();
                                AccessToken a3 = a2.f19679a.a();
                                if (a3 != null) {
                                    a2.a(a3, false);
                                }
                                o a4 = o.a();
                                Profile a5 = a4.f20096a.a();
                                if (a5 != null) {
                                    a4.a(a5, false);
                                }
                                if (AccessToken.isCurrentAccessTokenActive() && Profile.getCurrentProfile() == null) {
                                    Profile.fetchProfileForCurrentAccessToken();
                                }
                                com.facebook.appevents.g.a(g.o, g.f);
                                u.a();
                                com.facebook.appevents.g.a(context.getApplicationContext()).f19572a.b();
                                return null;
                            }
                        }));
                        return;
                    }
                    throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean c() {
        return l;
    }

    public static void d() {
        l = true;
    }

    public static boolean e() {
        return m;
    }

    public static Executor f() {
        synchronized (q) {
            if (e == null) {
                e = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return e;
    }

    public static String g() {
        return j;
    }

    public static String h() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        String graphDomain = currentAccessToken != null ? currentAccessToken.getGraphDomain() : null;
        return (graphDomain == null || !graphDomain.equals("gaming")) ? j : j.replace("facebook.com", "fb.gg");
    }

    public static Context i() {
        af.a();
        return o;
    }

    public static String j() {
        String.format("getGraphApiVersion: %s", r);
        ae.a();
        return r;
    }

    public static String k() {
        return "9.1.1";
    }

    public static long l() {
        af.a();
        return k.get();
    }

    public static String m() {
        af.a();
        return f;
    }

    public static String n() {
        af.a();
        return g;
    }

    public static String o() {
        af.a();
        return h;
    }

    public static boolean p() {
        return u.c();
    }

    public static boolean q() {
        return u.e();
    }

    public static boolean r() {
        return u.d();
    }

    public static File s() {
        af.a();
        w<File> wVar = n;
        CountDownLatch countDownLatch = wVar.f20011b;
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e2) {
            }
        }
        return wVar.f20010a;
    }

    public static int t() {
        af.a();
        return p;
    }
}
