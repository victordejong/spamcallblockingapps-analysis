package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlm.class */
final class zzlm<T> implements zzlt<T> {
    private final zzli zza;
    private final zzmh<?, ?> zzb;
    private final boolean zzc;
    private final zzjq<?> zzd;

    private zzlm(zzmh<?, ?> zzmhVar, zzjq<?> zzjqVar, zzli zzliVar) {
        this.zzb = zzmhVar;
        this.zzc = zzjqVar.zza(zzliVar);
        this.zzd = zzjqVar;
        this.zza = zzliVar;
    }

    public static <T> zzlm<T> zzf(zzmh<?, ?> zzmhVar, zzjq<?> zzjqVar, zzli zzliVar) {
        return new zzlm<>(zzmhVar, zzjqVar, zzliVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final T zza() {
        return (T) this.zza.zzbH().zzaD();
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
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

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final int zzc(T t) {
        int hashCode = this.zzb.zzd(t).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzd(T t, T t2) {
        zzlv.zzF(this.zzb, t, t2);
        if (this.zzc) {
            zzlv.zzE(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final int zze(T t) {
        zzmh<?, ?> zzmhVar = this.zzb;
        int zzg = zzmhVar.zzg(zzmhVar.zzd(t));
        if (!this.zzc) {
            return zzg;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzh(T t, byte[] bArr, int i, int i2, zzir zzirVar) throws IOException {
        zzkd zzkdVar = (zzkd) t;
        if (zzkdVar.zzc == zzmi.zza()) {
            zzkdVar.zzc = zzmi.zzb();
        }
        zzka zzkaVar = (zzka) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzi(T t) {
        this.zzb.zze(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final boolean zzj(T t) {
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzm(T t, zzjl zzjlVar) throws IOException {
        this.zzd.zzb(t);
        throw null;
    }
}
