package p180n6;
/* renamed from: n6.d */
/* loaded from: classes-dex2jar.jar:n6/d.class */
public abstract class EnumC3723d extends Enum<EnumC3723d> {

    /* renamed from: b */
    public static final EnumC3723d f12114b;

    /* renamed from: c */
    public static final EnumC3723d f12115c;

    /* renamed from: d */
    public static final EnumC3723d f12116d;

    /* renamed from: e */
    public static final /* synthetic */ EnumC3723d[] f12117e;

    /* renamed from: a */
    public long f12118a;
    EnumC3723d EF0;

    /* renamed from: n6.d$a */
    /* loaded from: classes-dex2jar.jar:n6/d$a.class */
    public final class C3724a extends EnumC3723d {
        public C3724a(String str, int i, long j) {
            super(str, i, j, null);
        }
    }

    static {
        C3724a c3724a = new C3724a("TERABYTES", 0, 1099511627776L);
        EnumC3723d enumC3723d = new EnumC3723d("GIGABYTES", 1, 1073741824L) { // from class: n6.d.b
        };
        EnumC3723d enumC3723d2 = new EnumC3723d("MEGABYTES", 2, 1048576L) { // from class: n6.d.c
        };
        f12114b = enumC3723d2;
        EnumC3723d enumC3723d3 = new EnumC3723d("KILOBYTES", 3, 1024L) { // from class: n6.d.d
        };
        f12115c = enumC3723d3;
        EnumC3723d enumC3723d4 = new EnumC3723d("BYTES", 4, 1L) { // from class: n6.d.e
        };
        f12116d = enumC3723d4;
        f12117e = new EnumC3723d[]{c3724a, enumC3723d, enumC3723d2, enumC3723d3, enumC3723d4};
    }

    public EnumC3723d(String str, int i, long j, C3724a c3724a) {
        super(str, i);
        this.f12118a = j;
    }

    public static EnumC3723d valueOf(String str) {
        return (EnumC3723d) Enum.valueOf(EnumC3723d.class, str);
    }

    public static EnumC3723d[] values() {
        return (EnumC3723d[]) f12117e.clone();
    }

    /* renamed from: a */
    public long m1841a(long j) {
        return (j * this.f12118a) / f12115c.f12118a;
    }
}
