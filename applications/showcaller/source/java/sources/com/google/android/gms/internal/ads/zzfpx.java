package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpx.class */
public final class zzfpx<E> extends zzfoj<E> {

    /* renamed from: f */
    static final zzfoj<Object> f34079f = new zzfpx(new Object[0], 0);

    /* renamed from: g */
    final transient Object[] f34080g;

    /* renamed from: h */
    private final transient int f34081h;

    public zzfpx(Object[] objArr, int i) {
        this.f34080g = objArr;
        this.f34081h = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        xu2.m9052e(i, this.f34081h, "index");
        E e = (E) this.f34080g[i];
        e.getClass();
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34081h;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final Object[] zzb() {
        return this.f34080g;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    final int zzd() {
        return this.f34081h;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfoj, com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        System.arraycopy(this.f34080g, 0, objArr, i, this.f34081h);
        return i + this.f34081h;
    }
}
