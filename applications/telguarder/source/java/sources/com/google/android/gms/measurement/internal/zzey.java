package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzf;
import com.google.android.gms.internal.measurement.zzlr;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzey.class */
final class zzey implements Runnable {
    final /* synthetic */ zzf zza;
    final /* synthetic */ ServiceConnection zzb;
    final /* synthetic */ zzez zzc;

    public zzey(zzez zzezVar, zzf zzfVar, ServiceConnection serviceConnection) {
        this.zzc = zzezVar;
        this.zza = zzfVar;
        this.zzb = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Bundle bundle;
        Bundle zzd;
        zzez zzezVar = this.zzc;
        zzfa zzfaVar = zzezVar.zza;
        str = zzezVar.zzb;
        zzf zzfVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        zzfaVar.zza.zzau().zzg();
        Bundle bundle2 = new Bundle();
        bundle2.putString("package_name", str);
        try {
            zzd = zzfVar.zzd(bundle2);
            bundle = zzd;
        } catch (Exception e) {
            zzfaVar.zza.zzat().zzb().zzb("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        if (zzd == null) {
            zzfaVar.zza.zzat().zzb().zza("Install Referrer Service returned a null response");
            bundle = null;
        }
        zzfaVar.zza.zzau().zzg();
        if (bundle != null) {
            long j = bundle.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzfaVar.zza.zzat().zze().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzfaVar.zza.zzat().zzb().zza("No referrer defined in Install Referrer response");
                } else {
                    zzfaVar.zza.zzat().zzk().zzb("InstallReferrer API result", string);
                    Bundle zzi = zzfaVar.zza.zzl().zzi(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (zzi == null) {
                        zzfaVar.zza.zzat().zzb().zza("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = zzi.getString(FirebaseAnalytics.Param.MEDIUM);
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzfaVar.zza.zzat().zzb().zza("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                zzi.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzfaVar.zza.zzd().zzi.zza()) {
                            zzfaVar.zza.zzat().zzk().zza("Install Referrer campaign has already been logged");
                        } else {
                            zzlr.zzb();
                            if (!zzfaVar.zza.zzc().zzn(null, zzdw.zzar) || zzfaVar.zza.zzF()) {
                                zzfaVar.zza.zzd().zzi.zzb(j);
                                zzfaVar.zza.zzat().zzk().zzb("Logging Install Referrer campaign from sdk with ", "referrer API");
                                zzi.putString("_cis", "referrer API");
                                zzfaVar.zza.zzk().zzs("auto", "_cmp", zzi);
                            }
                        }
                    }
                }
            }
        }
        ConnectionTracker.getInstance().unbindService(zzfaVar.zza.zzaw(), serviceConnection);
    }
}
