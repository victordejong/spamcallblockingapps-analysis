package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ff3.class */
public final class ff3 implements eg3 {

    /* renamed from: a */
    private static final kf3 f22880a = new cf3();

    /* renamed from: b */
    private final kf3 f22881b;

    public ff3() {
        kf3 kf3Var;
        de3 m15830c = de3.m15830c();
        try {
            kf3Var = (kf3) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            kf3Var = f22880a;
        }
        df3 df3Var = new df3(m15830c, kf3Var);
        se3.m11071b(df3Var, "messageInfoFactory");
        this.f22881b = df3Var;
    }

    /* renamed from: a */
    private static boolean m15255a(jf3 jf3Var) {
        return jf3Var.mo9591c() == 1;
    }

    @Override // com.google.android.gms.internal.ads.eg3
    /* renamed from: d */
    public final <T> cg3<T> mo15254d(Class<T> cls) {
        fg3.m15253A(cls);
        jf3 mo13913b = this.f22881b.mo13913b(cls);
        if (mo13913b.zza()) {
            return ie3.class.isAssignableFrom(cls) ? qf3.m11899j(fg3.m15223c(), yd3.m8842a(), mo13913b.mo9592b()) : qf3.m11899j(fg3.m15227a(), yd3.m8841b(), mo13913b.mo9592b());
        }
        return ie3.class.isAssignableFrom(cls) ? m15255a(mo13913b) ? pf3.m12288J(cls, mo13913b, sf3.m11057b(), af3.m16607e(), fg3.m15223c(), yd3.m8842a(), if3.m14405b()) : pf3.m12288J(cls, mo13913b, sf3.m11057b(), af3.m16607e(), fg3.m15223c(), null, if3.m14405b()) : m15255a(mo13913b) ? pf3.m12288J(cls, mo13913b, sf3.m11058a(), af3.m16608d(), fg3.m15227a(), yd3.m8841b(), if3.m14406a()) : pf3.m12288J(cls, mo13913b, sf3.m11058a(), af3.m16608d(), fg3.m15225b(), null, if3.m14406a());
    }
}
