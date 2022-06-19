package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsq.class */
public final class zzfsq<E> extends zzfqu<E> {
    private final zzfss<E> zza;

    public zzfsq(zzfss<E> zzfssVar, int i) {
        super(zzfssVar.size(), i);
        this.zza = zzfssVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqu
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
