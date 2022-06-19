package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqh.class */
abstract class dqh<T, B> {
    /* renamed from: a */
    public abstract B mo16027a();

    /* renamed from: a */
    abstract T mo16026a(B b);

    /* renamed from: a */
    abstract void mo16025a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo16024a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo16023a(B b, int i, dlw dlwVar);

    /* renamed from: a */
    abstract void mo16022a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo16020a(T t, drd drdVar) throws IOException;

    /* renamed from: a */
    public abstract void mo16019a(Object obj, T t);

    /* renamed from: a */
    public final boolean m16028a(B b, dpj dpjVar) throws IOException {
        int mo16188b = dpjVar.mo16188b();
        int i = mo16188b >>> 3;
        int i2 = mo16188b & 7;
        if (i2 == 0) {
            mo16024a((dqh<T, B>) b, i, dpjVar.mo16176g());
            return true;
        } else if (i2 == 1) {
            mo16017b(b, i, dpjVar.mo16172i());
            return true;
        } else if (i2 == 2) {
            mo16023a((dqh<T, B>) b, i, dpjVar.mo16162n());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzenn.m13630f();
            }
            mo16025a((dqh<T, B>) b, i, dpjVar.mo16170j());
            return true;
        } else {
            B mo16027a = mo16027a();
            while (dpjVar.mo16193a() != Integer.MAX_VALUE && m16028a((dqh<T, B>) mo16027a, dpjVar)) {
            }
            if ((4 | (i << 3)) != dpjVar.mo16188b()) {
                throw zzenn.m13631e();
            }
            mo16022a((dqh<T, B>) b, i, (int) mo16026a(mo16027a));
            return true;
        }
    }

    /* renamed from: b */
    public abstract T mo16018b(Object obj);

    /* renamed from: b */
    abstract void mo16017b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo16016b(T t, drd drdVar) throws IOException;

    /* renamed from: b */
    public abstract void mo16015b(Object obj, B b);

    /* renamed from: c */
    public abstract B mo16014c(Object obj);

    /* renamed from: c */
    public abstract T mo16013c(T t, T t2);

    /* renamed from: d */
    public abstract void mo16012d(Object obj);

    /* renamed from: e */
    public abstract int mo16011e(T t);

    /* renamed from: f */
    public abstract int mo16010f(T t);
}
