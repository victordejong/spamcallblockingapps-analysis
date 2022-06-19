package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzbr;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfc.class */
final class zzfc implements Runnable {
    public final /* synthetic */ zzbr zza;
    public final /* synthetic */ ServiceConnection zzb;
    public final /* synthetic */ zzfd zzc;

    public zzfc(zzfd zzfdVar, zzbr zzbrVar, ServiceConnection serviceConnection) {
        this.zzc = zzfdVar;
        this.zza = zzbrVar;
        this.zzb = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfd zzfdVar = this.zzc;
        zzfe zzfeVar = zzfdVar.zza;
        str = zzfdVar.zzb;
        zzbr zzbrVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        zzfeVar.zza.zzav().zzg();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle zzd = zzbrVar.zzd(bundle);
            if (zzd == null) {
                zzfeVar.zza.zzau().zzb().zza("Install Referrer Service returned a null response");
            } else {
                bundle2 = zzd;
            }
        } catch (Exception e) {
            zzfeVar.zza.zzau().zzb().zzb("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        zzfeVar.zza.zzav().zzg();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                C1676a.m4786k(zzfeVar.zza, "Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    C0033h.m8883n(zzfeVar.zza, "No referrer defined in Install Referrer response");
                } else {
                    zzfeVar.zza.zzau().zzk().zzb("InstallReferrer API result", string);
                    Bundle zzi = zzfeVar.zza.zzl().zzi(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (zzi == null) {
                        C0033h.m8883n(zzfeVar.zza, "No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = zzi.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                C0033h.m8883n(zzfeVar.zza, "Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                zzi.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzfeVar.zza.zzd().zzd.zza()) {
                            C0608b.m7623l(zzfeVar.zza, "Install Referrer campaign has already been logged");
                        } else if (zzfeVar.zza.zzF()) {
                            zzfeVar.zza.zzd().zzd.zzb(j);
                            zzfeVar.zza.zzau().zzk().zzb("Logging Install Referrer campaign from sdk with ", "referrer API");
                            zzi.putString("_cis", "referrer API");
                            zzfeVar.zza.zzk().zzs("auto", "_cmp", zzi);
                        }
                    }
                }
            }
        }
        ConnectionTracker.getInstance().unbindService(zzfeVar.zza.zzax(), serviceConnection);
    }
}
