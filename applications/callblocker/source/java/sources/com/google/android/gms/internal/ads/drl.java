package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drl.class */
public final class drl {

    /* renamed from: a */
    public final dqv f15480a;

    /* renamed from: b */
    public final drg f15481b;

    /* renamed from: c */
    public final Object f15482c;

    /* renamed from: d */
    public final dlk[] f15483d;

    public drl(dqv dqvVar, drg drgVar, Object obj, dlk[] dlkVarArr) {
        this.f15480a = dqvVar;
        this.f15481b = drgVar;
        this.f15482c = obj;
        this.f15483d = dlkVarArr;
    }

    /* renamed from: a */
    public final boolean m8815a(drl drlVar, int i) {
        boolean z;
        if (drlVar == null) {
            z = false;
        } else {
            z = false;
            if (dsn.m8704a(this.f15481b.m8822a(i), drlVar.f15481b.m8822a(i))) {
                z = false;
                if (dsn.m8704a(this.f15483d[i], drlVar.f15483d[i])) {
                    z = true;
                }
            }
        }
        return z;
    }
}
