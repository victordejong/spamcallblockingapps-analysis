package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmh.class */
final class zzgmh extends zzgix {
    public final zzgml zza;
    public zzgiz zzb = zzb();
    public final /* synthetic */ zzgmn zzc;

    public zzgmh(zzgmn zzgmnVar) {
        this.zzc = zzgmnVar;
        this.zza = new zzgml(zzgmnVar, null);
    }

    private final zzgiz zzb() {
        if (this.zza.hasNext()) {
            return this.zza.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgiz
    public final byte zza() {
        zzgiz zzgizVar = this.zzb;
        if (zzgizVar != null) {
            byte zza = zzgizVar.zza();
            if (!this.zzb.hasNext()) {
                this.zzb = zzb();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
