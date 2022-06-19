package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgen.class */
public final class zzgen extends zzgep {
    public final /* synthetic */ zzgex zza;
    private int zzb = 0;
    private final int zzc;

    public zzgen(zzgex zzgexVar) {
        this.zza = zzgexVar;
        this.zzc = zzgexVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzger
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
