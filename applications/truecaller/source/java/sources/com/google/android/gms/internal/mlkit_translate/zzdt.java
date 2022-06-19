package com.google.android.gms.internal.mlkit_translate;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzdt.class */
public final class zzdt extends zzds implements Iterable<zzds> {
    private final List<zzds> zza = new ArrayList();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof zzdt) && ((zzdt) obj).zza.equals(this.zza);
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzds> iterator() {
        return this.zza.iterator();
    }

    public final void zza(zzds zzdsVar) {
        zzdu zzduVar = zzdsVar;
        if (zzdsVar == null) {
            zzduVar = zzdu.zza;
        }
        this.zza.add(zzduVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final boolean zzb() {
        if (this.zza.size() == 1) {
            return this.zza.get(0).zzb();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final Number zzd() {
        if (this.zza.size() == 1) {
            return this.zza.get(0).zzd();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final String zze() {
        if (this.zza.size() == 1) {
            return this.zza.get(0).zze();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final long zzf() {
        if (this.zza.size() == 1) {
            return this.zza.get(0).zzf();
        }
        throw new IllegalStateException();
    }
}
