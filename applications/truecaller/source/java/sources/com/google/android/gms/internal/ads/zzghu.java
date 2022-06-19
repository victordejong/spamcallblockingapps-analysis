package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghu.class */
public final class zzghu extends zzgep {
    public final zzghx zza;
    public zzger zzb = zzb();
    public final /* synthetic */ zzghy zzc;

    public zzghu(zzghy zzghyVar) {
        this.zzc = zzghyVar;
        this.zza = new zzghx(zzghyVar, null);
    }

    private final zzger zzb() {
        if (this.zza.hasNext()) {
            return this.zza.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // com.google.android.gms.internal.ads.zzger
    public final byte zza() {
        zzger zzgerVar = this.zzb;
        if (zzgerVar != null) {
            byte zza = zzgerVar.zza();
            if (!this.zzb.hasNext()) {
                this.zzb = zzb();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
