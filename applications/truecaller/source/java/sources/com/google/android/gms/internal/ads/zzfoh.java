package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoh.class */
public final class zzfoh<E> extends zzfml<E> {
    private final zzfoj<E> zza;

    public zzfoh(zzfoj<E> zzfojVar, int i) {
        super(zzfojVar.size(), i);
        this.zza = zzfojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfml
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
