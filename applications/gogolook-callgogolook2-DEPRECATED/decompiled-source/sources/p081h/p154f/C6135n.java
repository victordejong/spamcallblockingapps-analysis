package p081h.p154f;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.C2276i;
import com.facebook.appevents.p038s.C2327a;
import com.facebook.appevents.p038s.C2335c;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2401d0;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2455m;
import com.facebook.internal.C2466p;
import com.facebook.internal.C2501x;
import com.facebook.internal.p042k0.C2439a;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
/* renamed from: h.f.n */
/* loaded from: classes-dex2jar.jar:h/f/n.class */
public final class C6135n {

    /* renamed from: a */
    public static final String f15243a = "h.f.n";

    /* renamed from: c */
    public static Executor f15245c;

    /* renamed from: d */
    public static volatile String f15246d;
    @Nullable

    /* renamed from: e */
    public static volatile String f15247e;

    /* renamed from: f */
    public static volatile String f15248f;

    /* renamed from: g */
    public static volatile Boolean f15249g;

    /* renamed from: l */
    public static C2501x<File> f15254l;

    /* renamed from: m */
    public static Context f15255m;

    /* renamed from: b */
    public static final HashSet<EnumC6151v> f15244b = new HashSet<>(Arrays.asList(EnumC6151v.DEVELOPER_ERRORS));

    /* renamed from: h */
    public static volatile String f15250h = "facebook.com";

    /* renamed from: i */
    public static AtomicLong f15251i = new AtomicLong(65536);

    /* renamed from: j */
    public static volatile boolean f15252j = false;

    /* renamed from: k */
    public static boolean f15253k = false;

    /* renamed from: n */
    public static int f15256n = 64206;

    /* renamed from: o */
    public static final Object f15257o = new Object();

    /* renamed from: p */
    public static String f15258p = C2401d0.m34899a();

    /* renamed from: q */
    public static Boolean f15259q = false;

    /* renamed from: r */
    public static Boolean f15260r = false;

    /* renamed from: h.f.n$a */
    /* loaded from: classes-dex2jar.jar:h/f/n$a.class */
    public static final class CallableC6136a implements Callable<File> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public File call() throws Exception {
            return C6135n.f15255m.getCacheDir();
        }
    }

    /* renamed from: h.f.n$b */
    /* loaded from: classes-dex2jar.jar:h/f/n$b.class */
    public static final class C6137b implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2439a.m34718a();
            }
        }
    }

    /* renamed from: h.f.n$c */
    /* loaded from: classes-dex2jar.jar:h/f/n$c.class */
    public static final class C6138c implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2276i.m35304a();
            }
        }
    }

    /* renamed from: h.f.n$d */
    /* loaded from: classes-dex2jar.jar:h/f/n$d.class */
    public static final class CallableC6139d implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6141f f15261a;

        /* renamed from: b */
        public final /* synthetic */ Context f15262b;

        public CallableC6139d(AbstractC6141f fVar, Context context) {
            this.f15261a = fVar;
            this.f15262b = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C6106b.m23822g().m23825d();
            C6153x.m23681c().m23682b();
            if (AccessToken.m35506C() && Profile.m35384r() == null) {
                Profile.m35385q();
            }
            AbstractC6141f fVar = this.f15261a;
            if (fVar != null) {
                fVar.m23726a();
            }
            C2271g.m35334a(C6135n.f15255m, C6135n.f15246d);
            C2271g.m35329b(this.f15262b.getApplicationContext()).m35337a();
            return null;
        }
    }

    /* renamed from: h.f.n$e */
    /* loaded from: classes-dex2jar.jar:h/f/n$e.class */
    public static final class RunnableC6140e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f15263a;

        /* renamed from: b */
        public final /* synthetic */ String f15264b;

        public RunnableC6140e(Context context, String str) {
            this.f15263a = context;
            this.f15264b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C6135n.m23758a(this.f15263a, this.f15264b);
        }
    }

    /* renamed from: h.f.n$f */
    /* loaded from: classes-dex2jar.jar:h/f/n$f.class */
    public interface AbstractC6141f {
        /* renamed from: a */
        void m23726a();
    }

    /* renamed from: a */
    public static String m23760a(Context context) {
        PackageManager packageManager;
        PackageInfo packageInfo;
        Signature[] signatureArr;
        C2416h0.m34784c();
        if (context == null || (packageManager = context.getPackageManager()) == null || (signatureArr = (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64)).signatures) == null || signatureArr.length == 0) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(packageInfo.signatures[0].toByteArray());
            return Base64.encodeToString(instance.digest(), 9);
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m23759a(Context context, AbstractC6141f fVar) {
        synchronized (C6135n.class) {
            try {
                if (f15259q.booleanValue()) {
                    if (fVar != null) {
                        fVar.m23726a();
                    }
                    return;
                }
                C2416h0.m34791a(context, "applicationContext");
                C2416h0.m34792a(context, false);
                C2416h0.m34786b(context, false);
                f15255m = context.getApplicationContext();
                C2271g.m35335a(context);
                m23749c(f15255m);
                if (!C2408g0.m34816d(f15246d)) {
                    f15259q = true;
                    if (m23743h()) {
                        m23750c();
                    }
                    if ((f15255m instanceof Application) && C6115c0.m23805f()) {
                        C2327a.m35151a((Application) f15255m, f15246d);
                    }
                    C2466p.m34633f();
                    C2372a0.m34943g();
                    BoltsMeasurementEventListener.m34984a(f15255m);
                    f15254l = new C2501x<>(new CallableC6136a());
                    C2455m.m34685a(C2455m.EnumC2459d.Instrument, new C6137b());
                    C2455m.m34685a(C2455m.EnumC2459d.AppEvents, new C6138c());
                    m23737n().execute(new FutureTask(new CallableC6139d(fVar, context)));
                    return;
                }
                throw new C6131k("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m23758a(Context context, String str) {
        try {
            if (context == null || str == null) {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            C2381b d = C2381b.m34923d(context);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
            String str2 = str + "ping";
            long j = sharedPreferences.getLong(str2, 0L);
            try {
                GraphRequest a = GraphRequest.m35460a((AccessToken) null, String.format("%s/activities", str), C2335c.m35123a(C2335c.EnumC2337b.MOBILE_INSTALL_EVENT, d, C2271g.m35335a(context), m23754b(context), context), (GraphRequest.AbstractC2230f) null);
                if (j == 0 && a.m35437b().m23705a() == null) {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putLong(str2, System.currentTimeMillis());
                    edit.apply();
                }
            } catch (JSONException e) {
                throw new C6131k("An error occurred while publishing install.", e);
            }
        } catch (Exception e2) {
            C2408g0.m34853a("Facebook-publish", e2);
        }
    }

    /* renamed from: a */
    public static void m23757a(EnumC6151v vVar) {
        synchronized (f15244b) {
            f15244b.add(vVar);
            m23728w();
        }
    }

    /* renamed from: a */
    public static void m23756a(boolean z) {
        C6115c0.m23814a(z);
        if (z) {
            m23750c();
        }
    }

    /* renamed from: b */
    public static void m23753b(Context context, String str) {
        m23737n().execute(new RunnableC6140e(context.getApplicationContext(), str));
    }

    /* renamed from: b */
    public static void m23751b(boolean z) {
        f15252j = z;
    }

    /* renamed from: b */
    public static boolean m23754b(Context context) {
        C2416h0.m34784c();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: b */
    public static boolean m23752b(EnumC6151v vVar) {
        boolean z;
        synchronized (f15244b) {
            z = m23732s() && f15244b.contains(vVar);
        }
        return z;
    }

    /* renamed from: c */
    public static void m23750c() {
        f15260r = true;
    }

    /* renamed from: c */
    public static void m23749c(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (f15246d == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                f15246d = str.substring(2);
                            } else {
                                f15246d = str;
                            }
                        } else if (obj instanceof Integer) {
                            throw new C6131k("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (f15247e == null) {
                        f15247e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f15248f == null) {
                        f15248f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (f15256n == 64206) {
                        f15256n = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                    }
                    if (f15249g == null) {
                        f15249g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: d */
    public static void m23747d(Context context) {
        synchronized (C6135n.class) {
            try {
                m23759a(context, (AbstractC6141f) null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static boolean m23748d() {
        return C6115c0.m23808d();
    }

    /* renamed from: e */
    public static Context m23746e() {
        C2416h0.m34784c();
        return f15255m;
    }

    /* renamed from: f */
    public static String m23745f() {
        C2416h0.m34784c();
        return f15246d;
    }

    @Nullable
    /* renamed from: g */
    public static String m23744g() {
        C2416h0.m34784c();
        return f15247e;
    }

    /* renamed from: h */
    public static boolean m23743h() {
        return C6115c0.m23806e();
    }

    /* renamed from: i */
    public static boolean m23742i() {
        return C6115c0.m23805f();
    }

    /* renamed from: j */
    public static File m23741j() {
        C2416h0.m34784c();
        return f15254l.m34564a();
    }

    /* renamed from: k */
    public static int m23740k() {
        C2416h0.m34784c();
        return f15256n;
    }

    /* renamed from: l */
    public static String m23739l() {
        C2416h0.m34784c();
        return f15248f;
    }

    /* renamed from: m */
    public static boolean m23738m() {
        return C6115c0.m23804g();
    }

    /* renamed from: n */
    public static Executor m23737n() {
        synchronized (f15257o) {
            if (f15245c == null) {
                f15245c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return f15245c;
    }

    /* renamed from: o */
    public static String m23736o() {
        return f15250h;
    }

    /* renamed from: p */
    public static String m23735p() {
        C2408g0.m34821c(f15243a, String.format("getGraphApiVersion: %s", f15258p));
        return f15258p;
    }

    /* renamed from: q */
    public static long m23734q() {
        C2416h0.m34784c();
        return f15251i.get();
    }

    /* renamed from: r */
    public static String m23733r() {
        return "5.11.2";
    }

    /* renamed from: s */
    public static boolean m23732s() {
        return f15252j;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: t */
    public static boolean m23731t() {
        boolean booleanValue;
        synchronized (C6135n.class) {
            try {
                booleanValue = f15260r.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* renamed from: u */
    public static boolean m23730u() {
        boolean booleanValue;
        synchronized (C6135n.class) {
            try {
                booleanValue = f15259q.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* renamed from: v */
    public static boolean m23729v() {
        return f15253k;
    }

    /* renamed from: w */
    public static void m23728w() {
        if (f15244b.contains(EnumC6151v.GRAPH_API_DEBUG_INFO) && !f15244b.contains(EnumC6151v.GRAPH_API_DEBUG_WARNING)) {
            f15244b.add(EnumC6151v.GRAPH_API_DEBUG_WARNING);
        }
    }
}
