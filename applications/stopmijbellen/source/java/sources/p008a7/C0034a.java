package p008a7;
/* renamed from: a7.a */
/* loaded from: classes-dex2jar.jar:a7/a.class */
public class C0034a {

    /* renamed from: a */
    public final EnumC0040g f49a;

    /* renamed from: b */
    public final EnumC0040g f50b;

    /* renamed from: c */
    public final boolean f51c;

    /* renamed from: d */
    public final EnumC0037d f52d;

    /* renamed from: e */
    public final EnumC0039f f53e;

    public C0034a(EnumC0037d enumC0037d, EnumC0039f enumC0039f, EnumC0040g enumC0040g, EnumC0040g enumC0040g2, boolean z) {
        this.f52d = enumC0037d;
        this.f53e = enumC0039f;
        this.f49a = enumC0040g;
        if (enumC0040g2 == null) {
            this.f50b = EnumC0040g.NONE;
        } else {
            this.f50b = enumC0040g2;
        }
        this.f51c = z;
    }

    /* renamed from: a */
    public static C0034a m8878a(EnumC0037d enumC0037d, EnumC0039f enumC0039f, EnumC0040g enumC0040g, EnumC0040g enumC0040g2, boolean z) {
        EnumC0040g enumC0040g3 = EnumC0040g.NATIVE;
        if (enumC0040g != EnumC0040g.NONE) {
            if (enumC0037d == EnumC0037d.DEFINED_BY_JAVASCRIPT && enumC0040g == enumC0040g3) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (enumC0039f != EnumC0039f.DEFINED_BY_JAVASCRIPT || enumC0040g != enumC0040g3) {
                return new C0034a(enumC0037d, enumC0039f, enumC0040g, enumC0040g2, z);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }
}
