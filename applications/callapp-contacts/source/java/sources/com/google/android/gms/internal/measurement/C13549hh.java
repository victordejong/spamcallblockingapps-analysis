package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hh.class */
public final class C13549hh implements AbstractC13570ib {

    /* renamed from: b */
    private static final AbstractC13554hm f50785b = new C13547hf();

    /* renamed from: a */
    private final AbstractC13554hm f50786a;

    public C13549hh() {
        AbstractC13554hm abstractC13554hm;
        C13522gh m12780a = C13522gh.m12780a();
        try {
            abstractC13554hm = (AbstractC13554hm) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            abstractC13554hm = f50785b;
        }
        C13548hg c13548hg = new C13548hg(m12780a, abstractC13554hm);
        C13534gt.m12744a(c13548hg, "messageInfoFactory");
        this.f50786a = c13548hg;
    }

    /* renamed from: a */
    private static boolean m12724a(AbstractC13553hl abstractC13553hl) {
        return abstractC13553hl.mo12657c() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13570ib
    /* renamed from: a */
    public final <T> AbstractC13569ia<T> mo12647a(Class<T> cls) {
        C13571ic.m12636a((Class<?>) cls);
        AbstractC13553hl mo12714b = this.f50786a.mo12714b(cls);
        if (mo12714b.mo12659a()) {
            return AbstractC13526gl.class.isAssignableFrom(cls) ? C13561ht.m12668a(C13571ic.m12624c(), C13516gb.m12794a(), mo12714b.mo12658b()) : C13561ht.m12668a(C13571ic.m12646a(), C13516gb.m12793b(), mo12714b.mo12658b());
        }
        return AbstractC13526gl.class.isAssignableFrom(cls) ? m12724a(mo12714b) ? C13559hr.m12697a(mo12714b, C13563hv.m12666b(), AbstractC13545hd.m12731b(), C13571ic.m12624c(), C13516gb.m12794a(), C13552hk.m12716b()) : C13559hr.m12697a(mo12714b, C13563hv.m12666b(), AbstractC13545hd.m12731b(), C13571ic.m12624c(), (AbstractC13513fz<?>) null, C13552hk.m12716b()) : m12724a(mo12714b) ? C13559hr.m12697a(mo12714b, C13563hv.m12667a(), AbstractC13545hd.m12734a(), C13571ic.m12646a(), C13516gb.m12793b(), C13552hk.m12717a()) : C13559hr.m12697a(mo12714b, C13563hv.m12667a(), AbstractC13545hd.m12734a(), C13571ic.m12631b(), (AbstractC13513fz<?>) null, C13552hk.m12717a());
    }
}
