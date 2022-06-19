package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Map;
import p007a6.C0033h;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzd.class */
public final class zzd extends zze {
    private long zzc;
    private final Map<String, Integer> zzb = new C4251a();
    private final Map<String, Long> zza = new C4251a();

    public zzd(zzfu zzfuVar) {
        super(zzfuVar);
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
            C1676a.m4786k(zzdVar.zzs, "Too many ads visible");
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
            zzdVar.zzs.zzau().zzb().zzb("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzid zzh = zzdVar.zzs.zzx().zzh(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            zzdVar.zzb.put(str, Integer.valueOf(intValue));
            return;
        }
        zzdVar.zzb.remove(str);
        Long l = zzdVar.zza.get(str);
        if (l == null) {
            C0033h.m8883n(zzdVar.zzs, "First ad unit exposure time was never set");
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
            C0033h.m8883n(zzdVar.zzs, "First ad exposure time was never set");
            return;
        }
        zzdVar.zzh(j - j2, zzh);
        zzdVar.zzc = 0L;
    }

    private final void zzh(long j, zzid zzidVar) {
        if (zzidVar == null) {
            C0608b.m7623l(this.zzs, "Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.zzs.zzau().zzk().zzb("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzik.zzm(zzidVar, bundle, true);
            this.zzs.zzk().zzs("am", "_xa", bundle);
        }
    }

    private final void zzi(String str, long j, zzid zzidVar) {
        if (zzidVar == null) {
            C0608b.m7623l(this.zzs, "Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.zzs.zzau().zzk().zzb("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzik.zzm(zzidVar, bundle, true);
            this.zzs.zzk().zzs("am", "_xu", bundle);
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
            C0033h.m8883n(this.zzs, "Ad unit id must be a non-empty string");
        } else {
            this.zzs.zzav().zzh(new zza(this, str, j));
        }
    }

    public final void zzb(String str, long j) {
        if (str == null || str.length() == 0) {
            C0033h.m8883n(this.zzs, "Ad unit id must be a non-empty string");
        } else {
            this.zzs.zzav().zzh(new zzb(this, str, j));
        }
    }

    public final void zzc(long j) {
        zzid zzh = this.zzs.zzx().zzh(false);
        for (String str : this.zza.keySet()) {
            zzi(str, j - this.zza.get(str).longValue(), zzh);
        }
        if (!this.zza.isEmpty()) {
            zzh(j - this.zzc, zzh);
        }
        zzj(j);
    }
}
