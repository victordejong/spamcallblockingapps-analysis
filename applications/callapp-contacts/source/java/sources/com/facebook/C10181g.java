package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.support.p008v4.media.session.PlaybackStateCompat;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.C10075i;
import com.facebook.appevents.p285f.C10026a;
import com.facebook.appevents.p285f.C10034c;
import com.facebook.appevents.p287h.C10067a;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.C10210ac;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10234b;
import com.facebook.internal.C10291l;
import com.facebook.internal.C10306q;
import com.facebook.internal.C10334w;
import com.facebook.internal.C10340z;
import com.facebook.internal.p299b.C10250c;
import com.facebook.internal.p299b.p301b.C10249a;
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
/* renamed from: com.facebook.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/g.class */
public final class C10181g {

    /* renamed from: c */
    private static final String f33599c = "com.facebook.g";

    /* renamed from: e */
    private static Executor f33601e;

    /* renamed from: f */
    private static volatile String f33602f;

    /* renamed from: g */
    private static volatile String f33603g;

    /* renamed from: h */
    private static volatile String f33604h;

    /* renamed from: i */
    private static volatile Boolean f33605i;

    /* renamed from: n */
    private static C10334w<File> f33610n;

    /* renamed from: o */
    private static Context f33611o;

    /* renamed from: d */
    private static final HashSet<EnumC10396m> f33600d = new HashSet<>(Arrays.asList(EnumC10396m.DEVELOPER_ERRORS));

    /* renamed from: j */
    private static volatile String f33606j = "facebook.com";

    /* renamed from: k */
    private static AtomicLong f33607k = new AtomicLong(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);

    /* renamed from: l */
    private static volatile boolean f33608l = false;

    /* renamed from: m */
    private static boolean f33609m = false;

    /* renamed from: p */
    private static int f33612p = 64206;

    /* renamed from: q */
    private static final Object f33613q = new Object();

    /* renamed from: r */
    private static String f33614r = C10210ac.m23258a();

    /* renamed from: a */
    public static boolean f33597a = false;

    /* renamed from: b */
    public static boolean f33598b = false;

    /* renamed from: s */
    private static final AtomicBoolean f33615s = new AtomicBoolean(false);

    /* renamed from: t */
    private static Boolean f33616t = Boolean.FALSE;

    /* renamed from: u */
    private static AbstractC10190a f33617u = new AbstractC10190a() { // from class: com.facebook.g.1
        @Override // com.facebook.C10181g.AbstractC10190a
        /* renamed from: a */
        public final GraphRequest mo23276a(String str, JSONObject jSONObject) {
            return GraphRequest.m23799a((AccessToken) null, str, jSONObject, (GraphRequest.AbstractC9933b) null);
        }
    };

    /* renamed from: com.facebook.g$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/g$a.class */
    public interface AbstractC10190a {
        /* renamed from: a */
        GraphRequest mo23276a(String str, JSONObject jSONObject);
    }

    /* renamed from: com.facebook.g$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/g$b.class */
    public interface AbstractC10191b {
    }

    @Deprecated
    /* renamed from: a */
    public static void m23305a(Context context) {
        synchronized (C10181g.class) {
            try {
                m23296c(context);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m23304a(Context context, final String str) {
        if (C10249a.m23108a(C10181g.class)) {
            return;
        }
        try {
            final Context applicationContext = context.getApplicationContext();
            m23293f().execute(new Runnable() { // from class: com.facebook.g.8
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10181g.m23299b(applicationContext, str);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
            if (!C10291l.m23051a(C10291l.EnumC10293b.OnDeviceEventProcessing) || !C10067a.m23471a()) {
                return;
            }
            C10067a.m23468a(str, "com.facebook.sdk.attributionTracking");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10181g.class);
        }
    }

    /* renamed from: a */
    public static void m23303a(EnumC10396m enumC10396m) {
        HashSet<EnumC10396m> hashSet = f33600d;
        synchronized (hashSet) {
            hashSet.add(enumC10396m);
            if (hashSet.contains(EnumC10396m.GRAPH_API_DEBUG_INFO) && !hashSet.contains(EnumC10396m.GRAPH_API_DEBUG_WARNING)) {
                hashSet.add(EnumC10396m.GRAPH_API_DEBUG_WARNING);
            }
        }
    }

    /* renamed from: a */
    public static void m23302a(String[] strArr) {
        if (C10249a.m23108a(C10181g.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C10181g.class)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("data_processing_options", new JSONArray((Collection) Arrays.asList(strArr)));
                jSONObject.put("data_processing_options_country", 0);
                jSONObject.put("data_processing_options_state", 0);
                f33611o.getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).edit().putString("data_processing_options", jSONObject.toString()).apply();
            } catch (JSONException e) {
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10181g.class);
        }
    }

    /* renamed from: a */
    public static boolean m23306a() {
        return f33615s.get();
    }

    /* renamed from: b */
    static void m23299b(Context context, String str) {
        if (C10249a.m23108a(C10181g.class)) {
            return;
        }
        try {
            try {
                if (context == null || str == null) {
                    throw new IllegalArgumentException("Both context and applicationId must be non-null");
                }
                C10234b m23133b = C10234b.m23133b(context);
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                String str2 = str + "ping";
                long j = sharedPreferences.getLong(str2, 0L);
                try {
                    GraphRequest mo23276a = f33617u.mo23276a(String.format("%s/activities", str), C10034c.m23554a(C10034c.EnumC10036a.MOBILE_INSTALL_EVENT, m23133b, C10046g.m23532b(context), m23300b(context), context));
                    if (j != 0 || GraphRequest.m23796a(mo23276a).f33960b != null) {
                        return;
                    }
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putLong(str2, System.currentTimeMillis());
                    edit.apply();
                } catch (JSONException e) {
                    throw new FacebookException("An error occurred while publishing install.", e);
                }
            } catch (Exception e2) {
                C10213ae.m23228a("Facebook-publish", e2);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10181g.class);
        }
    }

    /* renamed from: b */
    public static boolean m23301b() {
        boolean booleanValue;
        synchronized (C10181g.class) {
            try {
                booleanValue = f33616t.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* renamed from: b */
    public static boolean m23300b(Context context) {
        C10218af.m23182a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: b */
    public static boolean m23298b(EnumC10396m enumC10396m) {
        boolean z;
        HashSet<EnumC10396m> hashSet = f33600d;
        synchronized (hashSet) {
            z = f33608l && hashSet.contains(enumC10396m);
        }
        return z;
    }

    @Deprecated
    /* renamed from: c */
    private static void m23296c(final Context context) {
        synchronized (C10181g.class) {
            try {
                if (f33615s.get()) {
                    return;
                }
                C10218af.m23179a((Object) context, "applicationContext");
                C10218af.m23175b(context);
                C10218af.m23181a(context);
                f33611o = context.getApplicationContext();
                C10046g.m23532b(context);
                Context context2 = f33611o;
                if (context2 != null) {
                    try {
                        ApplicationInfo applicationInfo = context2.getPackageManager().getApplicationInfo(context2.getPackageName(), 128);
                        if (applicationInfo != null && applicationInfo.metaData != null) {
                            if (f33602f == null) {
                                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                                if (obj instanceof String) {
                                    String str = (String) obj;
                                    if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                        f33602f = str.substring(2);
                                    } else {
                                        f33602f = str;
                                    }
                                } else if (obj instanceof Number) {
                                    throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                                }
                            }
                            if (f33603g == null) {
                                f33603g = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                            }
                            if (f33604h == null) {
                                f33604h = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                            }
                            if (f33612p == 64206) {
                                f33612p = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                            }
                            if (f33605i == null) {
                                f33605i = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                if (C10213ae.m23230a(f33602f)) {
                    throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                }
                f33615s.set(true);
                if (C10513u.m22677b()) {
                    f33616t = Boolean.TRUE;
                }
                if ((f33611o instanceof Application) && C10513u.m22675c()) {
                    C10026a.m23580a((Application) f33611o, f33602f);
                }
                C10306q.m23031a();
                C10340z.m22957b();
                BoltsMeasurementEventListener.m23270a(f33611o);
                f33610n = new C10334w<>(new Callable<File>() { // from class: com.facebook.g.2
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ File call() throws Exception {
                        return C10181g.f33611o.getCacheDir();
                    }
                });
                C10291l.m23050a(C10291l.EnumC10293b.Instrument, new C10291l.AbstractC10292a() { // from class: com.facebook.g.3
                    @Override // com.facebook.internal.C10291l.AbstractC10292a
                    /* renamed from: a */
                    public final void mo23045a(boolean z) {
                        if (z) {
                            C10250c.m23104a();
                        }
                    }
                });
                C10291l.m23050a(C10291l.EnumC10293b.AppEvents, new C10291l.AbstractC10292a() { // from class: com.facebook.g.4
                    @Override // com.facebook.internal.C10291l.AbstractC10292a
                    /* renamed from: a */
                    public final void mo23045a(boolean z) {
                        if (z) {
                            C10075i.m23459a();
                        }
                    }
                });
                C10291l.m23050a(C10291l.EnumC10293b.ChromeCustomTabsPrefetching, new C10291l.AbstractC10292a() { // from class: com.facebook.g.5
                    @Override // com.facebook.internal.C10291l.AbstractC10292a
                    /* renamed from: a */
                    public final void mo23045a(boolean z) {
                        if (z) {
                            C10181g.f33597a = true;
                        }
                    }
                });
                C10291l.m23050a(C10291l.EnumC10293b.IgnoreAppSwitchToLoggedOut, new C10291l.AbstractC10292a() { // from class: com.facebook.g.6
                    @Override // com.facebook.internal.C10291l.AbstractC10292a
                    /* renamed from: a */
                    public final void mo23045a(boolean z) {
                        if (z) {
                            C10181g.f33598b = true;
                        }
                    }
                });
                m23293f().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.g.7
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Void call() throws Exception {
                        C10107b m23388a = C10107b.m23388a();
                        AccessToken m23754a = m23388a.f33473a.m23754a();
                        if (m23754a != null) {
                            m23388a.m23384a(m23754a, false);
                        }
                        C10398o m22870a = C10398o.m22870a();
                        Profile m22873a = m22870a.f34036a.m22873a();
                        if (m22873a != null) {
                            m22870a.m22868a(m22873a, false);
                        }
                        if (AccessToken.isCurrentAccessTokenActive() && Profile.getCurrentProfile() == null) {
                            Profile.fetchProfileForCurrentAccessToken();
                        }
                        C10046g.m23536a(C10181g.f33611o, C10181g.f33602f);
                        C10513u.m22679a();
                        C10046g.m23537a(context.getApplicationContext()).f33338a.m23479b();
                        return null;
                    }
                }));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static boolean m23297c() {
        return f33608l;
    }

    /* renamed from: d */
    public static void m23295d() {
        f33608l = true;
    }

    /* renamed from: e */
    public static boolean m23294e() {
        return f33609m;
    }

    /* renamed from: f */
    public static Executor m23293f() {
        synchronized (f33613q) {
            if (f33601e == null) {
                f33601e = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return f33601e;
    }

    /* renamed from: g */
    public static String m23292g() {
        return f33606j;
    }

    /* renamed from: h */
    public static String m23291h() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        String graphDomain = currentAccessToken != null ? currentAccessToken.getGraphDomain() : null;
        return (graphDomain == null || !graphDomain.equals("gaming")) ? f33606j : f33606j.replace("facebook.com", "fb.gg");
    }

    /* renamed from: i */
    public static Context m23290i() {
        C10218af.m23182a();
        return f33611o;
    }

    /* renamed from: j */
    public static String m23289j() {
        String.format("getGraphApiVersion: %s", f33614r);
        C10213ae.m23250a();
        return f33614r;
    }

    /* renamed from: k */
    public static String m23288k() {
        return "9.1.1";
    }

    /* renamed from: l */
    public static long m23287l() {
        C10218af.m23182a();
        return f33607k.get();
    }

    /* renamed from: m */
    public static String m23286m() {
        C10218af.m23182a();
        return f33602f;
    }

    /* renamed from: n */
    public static String m23285n() {
        C10218af.m23182a();
        return f33603g;
    }

    /* renamed from: o */
    public static String m23284o() {
        C10218af.m23182a();
        return f33604h;
    }

    /* renamed from: p */
    public static boolean m23283p() {
        return C10513u.m22675c();
    }

    /* renamed from: q */
    public static boolean m23282q() {
        return C10513u.m22672e();
    }

    /* renamed from: r */
    public static boolean m23281r() {
        return C10513u.m22673d();
    }

    /* renamed from: s */
    public static File m23280s() {
        C10218af.m23182a();
        C10334w<File> c10334w = f33610n;
        CountDownLatch countDownLatch = c10334w.f33926b;
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
            }
        }
        return c10334w.f33925a;
    }

    /* renamed from: t */
    public static int m23279t() {
        C10218af.m23182a();
        return f33612p;
    }
}
