package p169m6;

import android.content.Context;
import androidx.appcompat.widget.RunnableC0198a1;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p031c6.C0846a;
import p071d6.C2478a;
import p081e6.C2583a;
import p104g6.C2905a;
import p191o6.AbstractC3923j;
import p191o6.C3897c;
import p191o6.C3909g;
import p191o6.C3912h;
import p191o6.C3929m;
import p191o6.EnumC3901d;
import p218r2.AbstractC4189g;
import p241t4.C4392c;
import p275w5.AbstractC4739b;
import p286x5.AbstractC4871e;
/* renamed from: m6.e */
/* loaded from: classes-dex2jar.jar:m6/e.class */
public class C3652e implements C2478a.AbstractC2480b {

    /* renamed from: r */
    public static final C2905a f11966r = C2905a.m2869b();

    /* renamed from: s */
    public static final C3652e f11967s = new C3652e();

    /* renamed from: a */
    public final Map<String, Integer> f11968a;

    /* renamed from: d */
    public C4392c f11971d;

    /* renamed from: e */
    public C0846a f11972e;

    /* renamed from: f */
    public AbstractC4871e f11973f;

    /* renamed from: g */
    public AbstractC4739b<AbstractC4189g> f11974g;

    /* renamed from: h */
    public C3647a f11975h;

    /* renamed from: j */
    public Context f11977j;

    /* renamed from: k */
    public C2583a f11978k;

    /* renamed from: l */
    public C3649c f11979l;

    /* renamed from: m */
    public C2478a f11980m;

    /* renamed from: n */
    public C3897c.C3899b f11981n;

    /* renamed from: o */
    public String f11982o;

    /* renamed from: p */
    public String f11983p;

    /* renamed from: b */
    public final ConcurrentLinkedQueue<C3648b> f11969b = new ConcurrentLinkedQueue<>();

    /* renamed from: c */
    public final AtomicBoolean f11970c = new AtomicBoolean(false);

    /* renamed from: q */
    public boolean f11984q = false;

    /* renamed from: i */
    public ExecutorService f11976i = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public C3652e() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f11968a = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    public static String m1933a(C3912h c3912h) {
        return String.format(Locale.ENGLISH, "network request trace: %s (responseCode: %s, responseTime: %.4fms)", c3912h.m1656W(), c3912h.m1653Z() ? String.valueOf(c3912h.m1663P()) : "UNKNOWN", Double.valueOf((c3912h.m1649d0() ? c3912h.m1658U() : (char) 0) / 1000.0d));
    }

    /* renamed from: b */
    public static String m1932b(AbstractC3923j abstractC3923j) {
        if (abstractC3923j.mo1633g()) {
            return m1931c(abstractC3923j.mo1632h());
        }
        if (abstractC3923j.mo1631j()) {
            return m1933a(abstractC3923j.mo1630k());
        }
        if (!abstractC3923j.mo1635a()) {
            return "log";
        }
        C3909g mo1634e = abstractC3923j.mo1634e();
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(mo1634e.m1683H()), Integer.valueOf(mo1634e.m1686E()), Integer.valueOf(mo1634e.m1687D()));
    }

    /* renamed from: c */
    public static String m1931c(C3929m c3929m) {
        return String.format(Locale.ENGLISH, "trace metric: %s (duration: %.4fms)", c3929m.m1608N(), Double.valueOf(c3929m.m1609M() / 1000.0d));
    }

    /* renamed from: d */
    public boolean m1930d() {
        return this.f11970c.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0531, code lost:
        if (r0.m1936a(r0.mo1632h().m1607O()) == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x061e, code lost:
        if (r0.m1936a(r0.mo1630k().m1662Q()) == false) goto L190;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:244:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x034d  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1929e(p191o6.C3920i.C3922b r9, p191o6.EnumC3901d r10) {
        /*
            Method dump skipped, instructions count: 2161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p169m6.C3652e.m1929e(o6.i$b, o6.d):void");
    }

    @Override // p071d6.C2478a.AbstractC2480b
    public void onUpdateAppState(EnumC3901d enumC3901d) {
        this.f11984q = enumC3901d == EnumC3901d.FOREGROUND;
        if (m1930d()) {
            this.f11976i.execute(new RunnableC0198a1(this, 2));
        }
    }
}
