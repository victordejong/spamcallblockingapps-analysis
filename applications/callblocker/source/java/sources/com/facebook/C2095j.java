package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import com.facebook.C2102k;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2014b;
import com.facebook.internal.C2039j;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2061q;
import com.facebook.internal.C2064s;
import com.facebook.internal.C2077v;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import com.facebook.internal.p108a.C2004b;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.C1919i;
import com.facebook.p094a.p099d.C1855a;
import com.facebook.p094a.p099d.C1863c;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
/* renamed from: com.facebook.j */
/* loaded from: classes-dex2jar.jar:com/facebook/j.class */
public final class C2095j {

    /* renamed from: c */
    private static Executor f6167c;

    /* renamed from: d */
    private static volatile String f6168d;

    /* renamed from: e */
    private static volatile String f6169e;

    /* renamed from: f */
    private static volatile String f6170f;

    /* renamed from: g */
    private static volatile Boolean f6171g;

    /* renamed from: l */
    private static C2061q<File> f6176l;

    /* renamed from: m */
    private static Context f6177m;

    /* renamed from: a */
    private static final String f6165a = C2095j.class.getCanonicalName();

    /* renamed from: b */
    private static final HashSet<EnumC2197q> f6166b = new HashSet<>(Arrays.asList(EnumC2197q.DEVELOPER_ERRORS));

    /* renamed from: h */
    private static volatile String f6172h = "facebook.com";

    /* renamed from: i */
    private static AtomicLong f6173i = new AtomicLong(65536);

    /* renamed from: j */
    private static volatile boolean f6174j = false;

    /* renamed from: k */
    private static boolean f6175k = false;

    /* renamed from: n */
    private static int f6178n = 64206;

    /* renamed from: o */
    private static final Object f6179o = new Object();

    /* renamed from: p */
    private static String f6180p = C2077v.m15495d();

    /* renamed from: q */
    private static Boolean f6181q = false;

    /* renamed from: r */
    private static Boolean f6182r = false;

    /* renamed from: com.facebook.j$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/j$a.class */
    public interface AbstractC2101a {
        /* renamed from: a */
        void m15343a();
    }

    @Deprecated
    /* renamed from: a */
    public static void m15373a(Context context) {
        synchronized (C2095j.class) {
            try {
                m15372a(context, (AbstractC2101a) null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m15372a(final Context context, final AbstractC2101a abstractC2101a) {
        synchronized (C2095j.class) {
            try {
                if (!f6181q.booleanValue()) {
                    C2084y.m15417a((Object) context, "applicationContext");
                    C2084y.m15413b(context, false);
                    C2084y.m15418a(context, false);
                    f6177m = context.getApplicationContext();
                    C1904g.m15929b(context);
                    m15365c(f6177m);
                    if (C2079x.m15472a(f6168d)) {
                        throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                    }
                    f6181q = true;
                    if (m15353o()) {
                        m15366c();
                    }
                    if ((f6177m instanceof Application) && C2209y.m14933d()) {
                        C1855a.m16087a((Application) f6177m, f6168d);
                    }
                    C2050m.m15587a();
                    C2064s.m15527b();
                    C2209y.m14937b();
                    C2014b.m15653a(f6177m);
                    f6176l = new C2061q<>(new Callable<File>() { // from class: com.facebook.j.1
                        /* renamed from: a */
                        public File call() {
                            return C2095j.f6177m.getCacheDir();
                        }
                    });
                    C2039j.m15624a(C2039j.EnumC2043b.Instrument, new C2039j.AbstractC2042a() { // from class: com.facebook.j.2
                        @Override // com.facebook.internal.C2039j.AbstractC2042a
                        /* renamed from: a */
                        public void mo15345a(boolean z) {
                            if (z) {
                                C2004b.m15674a();
                            }
                        }
                    });
                    C2039j.m15624a(C2039j.EnumC2043b.AppEvents, new C2039j.AbstractC2042a() { // from class: com.facebook.j.3
                        @Override // com.facebook.internal.C2039j.AbstractC2042a
                        /* renamed from: a */
                        public void mo15345a(boolean z) {
                            if (z) {
                                C1919i.m15862a();
                            }
                        }
                    });
                    m15362f().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.j.4
                        /* renamed from: a */
                        public Void call() {
                            C1938c.m15811a().m15800c();
                            C2202t.m14958a().m14953c();
                            if (C1803a.m16253b() && C2198r.m14971a() == null) {
                                C2198r.m14969b();
                            }
                            if (abstractC2101a != null) {
                                abstractC2101a.m15343a();
                            }
                            C1904g.m15932a(C2095j.f6177m, C2095j.f6168d);
                            C1904g.m15933a(context.getApplicationContext()).m15930b();
                            return null;
                        }
                    }));
                } else if (abstractC2101a != null) {
                    abstractC2101a.m15343a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m15371a(Context context, final String str) {
        final Context applicationContext = context.getApplicationContext();
        m15362f().execute(new Runnable() { // from class: com.facebook.j.5
            @Override // java.lang.Runnable
            public void run() {
                C2095j.m15367b(applicationContext, str);
            }
        });
    }

    /* renamed from: a */
    public static boolean m15374a() {
        boolean booleanValue;
        synchronized (C2095j.class) {
            try {
                booleanValue = f6181q.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* renamed from: a */
    public static boolean m15370a(EnumC2197q enumC2197q) {
        boolean z;
        synchronized (f6166b) {
            z = m15364d() && f6166b.contains(enumC2197q);
        }
        return z;
    }

    /* renamed from: b */
    static void m15367b(Context context, String str) {
        try {
            if (context == null || str == null) {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            C1994a m15694b = C1994a.m15694b(context);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
            String str2 = str + "ping";
            long j = sharedPreferences.getLong(str2, 0L);
            try {
                C2102k m15337a = C2102k.m15337a((C1803a) null, String.format("%s/activities", str), C1863c.m16059a(C1863c.EnumC1865a.MOBILE_INSTALL_EVENT, m15694b, C1904g.m15929b(context), m15368b(context), context), (C2102k.AbstractC2108b) null);
                if (j != 0 || m15337a.m15293i().m14987a() != null) {
                    return;
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(str2, System.currentTimeMillis());
                edit.apply();
            } catch (JSONException e) {
                throw new FacebookException("An error occurred while publishing install.", e);
            }
        } catch (Exception e2) {
            C2079x.m15470a("Facebook-publish", e2);
        }
    }

    /* renamed from: b */
    public static boolean m15369b() {
        boolean booleanValue;
        synchronized (C2095j.class) {
            try {
                booleanValue = f6182r.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* renamed from: b */
    public static boolean m15368b(Context context) {
        C2084y.m15420a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: c */
    public static void m15366c() {
        f6182r = true;
    }

    /* renamed from: c */
    static void m15365c(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return;
            }
            if (f6168d == null) {
                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                        f6168d = str.substring(2);
                    } else {
                        f6168d = str;
                    }
                } else if (obj instanceof Integer) {
                    throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (f6169e == null) {
                f6169e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
            }
            if (f6170f == null) {
                f6170f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
            }
            if (f6178n == 64206) {
                f6178n = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
            }
            if (f6171g != null) {
                return;
            }
            f6171g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: d */
    public static boolean m15364d() {
        return f6174j;
    }

    /* renamed from: e */
    public static boolean m15363e() {
        return f6175k;
    }

    /* renamed from: f */
    public static Executor m15362f() {
        synchronized (f6179o) {
            if (f6167c == null) {
                f6167c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return f6167c;
    }

    /* renamed from: g */
    public static String m15361g() {
        C1803a m16259a = C1803a.m16259a();
        String str = null;
        if (m16259a != null) {
            str = m16259a.m16240n();
        }
        return str == null ? f6172h : str.equals("gaming") ? f6172h.replace("facebook.com", "fb.gg") : f6172h;
    }

    /* renamed from: h */
    public static Context m15360h() {
        C2084y.m15420a();
        return f6177m;
    }

    /* renamed from: i */
    public static String m15359i() {
        C2079x.m15449b(f6165a, String.format("getGraphApiVersion: %s", f6180p));
        return f6180p;
    }

    /* renamed from: j */
    public static String m15358j() {
        return "5.15.3";
    }

    /* renamed from: k */
    public static long m15357k() {
        C2084y.m15420a();
        return f6173i.get();
    }

    /* renamed from: l */
    public static String m15356l() {
        C2084y.m15420a();
        return f6168d;
    }

    /* renamed from: m */
    public static String m15355m() {
        C2084y.m15420a();
        return f6169e;
    }

    /* renamed from: n */
    public static String m15354n() {
        C2084y.m15420a();
        return f6170f;
    }

    /* renamed from: o */
    public static boolean m15353o() {
        return C2209y.m14935c();
    }

    /* renamed from: p */
    public static boolean m15352p() {
        return C2209y.m14933d();
    }

    /* renamed from: q */
    public static boolean m15351q() {
        return C2209y.m14930f();
    }

    /* renamed from: r */
    public static boolean m15350r() {
        return C2209y.m14931e();
    }

    /* renamed from: s */
    public static int m15349s() {
        C2084y.m15420a();
        return f6178n;
    }
}
