package p131c.p161d.p282e.p289l.p290d.p293h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p131c.p161d.p282e.p289l.p290d.p295j.C5384v;
import p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d;
import p131c.p161d.p282e.p289l.p290d.p307q.C5451e;
/* renamed from: c.d.e.l.d.h.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/n.class */
public class C5275n {

    /* renamed from: e */
    public static final String f18039e = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.3.0");

    /* renamed from: f */
    public static final Map<String, Integer> f18040f;

    /* renamed from: a */
    public final Context f18041a;

    /* renamed from: b */
    public final C5286u f18042b;

    /* renamed from: c */
    public final C5212b f18043c;

    /* renamed from: d */
    public final AbstractC5450d f18044d;

    static {
        HashMap hashMap = new HashMap();
        f18040f = hashMap;
        hashMap.put("armeabi", 5);
        f18040f.put("armeabi-v7a", 6);
        f18040f.put("arm64-v8a", 9);
        f18040f.put("x86", 0);
        f18040f.put("x86_64", 1);
    }

    public C5275n(Context context, C5286u uVar, C5212b bVar, AbstractC5450d dVar) {
        this.f18041a = context;
        this.f18042b = uVar;
        this.f18043c = bVar;
        this.f18044d = dVar;
    }

    /* renamed from: h */
    public static int m24082h() {
        Integer num;
        String str = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str) && (num = f18040f.get(str.toLowerCase(Locale.US))) != null) {
            return num.intValue();
        }
        return 7;
    }

    /* renamed from: a */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> m24096a(C5451e eVar, Thread thread, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m24092a(thread, eVar.f18430c, i));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(m24093a(key, this.f18044d.mo23758a(entry.getValue())));
                }
            }
        }
        return C5384v.m23974a(arrayList);
    }

    /* renamed from: a */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> m24090a(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.m7458f();
            f.mo7456a(i);
            arrayList.add(m24095a(stackTraceElement, f));
        }
        return C5384v.m23974a(arrayList);
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7778a m24102a() {
        CrashlyticsReport.AbstractC7778a l = CrashlyticsReport.m7624l();
        l.mo7615e("17.3.0");
        l.mo7617c(this.f18043c.f17888a);
        l.mo7616d(this.f18042b.mo24052a());
        l.mo7619a(this.f18043c.f17892e);
        l.mo7618b(this.f18043c.f17893f);
        l.mo7622a(4);
        return l;
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c m24099a(C5451e eVar, int i, int i2) {
        return m24098a(eVar, i, i2, 0);
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c m24098a(C5451e eVar, int i, int i2, int i3) {
        String str = eVar.f18429b;
        String str2 = eVar.f18428a;
        StackTraceElement[] stackTraceElementArr = eVar.f18430c;
        int i4 = 0;
        int i5 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C5451e eVar2 = eVar.f18431d;
        if (i3 >= i2) {
            C5451e eVar3 = eVar2;
            while (true) {
                i4 = i5;
                if (eVar3 == null) {
                    break;
                }
                eVar3 = eVar3.f18431d;
                i5++;
            }
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.m7486f();
        f.mo7480b(str);
        f.mo7481a(str2);
        f.mo7483a(C5384v.m23974a(m24090a(stackTraceElementArr, i)));
        f.mo7484a(i4);
        if (eVar2 != null && i4 == 0) {
            f.mo7482a(m24098a(eVar2, i, i2, i3 + 1));
        }
        return f.mo7485a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b m24095a(java.lang.StackTraceElement r6, com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a r7) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
            goto L_0x001d
        L_0x001a:
            r0 = 0
            r11 = r0
        L_0x001d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getClassName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getMethodName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r13 = r0
            r0 = r6
            java.lang.String r0 = r0.getFileName()
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            if (r0 != 0) goto L_0x006d
            r0 = r9
            r15 = r0
            r0 = r6
            int r0 = r0.getLineNumber()
            if (r0 <= 0) goto L_0x006d
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r15 = r0
        L_0x006d:
            r0 = r7
            r1 = r11
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a r0 = r0.mo7453b(r1)
            r0 = r7
            r1 = r13
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a r0 = r0.mo7452b(r1)
            r0 = r7
            r1 = r14
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a r0 = r0.mo7454a(r1)
            r0 = r7
            r1 = r15
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a r0 = r0.mo7455a(r1)
            r0 = r7
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b r0 = r0.mo7457a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.p290d.p293h.C5275n.m24095a(java.lang.StackTraceElement, com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a):com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b");
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e m24093a(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return m24092a(thread, stackTraceElementArr, 0);
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e m24092a(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a d = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.m7468d();
        d.mo7464a(thread.getName());
        d.mo7466a(i);
        d.mo7465a(C5384v.m23974a(m24090a(stackTraceElementArr, i)));
        return d.mo7467a();
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b m24097a(C5451e eVar, Thread thread, int i, int i2, boolean z) {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b e = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.m7509e();
        e.mo7492b(m24096a(eVar, thread, i, z));
        e.mo7494a(m24099a(eVar, i, i2));
        e.mo7493a(m24083g());
        e.mo7495a(m24087c());
        return e.mo7496a();
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a m24100a(int i, C5451e eVar, Thread thread, int i2, int i3, boolean z) {
        Boolean bool;
        ActivityManager.RunningAppProcessInfo a = CommonUtils.m7660a(this.f18043c.f17891d, this.f18041a);
        if (a != null) {
            bool = Boolean.valueOf(a.importance != 100);
        } else {
            bool = null;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.m7519f();
        f.mo7514a(bool);
        f.mo7517a(i);
        f.mo7515a(m24097a(eVar, thread, i2, i3, z));
        return f.mo7518a();
    }

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c m24101a(int i) {
        C5218e a = C5218e.m24256a(this.f18041a);
        Float a2 = a.m24257a();
        Double valueOf = a2 != null ? Double.valueOf(a2.doubleValue()) : null;
        int b = a.m24254b();
        boolean f = CommonUtils.m7645f(this.f18041a);
        long b2 = CommonUtils.m7654b();
        long a3 = CommonUtils.m7670a(this.f18041a);
        long a4 = CommonUtils.m7661a(Environment.getDataDirectory().getPath());
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a g = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.m7439g();
        g.mo7435a(valueOf);
        g.mo7437a(b);
        g.mo7434a(f);
        g.mo7433b(i);
        g.mo7432b(b2 - a3);
        g.mo7436a(a4);
        return g.mo7438a();
    }

    /* renamed from: a */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d m24091a(Throwable th, Thread thread, String str, long j, int i, int i2, boolean z) {
        int i3 = this.f18041a.getResources().getConfiguration().orientation;
        C5451e eVar = new C5451e(th, this.f18044d);
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b g = CrashlyticsReport.AbstractC7785d.AbstractC7792d.m7525g();
        g.mo7446a(str);
        g.mo7450a(j);
        g.mo7449a(m24100a(i3, eVar, thread, i, i2, z));
        g.mo7448a(m24101a(i3));
        return g.mo7451a();
    }

    /* renamed from: a */
    public CrashlyticsReport m24094a(String str, long j) {
        CrashlyticsReport.AbstractC7778a a = m24102a();
        a.mo7620a(m24088b(str, j));
        return a.mo7623a();
    }

    /* renamed from: b */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a m24089b() {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.m7503f();
        f.mo7501a(0L);
        f.mo7498b(0L);
        f.mo7500a(this.f18043c.f17891d);
        f.mo7497b(this.f18043c.f17889b);
        return f.mo7502a();
    }

    /* renamed from: b */
    public final CrashlyticsReport.AbstractC7785d m24088b(String str, long j) {
        CrashlyticsReport.AbstractC7785d.AbstractC7789b n = CrashlyticsReport.AbstractC7785d.m7581n();
        n.mo7562a(j);
        n.mo7552b(str);
        n.mo7555a(f18039e);
        n.mo7560a(m24086d());
        n.mo7558a(m24084f());
        n.mo7559a(m24085e());
        n.mo7563a(3);
        return n.mo7564a();
    }

    /* renamed from: c */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> m24087c() {
        return C5384v.m23973a(m24089b());
    }

    /* renamed from: d */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7786a m24086d() {
        CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a h = CrashlyticsReport.AbstractC7785d.AbstractC7786a.m7573h();
        h.mo7568d(this.f18042b.m24058b());
        h.mo7566f(this.f18043c.f17892e);
        h.mo7569c(this.f18043c.f17893f);
        h.mo7567e(this.f18042b.mo24052a());
        String a = this.f18043c.f17894g.mo23757a();
        if (a != null) {
            h.mo7571a("Unity");
            h.mo7570b(a);
        }
        return h.mo7572a();
    }

    /* renamed from: e */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7790c m24085e() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int h = m24082h();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b = CommonUtils.m7654b();
        long blockCount = statFs.getBlockCount();
        long blockSize = statFs.getBlockSize();
        boolean i = CommonUtils.m7642i(this.f18041a);
        int c = CommonUtils.m7649c(this.f18041a);
        String str = Build.MANUFACTURER;
        String str2 = Build.PRODUCT;
        CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a j = CrashlyticsReport.AbstractC7785d.AbstractC7790c.m7542j();
        j.mo7540a(h);
        j.mo7534b(Build.MODEL);
        j.mo7536b(availableProcessors);
        j.mo7535b(b);
        j.mo7539a(blockCount * blockSize);
        j.mo7537a(i);
        j.mo7533c(c);
        j.mo7538a(str);
        j.mo7532c(str2);
        return j.mo7541a();
    }

    /* renamed from: f */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7812e m24084f() {
        CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a e = CrashlyticsReport.AbstractC7785d.AbstractC7812e.m7423e();
        e.mo7421a(3);
        e.mo7418b(Build.VERSION.RELEASE);
        e.mo7420a(Build.VERSION.CODENAME);
        e.mo7419a(CommonUtils.m7641j(this.f18041a));
        return e.mo7422a();
    }

    /* renamed from: g */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d m24083g() {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a d = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.m7476d();
        d.mo7472b("0");
        d.mo7473a("0");
        d.mo7474a(0L);
        return d.mo7475a();
    }
}
