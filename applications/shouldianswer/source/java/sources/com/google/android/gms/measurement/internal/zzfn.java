package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzd;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfn.class */
final class zzfn implements Runnable {
    private final /* synthetic */ zzd zza;
    private final /* synthetic */ ServiceConnection zzb;
    private final /* synthetic */ zzfo zzc;

    public zzfn(zzfo zzfoVar, zzd zzdVar, ServiceConnection serviceConnection) {
        this.zzc = zzfoVar;
        this.zza = zzdVar;
        this.zzb = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfl zzflVar = this.zzc.zza;
        str = this.zzc.zzb;
        zzd zzdVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        Bundle zza = zzflVar.zza(str, zzdVar);
        zzflVar.zza.zzq().zzd();
        if (zza != null) {
            long j = zza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzflVar.zza.zzr().zzf().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = zza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzflVar.zza.zzr().zzf().zza("No referrer defined in install referrer response");
                } else {
                    zzflVar.zza.zzr().zzx().zza("InstallReferrer API result", string);
                    zzkm zzi = zzflVar.zza.zzi();
                    String valueOf = String.valueOf(string);
                    Bundle zza2 = zzi.zza(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (zza2 == null) {
                        zzflVar.zza.zzr().zzf().zza("No campaign params defined in install referrer result");
                    } else {
                        String string2 = zza2.getString(FirebaseAnalytics.Param.MEDIUM);
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = zza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzflVar.zza.zzr().zzf().zza("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                zza2.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzflVar.zza.zzc().zzi.zza()) {
                            zzflVar.zza.zzu();
                            zzflVar.zza.zzr().zzx().zza("Campaign has already been logged");
                        } else {
                            zzflVar.zza.zzc().zzi.zza(j);
                            zzflVar.zza.zzu();
                            zzflVar.zza.zzr().zzx().zza("Logging Install Referrer campaign from sdk with ", "referrer API");
                            zza2.putString("_cis", "referrer API");
                            zzflVar.zza.zzh().zza("auto", "_cmp", zza2);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzflVar.zza.zzn(), serviceConnection);
        }
    }
}
