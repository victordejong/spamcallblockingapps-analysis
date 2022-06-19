package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziv.class */
final class zziv extends zzix {
    public final /* synthetic */ zzjd zza;
    private int zzb = 0;
    private final int zzc;

    public zziv(zzjd zzjdVar) {
        this.zza = zzjdVar;
        this.zzc = zzjdVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zziz
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
