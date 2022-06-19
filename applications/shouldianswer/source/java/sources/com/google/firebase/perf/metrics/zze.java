package com.google.firebase.perf.metrics;

import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.firebase.perf.internal.zzt;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/zze.class */
public final class zze {
    private final Trace zzfy;

    public zze(Trace trace) {
        this.zzfy = trace;
    }

    public final zzcp zzbu() {
        zzcp.zza zzaj = com.google.android.gms.internal.firebase_perf.zzcp.zzez().zzac(this.zzfy.getName()).zzai(this.zzfy.zzbr().zzbx()).zzaj(this.zzfy.zzbr().zzk(this.zzfy.zzbs()));
        for (zzb zzbVar : this.zzfy.zzbq().values()) {
            zzaj.zzc(zzbVar.getName(), zzbVar.getCount());
        }
        List<Trace> zzbt = this.zzfy.zzbt();
        if (!zzbt.isEmpty()) {
            for (Trace trace : zzbt) {
                zzaj.zzf(new zze(trace).zzbu());
            }
        }
        zzaj.zze(this.zzfy.getAttributes());
        zzch[] zza = zzt.zza(this.zzfy.getSessions());
        if (zza != null) {
            zzaj.zze(Arrays.asList(zza));
        }
        return (com.google.android.gms.internal.firebase_perf.zzcp) zzaj.zzgm();
    }
}
