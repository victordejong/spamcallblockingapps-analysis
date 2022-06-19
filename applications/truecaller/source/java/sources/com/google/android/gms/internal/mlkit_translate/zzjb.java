package com.google.android.gms.internal.mlkit_translate;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjb.class */
public final class zzjb extends zzjd {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zziy zzc;

    public zzjb(zziy zziyVar) {
        this.zzc = zziyVar;
        this.zzb = zziyVar.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjh
    public final byte zza() {
        int i = this.zza;
        if (i < this.zzb) {
            this.zza = i + 1;
            return this.zzc.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
