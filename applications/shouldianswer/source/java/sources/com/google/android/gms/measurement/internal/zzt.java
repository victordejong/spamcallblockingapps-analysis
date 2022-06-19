package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzt.class */
public final class zzt extends zzu {
    private zzbj.zze zzg;
    private final /* synthetic */ zzn zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzn zznVar, String str, int i, zzbj.zze zzeVar) {
        super(str, i);
        this.zzh = zznVar;
        this.zzg = zzeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzu
    public final int zza() {
        return this.zzg.zzb();
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    public final boolean zza(Long l, zzbr.zzk zzkVar, boolean z) {
        Boolean bool;
        boolean zzd = this.zzh.zzt().zzd(this.zza, zzap.zzbl);
        boolean zzd2 = this.zzh.zzt().zzd(this.zza, zzap.zzbr);
        boolean zze = this.zzg.zze();
        boolean zzf = this.zzg.zzf();
        boolean z2 = zzd && this.zzg.zzh();
        boolean z3 = zze || zzf || z2;
        if (z && !z3) {
            zzey zzx = this.zzh.zzr().zzx();
            int i = this.zzb;
            Integer num = null;
            if (this.zzg.zza()) {
                num = Integer.valueOf(this.zzg.zzb());
            }
            zzx.zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(i), num);
            return true;
        }
        zzbj.zzc zzd3 = this.zzg.zzd();
        boolean zzf2 = zzd3.zzf();
        if (zzkVar.zzf()) {
            if (!zzd3.zzc()) {
                this.zzh.zzr().zzi().zza("No number filter for long property. property", this.zzh.zzo().zzc(zzkVar.zzc()));
                bool = null;
            } else {
                bool = zza(zza(zzkVar.zzg(), zzd3.zzd()), zzf2);
            }
        } else if (zzkVar.zzh()) {
            if (!zzd3.zzc()) {
                this.zzh.zzr().zzi().zza("No number filter for double property. property", this.zzh.zzo().zzc(zzkVar.zzc()));
                bool = null;
            } else {
                bool = zza(zza(zzkVar.zzi(), zzd3.zzd()), zzf2);
            }
        } else if (!zzkVar.zzd()) {
            this.zzh.zzr().zzi().zza("User property has no value, property", this.zzh.zzo().zzc(zzkVar.zzc()));
            bool = null;
        } else if (zzd3.zza()) {
            bool = zza(zza(zzkVar.zze(), zzd3.zzb(), this.zzh.zzr()), zzf2);
        } else if (!zzd3.zzc()) {
            this.zzh.zzr().zzi().zza("No string or number filter defined. property", this.zzh.zzo().zzc(zzkVar.zzc()));
            bool = null;
        } else if (zzki.zza(zzkVar.zze())) {
            bool = zza(zza(zzkVar.zze(), zzd3.zzd()), zzf2);
        } else {
            this.zzh.zzr().zzi().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzo().zzc(zzkVar.zzc()), zzkVar.zze());
            bool = null;
        }
        this.zzh.zzr().zzx().zza("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.zzc = true;
        if (zzd && z2 && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.zzg.zze()) {
            this.zzd = bool;
        }
        if (!bool.booleanValue() || !z3 || !zzkVar.zza()) {
            return true;
        }
        ?? zzb = zzkVar.zzb();
        char c = zzb;
        if (zzd2) {
            c = zzb;
            if (l != null) {
                c = l.longValue();
            }
        }
        if (zzf) {
            this.zzf = Long.valueOf(c);
            return true;
        }
        this.zze = Long.valueOf(c);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzu
    public final boolean zzb() {
        return true;
    }
}
