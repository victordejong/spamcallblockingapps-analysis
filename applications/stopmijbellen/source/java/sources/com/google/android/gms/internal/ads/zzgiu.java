package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgiu.class */
public final class zzgiu extends zzgix {
    public final /* synthetic */ zzgjf zza;
    private int zzb = 0;
    private final int zzc;

    public zzgiu(zzgjf zzgjfVar) {
        this.zza = zzgjfVar;
        this.zzc = zzgjfVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgiz
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
