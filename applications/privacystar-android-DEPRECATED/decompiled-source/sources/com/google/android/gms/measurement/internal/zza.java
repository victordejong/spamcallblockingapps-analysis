package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.p001v4.util.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zza.class */
public final class zza extends zze {
    private long zzafs;
    private final Map<String, Integer> zzafr = new ArrayMap();
    private final Map<String, Long> zzafq = new ArrayMap();

    public zza(zzbt zzbtVar) {
        super(zzbtVar);
    }

    @WorkerThread
    private final void zza(long j, zzdn zzdnVar) {
        if (zzdnVar == null) {
            zzgo().zzjl().zzbx("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            zzgo().zzjl().zzg("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzdo.zza(zzdnVar, bundle, true);
            zzge().logEvent("am", "_xa", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(String str, long j) {
        zzgb();
        zzaf();
        Preconditions.checkNotEmpty(str);
        if (this.zzafr.isEmpty()) {
            this.zzafs = j;
        }
        Integer num = this.zzafr.get(str);
        if (num != null) {
            this.zzafr.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.zzafr.size() >= 100) {
            zzgo().zzjg().zzbx("Too many ads visible");
        } else {
            this.zzafr.put(str, 1);
            this.zzafq.put(str, Long.valueOf(j));
        }
    }

    @WorkerThread
    private final void zza(String str, long j, zzdn zzdnVar) {
        if (zzdnVar == null) {
            zzgo().zzjl().zzbx("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            zzgo().zzjl().zzg("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzdo.zza(zzdnVar, bundle, true);
            zzge().logEvent("am", "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzb(String str, long j) {
        zzgb();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Integer num = this.zzafr.get(str);
        if (num != null) {
            zzdn zzla = zzgh().zzla();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.zzafr.remove(str);
                Long l = this.zzafq.get(str);
                if (l == null) {
                    zzgo().zzjd().zzbx("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    this.zzafq.remove(str);
                    zza(str, j - longValue, zzla);
                }
                if (!this.zzafr.isEmpty()) {
                    return;
                }
                if (this.zzafs == 0) {
                    zzgo().zzjd().zzbx("First ad exposure time was never set");
                    return;
                }
                zza(j - this.zzafs, zzla);
                this.zzafs = 0L;
                return;
            }
            this.zzafr.put(str, Integer.valueOf(intValue));
            return;
        }
        zzgo().zzjd().zzg("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzr(long j) {
        for (String str : this.zzafq.keySet()) {
            this.zzafq.put(str, Long.valueOf(j));
        }
        if (!this.zzafq.isEmpty()) {
            this.zzafs = j;
        }
    }

    public final void beginAdUnitExposure(String str, long j) {
        if (str == null || str.length() == 0) {
            zzgo().zzjd().zzbx("Ad unit id must be a non-empty string");
        } else {
            zzgn().zzc(new zzb(this, str, j));
        }
    }

    public final void endAdUnitExposure(String str, long j) {
        if (str == null || str.length() == 0) {
            zzgo().zzjd().zzbx("Ad unit id must be a non-empty string");
        } else {
            zzgn().zzc(new zzc(this, str, j));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgd() {
        return super.zzgd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcs zzge() {
        return super.zzge();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaj zzgf() {
        return super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdr zzgg() {
        return super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdo zzgh() {
        return super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzal zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeq zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @WorkerThread
    public final void zzq(long j) {
        zzdn zzla = zzgh().zzla();
        for (String str : this.zzafq.keySet()) {
            zza(str, j - this.zzafq.get(str).longValue(), zzla);
        }
        if (!this.zzafq.isEmpty()) {
            zza(j - this.zzafs, zzla);
        }
        zzr(j);
    }
}
