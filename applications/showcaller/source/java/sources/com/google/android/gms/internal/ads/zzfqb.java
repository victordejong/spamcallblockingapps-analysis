package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqb.class */
final class zzfqb extends zzfoj<Object> {

    /* renamed from: f */
    private final transient Object[] f34087f;

    /* renamed from: g */
    private final transient int f34088g;

    /* renamed from: h */
    private final transient int f34089h;

    public zzfqb(Object[] objArr, int i, int i2) {
        this.f34087f = objArr;
        this.f34088g = i;
        this.f34089h = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        xu2.m9052e(i, this.f34089h, "index");
        Object obj = this.f34087f[i + i + this.f34088g];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34089h;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return true;
    }
}
