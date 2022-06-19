package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjb.class */
final class zzjb<T> implements zzji<T> {
    private final zzix zza;
    private final zzjw<?, ?> zzb;
    private final boolean zzc;
    private final zzhf<?> zzd;

    private zzjb(zzjw<?, ?> zzjwVar, zzhf<?> zzhfVar, zzix zzixVar) {
        this.zzb = zzjwVar;
        this.zzc = zzhfVar.zza(zzixVar);
        this.zzd = zzhfVar;
        this.zza = zzixVar;
    }

    public static <T> zzjb<T> zzf(zzjw<?, ?> zzjwVar, zzhf<?> zzhfVar, zzix zzixVar) {
        return new zzjb<>(zzjwVar, zzhfVar, zzixVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final T zza() {
        return (T) this.zza.zzbH().zzaD();
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzb(T t, T t2) {
        if (!this.zzb.zzd(t).equals(this.zzb.zzd(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zzb(t);
        this.zzd.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zzc(T t) {
        int hashCode = this.zzb.zzd(t).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzd(T t, T t2) {
        zzjk.zzF(this.zzb, t, t2);
        if (this.zzc) {
            zzjk.zzE(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zze(T t) {
        zzjw<?, ?> zzjwVar = this.zzb;
        int zzg = zzjwVar.zzg(zzjwVar.zzd(t));
        if (!this.zzc) {
            return zzg;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzh(T t, byte[] bArr, int i, int i2, zzge zzgeVar) throws IOException {
        zzhs zzhsVar = (zzhs) t;
        if (zzhsVar.zzc == zzjx.zza()) {
            zzhsVar.zzc = zzjx.zzb();
        }
        zzhp zzhpVar = (zzhp) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzi(T t) {
        this.zzb.zze(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzj(T t) {
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzm(T t, zzha zzhaVar) throws IOException {
        this.zzd.zzb(t);
        throw null;
    }
}
