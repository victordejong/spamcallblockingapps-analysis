package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfv.class */
abstract class dfv<T, B> {
    /* renamed from: a */
    public abstract B mo9735a();

    /* renamed from: a */
    abstract T mo9733a(B b);

    /* renamed from: a */
    abstract void mo9732a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo9731a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo9730a(B b, int i, dbi dbiVar);

    /* renamed from: a */
    abstract void mo9729a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo9727a(T t, dgo dgoVar);

    /* renamed from: a */
    public abstract void mo9726a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo9734a(dex dexVar);

    /* renamed from: a */
    public final boolean m9741a(B b, dex dexVar) {
        boolean z = true;
        int mo9895b = dexVar.mo9895b();
        int i = mo9895b >>> 3;
        switch (mo9895b & 7) {
            case 0:
                mo9731a((dfv<T, B>) b, i, dexVar.mo9883g());
                break;
            case 1:
                mo9724b(b, i, dexVar.mo9879i());
                break;
            case 2:
                mo9730a((dfv<T, B>) b, i, dexVar.mo9869n());
                break;
            case 3:
                B mo9735a = mo9735a();
                while (dexVar.mo9900a() != Integer.MAX_VALUE && m9741a((dfv<T, B>) mo9735a, dexVar)) {
                }
                if (((i << 3) | 4) == dexVar.mo9895b()) {
                    mo9729a((dfv<T, B>) b, i, (int) mo9733a((dfv<T, B>) mo9735a));
                    break;
                } else {
                    throw zzeco.m6546e();
                }
                break;
            case 4:
                z = false;
                break;
            case 5:
                mo9732a((dfv<T, B>) b, i, dexVar.mo9877j());
                break;
            default:
                throw zzeco.m6545f();
        }
        return z;
    }

    /* renamed from: b */
    public abstract T mo9725b(Object obj);

    /* renamed from: b */
    abstract void mo9724b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo9723b(T t, dgo dgoVar);

    /* renamed from: b */
    public abstract void mo9722b(Object obj, B b);

    /* renamed from: c */
    public abstract B mo9721c(Object obj);

    /* renamed from: c */
    public abstract T mo9720c(T t, T t2);

    /* renamed from: d */
    public abstract void mo9719d(Object obj);

    /* renamed from: e */
    public abstract int mo9718e(T t);

    /* renamed from: f */
    public abstract int mo9717f(T t);
}
