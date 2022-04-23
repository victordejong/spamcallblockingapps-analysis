package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hh.class */
public final class hh implements ib {

    /* renamed from: b  reason: collision with root package name */
    private static final hm f29084b = new hf();

    /* renamed from: a  reason: collision with root package name */
    private final hm f29085a;

    public hh() {
        hm hmVar;
        gh a2 = gh.a();
        try {
            hmVar = (hm) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            hmVar = f29084b;
        }
        hg hgVar = new hg(a2, hmVar);
        gt.a(hgVar, "messageInfoFactory");
        this.f29085a = hgVar;
    }

    private static boolean a(hl hlVar) {
        return hlVar.c() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.ib
    public final <T> ia<T> a(Class<T> cls) {
        ic.a((Class<?>) cls);
        hl b2 = this.f29085a.b(cls);
        if (b2.a()) {
            return gl.class.isAssignableFrom(cls) ? ht.a(ic.c(), gb.a(), b2.b()) : ht.a(ic.a(), gb.b(), b2.b());
        }
        return gl.class.isAssignableFrom(cls) ? a(b2) ? hr.a(b2, hv.b(), hd.b(), ic.c(), gb.a(), hk.b()) : hr.a(b2, hv.b(), hd.b(), ic.c(), (fz<?>) null, hk.b()) : a(b2) ? hr.a(b2, hv.a(), hd.a(), ic.a(), gb.b(), hk.a()) : hr.a(b2, hv.a(), hd.a(), ic.b(), (fz<?>) null, hk.a());
    }
}
