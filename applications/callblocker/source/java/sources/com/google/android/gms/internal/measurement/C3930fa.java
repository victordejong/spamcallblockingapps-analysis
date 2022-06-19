package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
/* renamed from: com.google.android.gms.internal.measurement.fa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fa.class */
public final class C3930fa implements AbstractC3963gg {

    /* renamed from: b */
    private static final AbstractC3940fk f18145b = new C3933fd();

    /* renamed from: a */
    private final AbstractC3940fk f18146a;

    public C3930fa() {
        this(new C3932fc(C3907ee.m5616a(), m5578a()));
    }

    private C3930fa(AbstractC3940fk abstractC3940fk) {
        this.f18146a = (AbstractC3940fk) C3908ef.m5610a(abstractC3940fk, "messageInfoFactory");
    }

    /* renamed from: a */
    private static AbstractC3940fk m5578a() {
        AbstractC3940fk abstractC3940fk;
        try {
            abstractC3940fk = (AbstractC3940fk) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            abstractC3940fk = f18145b;
        }
        return abstractC3940fk;
    }

    /* renamed from: a */
    private static boolean m5577a(AbstractC3941fl abstractC3941fl) {
        return abstractC3941fl.mo5340a() == AbstractC3900ed.C3905e.f18099h;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3963gg
    /* renamed from: a */
    public final <T> AbstractC3960gd<T> mo5364a(Class<T> cls) {
        C3962gf.m5407a((Class<?>) cls);
        AbstractC3941fl mo5549b = this.f18146a.mo5549b(cls);
        return mo5549b.mo5339b() ? AbstractC3900ed.class.isAssignableFrom(cls) ? C3949ft.m5491a(C3962gf.m5395c(), C3888ds.m5691a(), mo5549b.mo5338c()) : C3949ft.m5491a(C3962gf.m5420a(), C3888ds.m5690b(), mo5549b.mo5338c()) : AbstractC3900ed.class.isAssignableFrom(cls) ? m5577a(mo5549b) ? C3947fr.m5525a(cls, mo5549b, C3954fy.m5483b(), AbstractC3926ex.m5585b(), C3962gf.m5395c(), C3888ds.m5691a(), C3938fi.m5560b()) : C3947fr.m5525a(cls, mo5549b, C3954fy.m5483b(), AbstractC3926ex.m5585b(), C3962gf.m5395c(), (AbstractC3887dr<?>) null, C3938fi.m5560b()) : m5577a(mo5549b) ? C3947fr.m5525a(cls, mo5549b, C3954fy.m5484a(), AbstractC3926ex.m5586a(), C3962gf.m5420a(), C3888ds.m5690b(), C3938fi.m5561a()) : C3947fr.m5525a(cls, mo5549b, C3954fy.m5484a(), AbstractC3926ex.m5586a(), C3962gf.m5403b(), (AbstractC3887dr<?>) null, C3938fi.m5561a());
    }
}
