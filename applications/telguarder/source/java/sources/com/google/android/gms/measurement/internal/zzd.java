package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzd.class */
public final class zzd extends zze {
    private long zzc;
    private final Map<String, Integer> zzb = new ArrayMap();
    private final Map<String, Long> zza = new ArrayMap();

    public zzd(zzfl zzflVar) {
        super(zzflVar);
    }

    public static /* synthetic */ void zzd(zzd zzdVar, String str, long j) {
        zzdVar.zzg();
        Preconditions.checkNotEmpty(str);
        if (zzdVar.zzb.isEmpty()) {
            zzdVar.zzc = j;
        }
        Integer num = zzdVar.zzb.get(str);
        if (num != null) {
            zzdVar.zzb.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzdVar.zzb.size() >= 100) {
            zzdVar.zzx.zzat().zze().zza("Too many ads visible");
        } else {
            zzdVar.zzb.put(str, 1);
            zzdVar.zza.put(str, Long.valueOf(j));
        }
    }

    public static /* synthetic */ void zze(zzd zzdVar, String str, long j) {
        zzdVar.zzg();
        Preconditions.checkNotEmpty(str);
        Integer num = zzdVar.zzb.get(str);
        if (num == null) {
            zzdVar.zzx.zzat().zzb().zzb("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzhu zzh = zzdVar.zzx.zzx().zzh(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            zzdVar.zzb.put(str, Integer.valueOf(intValue));
            return;
        }
        zzdVar.zzb.remove(str);
        Long l = zzdVar.zza.get(str);
        if (l == null) {
            zzdVar.zzx.zzat().zzb().zza("First ad unit exposure time was never set");
        } else {
            long longValue = l.longValue();
            zzdVar.zza.remove(str);
            zzdVar.zzi(str, j - longValue, zzh);
        }
        if (!zzdVar.zzb.isEmpty()) {
            return;
        }
        long j2 = zzdVar.zzc;
        if (j2 == 0) {
            zzdVar.zzx.zzat().zzb().zza("First ad exposure time was never set");
            return;
        }
        zzdVar.zzh(j - j2, zzh);
        zzdVar.zzc = 0L;
    }

    private final void zzh(long j, zzhu zzhuVar) {
        if (zzhuVar == null) {
            this.zzx.zzat().zzk().zza("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.zzx.zzat().zzk().zzb("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzib.zzm(zzhuVar, bundle, true);
            this.zzx.zzk().zzs("am", "_xa", bundle);
        }
    }

    private final void zzi(String str, long j, zzhu zzhuVar) {
        if (zzhuVar == null) {
            this.zzx.zzat().zzk().zza("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.zzx.zzat().zzk().zzb("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzib.zzm(zzhuVar, bundle, true);
            this.zzx.zzk().zzs("am", "_xu", bundle);
        }
    }

    public final void zzj(long j) {
        for (String str : this.zza.keySet()) {
            this.zza.put(str, Long.valueOf(j));
        }
        if (!this.zza.isEmpty()) {
            this.zzc = j;
        }
    }

    public final void zza(String str, long j) {
        if (str == null || str.length() == 0) {
            this.zzx.zzat().zzb().zza("Ad unit id must be a non-empty string");
        } else {
            this.zzx.zzau().zzh(new zza(this, str, j));
        }
    }

    public final void zzb(String str, long j) {
        if (str == null || str.length() == 0) {
            this.zzx.zzat().zzb().zza("Ad unit id must be a non-empty string");
        } else {
            this.zzx.zzau().zzh(new zzb(this, str, j));
        }
    }

    public final void zzc(long j) {
        zzhu zzh = this.zzx.zzx().zzh(false);
        for (String str : this.zza.keySet()) {
            zzi(str, j - this.zza.get(str).longValue(), zzh);
        }
        if (!this.zza.isEmpty()) {
            zzh(j - this.zzc, zzh);
        }
        zzj(j);
    }
}
