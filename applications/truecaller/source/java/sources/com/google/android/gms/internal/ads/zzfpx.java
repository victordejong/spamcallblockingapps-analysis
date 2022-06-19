package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpx.class */
public final class zzfpx<E> extends zzfoj<E> {
    public static final zzfoj<Object> zza = new zzfpx(new Object[0], 0);
    public final transient Object[] zzb;
    private final transient int zzc;

    public zzfpx(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzflx.zze(i, this.zzc, "index");
        E e = (E) this.zzb[i];
        e.getClass();
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfoj, com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzc);
        return i + this.zzc;
    }
}
