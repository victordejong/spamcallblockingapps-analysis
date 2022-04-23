package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dog.class */
public final class dog implements dps {

    /* renamed from: b  reason: collision with root package name */
    private static final doq f27027b = new doj();

    /* renamed from: a  reason: collision with root package name */
    private final doq f27028a;

    public dog() {
        this(new doi(dni.a(), a()));
    }

    private dog(doq doqVar) {
        this.f27028a = (doq) dnj.a(doqVar, "messageInfoFactory");
    }

    private static doq a() {
        try {
            return (doq) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f27027b;
        }
    }

    private static boolean a(dor dorVar) {
        return dorVar.a() == dpe.f27052a;
    }

    @Override // com.google.android.gms.internal.ads.dps
    public final <T> dpp<T> a(Class<T> cls) {
        dpr.a((Class<?>) cls);
        dor b2 = this.f27028a.b(cls);
        return b2.b() ? dnh.class.isAssignableFrom(cls) ? doz.a(dpr.c(), dmw.a(), b2.c()) : doz.a(dpr.a(), dmw.b(), b2.c()) : dnh.class.isAssignableFrom(cls) ? a(b2) ? dox.a(b2, dpd.b(), doc.b(), dpr.c(), dmw.a(), doo.b()) : dox.a(b2, dpd.b(), doc.b(), dpr.c(), (dmv<?>) null, doo.b()) : a(b2) ? dox.a(b2, dpd.a(), doc.a(), dpr.a(), dmw.b(), doo.a()) : dox.a(b2, dpd.a(), doc.a(), dpr.b(), (dmv<?>) null, doo.a());
    }
}
