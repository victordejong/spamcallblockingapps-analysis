package p233s6;
/* renamed from: s6.a */
/* loaded from: classes-dex2jar.jar:s6/a.class */
public abstract class EnumC4300a extends Enum<EnumC4300a> implements AbstractC4307b {

    /* renamed from: a */
    public static final EnumC4300a f13459a;

    /* renamed from: b */
    public static final /* synthetic */ EnumC4300a[] f13460b;

    /* renamed from: s6.a$a */
    /* loaded from: classes-dex2jar.jar:s6/a$a.class */
    public static final class C4301a extends EnumC4300a {
        public C4301a(String str, int i) {
            super(str, i, null);
        }
    }

    static {
        C4301a c4301a = new C4301a("IDENTITY", 0);
        f13459a = c4301a;
        f13460b = new EnumC4300a[]{c4301a, new EnumC4300a("UPPER_CAMEL_CASE", 1) { // from class: s6.a.b
        }, new EnumC4300a("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: s6.a.c
        }, new EnumC4300a("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: s6.a.d
        }, new EnumC4300a("LOWER_CASE_WITH_DASHES", 4) { // from class: s6.a.e
        }, new EnumC4300a("LOWER_CASE_WITH_DOTS", 5) { // from class: s6.a.f
        }};
    }

    public EnumC4300a(String str, int i, C4301a c4301a) {
        super(str, i);
    }

    public static EnumC4300a valueOf(String str) {
        return (EnumC4300a) Enum.valueOf(EnumC4300a.class, str);
    }

    public static EnumC4300a[] values() {
        return (EnumC4300a[]) f13460b.clone();
    }
}
