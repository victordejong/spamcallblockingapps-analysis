package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gv.class */
abstract class AbstractC3978gv<T, B> {
    /* renamed from: a */
    public abstract B mo5334a();

    /* renamed from: a */
    abstract T mo5332a(B b);

    /* renamed from: a */
    abstract void mo5331a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo5330a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo5329a(B b, int i, AbstractC3859ct abstractC3859ct);

    /* renamed from: a */
    abstract void mo5328a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo5326a(T t, AbstractC4005hr abstractC4005hr);

    /* renamed from: a */
    public abstract void mo5325a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo5333a(AbstractC3961ge abstractC3961ge);

    /* renamed from: a */
    public final boolean m5335a(B b, AbstractC3961ge abstractC3961ge) {
        boolean z = true;
        int mo5457b = abstractC3961ge.mo5457b();
        int i = mo5457b >>> 3;
        switch (mo5457b & 7) {
            case 0:
                mo5330a((AbstractC3978gv<T, B>) b, i, abstractC3961ge.mo5445g());
                break;
            case 1:
                mo5323b(b, i, abstractC3961ge.mo5441i());
                break;
            case 2:
                mo5329a((AbstractC3978gv<T, B>) b, i, abstractC3961ge.mo5431n());
                break;
            case 3:
                B mo5334a = mo5334a();
                while (abstractC3961ge.mo5462a() != Integer.MAX_VALUE && m5335a((AbstractC3978gv<T, B>) mo5334a, abstractC3961ge)) {
                }
                if (((i << 3) | 4) == abstractC3961ge.mo5457b()) {
                    mo5328a((AbstractC3978gv<T, B>) b, i, (int) mo5332a((AbstractC3978gv<T, B>) mo5334a));
                    break;
                } else {
                    throw zzft.m4850e();
                }
                break;
            case 4:
                z = false;
                break;
            case 5:
                mo5331a((AbstractC3978gv<T, B>) b, i, abstractC3961ge.mo5439j());
                break;
            default:
                throw zzft.m4849f();
        }
        return z;
    }

    /* renamed from: b */
    public abstract T mo5324b(Object obj);

    /* renamed from: b */
    abstract void mo5323b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo5322b(T t, AbstractC4005hr abstractC4005hr);

    /* renamed from: b */
    public abstract void mo5321b(Object obj, B b);

    /* renamed from: c */
    public abstract B mo5320c(Object obj);

    /* renamed from: c */
    public abstract T mo5319c(T t, T t2);

    /* renamed from: d */
    public abstract void mo5318d(Object obj);

    /* renamed from: e */
    public abstract int mo5317e(T t);

    /* renamed from: f */
    public abstract int mo5316f(T t);
}
