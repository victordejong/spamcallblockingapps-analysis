package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzu;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.util.pdus.PduHeaders;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbi.class */
final class zzbi implements Runnable {
    private final /* synthetic */ zzu zzaof;
    private final /* synthetic */ ServiceConnection zzaog;
    private final /* synthetic */ zzbh zzaoh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(zzbh zzbhVar, zzu zzuVar, ServiceConnection serviceConnection) {
        this.zzaoh = zzbhVar;
        this.zzaof = zzuVar;
        this.zzaog = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzbg zzbgVar = this.zzaoh.zzaoe;
        str = this.zzaoh.packageName;
        zzu zzuVar = this.zzaof;
        ServiceConnection serviceConnection = this.zzaog;
        Bundle zza = zzbgVar.zza(str, zzuVar);
        zzbgVar.zzadj.zzgn().zzaf();
        if (zza != null) {
            long j = zza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzbgVar.zzadj.zzgo().zzjd().zzbx("Service response is missing Install Referrer install timestamp");
            } else {
                String string = zza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzbgVar.zzadj.zzgo().zzjd().zzbx("No referrer defined in install referrer response");
                } else {
                    zzbgVar.zzadj.zzgo().zzjl().zzg("InstallReferrer API result", string);
                    zzfk zzgm = zzbgVar.zzadj.zzgm();
                    String valueOf = String.valueOf(string);
                    Bundle zza2 = zzgm.zza(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (zza2 == null) {
                        zzbgVar.zzadj.zzgo().zzjd().zzbx("No campaign params defined in install referrer result");
                    } else {
                        String string2 = zza2.getString(FirebaseAnalytics.Param.MEDIUM);
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = zza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzbgVar.zzadj.zzgo().zzjd().zzbx("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                zza2.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzbgVar.zzadj.zzgp().zzank.get()) {
                            zzbgVar.zzadj.zzgr();
                            zzbgVar.zzadj.zzgo().zzjl().zzbx("Campaign has already been logged");
                        } else {
                            zzbgVar.zzadj.zzgp().zzank.set(j);
                            zzbgVar.zzadj.zzgr();
                            zzbgVar.zzadj.zzgo().zzjl().zzg("Logging Install Referrer campaign from sdk with ", "referrer API");
                            zza2.putString("_cis", "referrer API");
                            zzbgVar.zzadj.zzge().logEvent(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_cmp", zza2);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzbgVar.zzadj.getContext(), serviceConnection);
        }
    }
}
