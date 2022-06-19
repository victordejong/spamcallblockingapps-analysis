package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzlo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzx.class */
public final class zzx extends zzw {
    final /* synthetic */ zzy zza;
    private final zzcf zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzx(zzy zzyVar, String str, int i, zzcf zzcfVar) {
        super(str, i);
        this.zza = zzyVar;
        this.zzh = zzcfVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    public final int zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    public final boolean zzc() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    public final boolean zzd(Long l, Long l2, zzdu zzduVar, boolean z) {
        Boolean bool;
        zzlo.zzb();
        boolean zzn = this.zza.zzx.zzc().zzn(this.zzb, zzdw.zzY);
        boolean zze = this.zzh.zze();
        boolean zzf = this.zzh.zzf();
        boolean zzh = this.zzh.zzh();
        boolean z2 = zze || zzf || zzh;
        if (z && !z2) {
            zzeg zzk = this.zza.zzx.zzat().zzk();
            int i = this.zzc;
            Integer num = null;
            if (this.zzh.zza()) {
                num = Integer.valueOf(this.zzh.zzb());
            }
            zzk.zzc("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(i), num);
            return true;
        }
        zzby zzd = this.zzh.zzd();
        boolean zzf2 = zzd.zzf();
        if (zzduVar.zzf()) {
            if (!zzd.zzc()) {
                this.zza.zzx.zzat().zze().zzb("No number filter for long property. property", this.zza.zzx.zzm().zze(zzduVar.zzc()));
                bool = null;
            } else {
                bool = zze(zzg(zzduVar.zzg(), zzd.zzd()), zzf2);
            }
        } else if (zzduVar.zzh()) {
            if (!zzd.zzc()) {
                this.zza.zzx.zzat().zze().zzb("No number filter for double property. property", this.zza.zzx.zzm().zze(zzduVar.zzc()));
                bool = null;
            } else {
                bool = zze(zzh(zzduVar.zzi(), zzd.zzd()), zzf2);
            }
        } else if (!zzduVar.zzd()) {
            this.zza.zzx.zzat().zze().zzb("User property has no value, property", this.zza.zzx.zzm().zze(zzduVar.zzc()));
            bool = null;
        } else if (zzd.zza()) {
            bool = zze(zzf(zzduVar.zze(), zzd.zzb(), this.zza.zzx.zzat()), zzf2);
        } else if (!zzd.zzc()) {
            this.zza.zzx.zzat().zze().zzb("No string or number filter defined. property", this.zza.zzx.zzm().zze(zzduVar.zzc()));
            bool = null;
        } else if (zzkf.zzl(zzduVar.zze())) {
            bool = zze(zzi(zzduVar.zze(), zzd.zzd()), zzf2);
        } else {
            this.zza.zzx.zzat().zze().zzc("Invalid user property value for Numeric number filter. property, value", this.zza.zzx.zzm().zze(zzduVar.zzc()), zzduVar.zze());
            bool = null;
        }
        this.zza.zzx.zzat().zzk().zzb("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.zzd = true;
        if (zzh && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.zzh.zze()) {
            this.zze = bool;
        }
        if (!bool.booleanValue() || !z2 || !zzduVar.zza()) {
            return true;
        }
        char zzb = zzduVar.zzb();
        if (l != null) {
            zzb = l.longValue();
        }
        char c = zzb;
        if (zzn) {
            c = zzb;
            if (this.zzh.zze()) {
                c = zzb;
                if (!this.zzh.zzf()) {
                    c = zzb;
                    if (l2 != null) {
                        c = l2.longValue();
                    }
                }
            }
        }
        if (this.zzh.zzf()) {
            this.zzg = Long.valueOf(c);
            return true;
        }
        this.zzf = Long.valueOf(c);
        return true;
    }
}
