package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dog.class */
public final class dog implements dps {

    /* renamed from: b */
    private static final doq f47313b = new doj();

    /* renamed from: a */
    private final doq f47314a;

    public dog() {
        this(new doi(dni.m16320a(), m16288a()));
    }

    private dog(doq doqVar) {
        this.f47314a = (doq) dnj.m16314a(doqVar, "messageInfoFactory");
    }

    /* renamed from: a */
    private static doq m16288a() {
        try {
            return (doq) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f47313b;
        }
    }

    /* renamed from: a */
    private static boolean m16287a(dor dorVar) {
        return dorVar.mo16151a() == dpe.f47353a;
    }

    @Override // com.google.android.gms.internal.ads.dps
    /* renamed from: a */
    public final <T> dpp<T> mo16054a(Class<T> cls) {
        dpr.m16098a((Class<?>) cls);
        dor mo16262b = this.f47314a.mo16262b(cls);
        return mo16262b.mo16150b() ? dnh.class.isAssignableFrom(cls) ? doz.m16206a(dpr.m16087c(), dmw.m16393a(), mo16262b.mo16149c()) : doz.m16206a(dpr.m16110a(), dmw.m16392b(), mo16262b.mo16149c()) : dnh.class.isAssignableFrom(cls) ? m16287a(mo16262b) ? dox.m16243a(mo16262b, dpd.m16202b(), doc.m16295b(), dpr.m16087c(), dmw.m16393a(), doo.m16273b()) : dox.m16243a(mo16262b, dpd.m16202b(), doc.m16295b(), dpr.m16087c(), (dmv<?>) null, doo.m16273b()) : m16287a(mo16262b) ? dox.m16243a(mo16262b, dpd.m16203a(), doc.m16296a(), dpr.m16110a(), dmw.m16392b(), doo.m16274a()) : dox.m16243a(mo16262b, dpd.m16203a(), doc.m16296a(), dpr.m16094b(), (dmv<?>) null, doo.m16274a());
    }
}
