package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgi.class */
final class zzgi extends zzgk {
    final /* synthetic */ zzgs zza;
    private int zzb = 0;
    private final int zzc;

    public zzgi(zzgs zzgsVar) {
        this.zza = zzgsVar;
        this.zzc = zzgsVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
