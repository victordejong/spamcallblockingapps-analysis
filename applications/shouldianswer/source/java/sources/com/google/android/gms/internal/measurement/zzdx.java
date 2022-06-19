package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdx.class */
public final class zzdx extends zzdz {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzdu zzc;

    public zzdx(zzdu zzduVar) {
        this.zzc = zzduVar;
        this.zzb = this.zzc.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzed
    public final byte zza() {
        int i = this.zza;
        if (i < this.zzb) {
            this.zza = i + 1;
            return this.zzc.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
