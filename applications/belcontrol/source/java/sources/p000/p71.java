package p000;

import android.os.Build;
import java.util.EnumSet;
import p000.q71;
import p000.r71;
/* renamed from: p71 */
/* loaded from: classes3-dex2jar.jar:p71.class */
public class p71 {

    /* renamed from: e */
    public static p71 f7686e;

    /* renamed from: a */
    public EnumSet<q71.EnumC1614a> f7687a;

    /* renamed from: b */
    public q71.EnumC1615b f7688b;

    /* renamed from: c */
    public n71 f7689c;

    /* renamed from: d */
    public boolean f7690d;

    /* renamed from: p71$a */
    /* loaded from: classes3-dex2jar.jar:p71$a.class */
    public static /* synthetic */ class C1611a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7691a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[q71.EnumC1615b.values().length];
            f7691a = iArr;
            try {
                iArr[q71.EnumC1615b.ITELEPHONY_SAFE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7691a[q71.EnumC1615b.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public p71() {
        q71.EnumC1615b enumC1615b;
        int m691e = r71.EnumC1638a.f7910N.m691e();
        boolean z = false;
        int i = 0;
        for (byte b = 0; b < 4; b = (byte) (b + 1)) {
            i |= 1 << b;
        }
        int i2 = (m691e >> 5) & i;
        q71.EnumC1615b[] values = q71.EnumC1615b.values();
        if (i2 >= values.length) {
            j91.m1505k(this, "BlockerType requested is not compatible with application. Requested #" + i2 + ", while BlockerType only has " + values.length + " values.");
            enumC1615b = q71.EnumC1615b.DEFAULT;
        } else {
            enumC1615b = values[i2];
        }
        this.f7688b = enumC1615b;
        EnumSet<q71.EnumC1614a> mo1222d = m942d(this.f7688b).mo1222d();
        q71.EnumC1614a[] values2 = q71.EnumC1614a.values();
        this.f7687a = EnumSet.of(q71.EnumC1614a.DEFAULT);
        for (q71.EnumC1614a enumC1614a : values2) {
            int intValue = 1 << enumC1614a.m909g().intValue();
            if ((m691e & intValue) == intValue && mo1222d.contains(enumC1614a)) {
                this.f7687a.add(enumC1614a);
            }
        }
        if (this.f7687a.size() != 1) {
            this.f7690d = ((m691e >> 9) & 1) == 1 ? true : z;
            return;
        }
        throw new IllegalStateException("Application capabilities restrict BlockMode to DEFAULT only which is not possible.");
    }

    /* renamed from: a */
    public static EnumSet<q71.EnumC1614a> m945a() {
        EnumSet<q71.EnumC1614a> copyOf = EnumSet.copyOf((EnumSet) m944b().f7687a);
        int i = Build.VERSION.SDK_INT;
        if ((i >= 24 && i < 26 && !fa1.m1830t()) || (!r71.EnumC1638a.f7932Y.m695a() && !fa1.m1830t() && !fa1.m1847c())) {
            copyOf.remove(q71.EnumC1614a.PICKUP_HANGUP);
        }
        return copyOf;
    }

    /* renamed from: b */
    public static p71 m944b() {
        if (f7686e == null) {
            f7686e = new p71();
        }
        return f7686e;
    }

    /* renamed from: c */
    public static n71 m943c() {
        n71 n71Var = m944b().f7689c;
        if (n71Var != null) {
            return n71Var;
        }
        n71 m942d = m942d(m941e());
        m944b().f7689c = m942d;
        return m942d;
    }

    /* renamed from: d */
    public static n71 m942d(q71.EnumC1615b enumC1615b) {
        EnumSet<q71.EnumC1615b> m5406e = c91.m5407c().m5406e();
        q71.EnumC1615b enumC1615b2 = enumC1615b;
        if (!m5406e.contains(enumC1615b)) {
            enumC1615b2 = enumC1615b;
            if (m5406e.size() > 0) {
                enumC1615b2 = (q71.EnumC1615b) m5406e.toArray()[0];
            }
        }
        m71 m71Var = C1611a.f7691a[enumC1615b2.ordinal()] != 1 ? null : new m71();
        m71 m71Var2 = m71Var;
        if (m71Var == null) {
            m71Var2 = new l71();
        }
        return m71Var2;
    }

    /* renamed from: e */
    public static q71.EnumC1615b m941e() {
        return m944b().f7688b;
    }

    /* renamed from: f */
    public static boolean m940f(q71.EnumC1614a enumC1614a) {
        return m945a().contains(enumC1614a);
    }

    /* renamed from: g */
    public static boolean m939g() {
        return m944b().f7690d;
    }
}
