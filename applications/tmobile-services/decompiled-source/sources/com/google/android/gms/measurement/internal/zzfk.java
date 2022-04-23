package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzna;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfk.class */
final class zzfk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzd f9233f;

    /* renamed from: g */
    private final /* synthetic */ ServiceConnection f9234g;

    /* renamed from: h */
    private final /* synthetic */ zzfl f9235h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfk(zzfl zzflVar, zzd zzdVar, ServiceConnection serviceConnection) {
        this.f9235h = zzflVar;
        this.f9233f = zzdVar;
        this.f9234g = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfl zzflVar = this.f9235h;
        zzfi zzfiVar = zzflVar.f9237b;
        str = zzflVar.f9236a;
        zzd zzdVar = this.f9233f;
        ServiceConnection serviceConnection = this.f9234g;
        Bundle a = zzfiVar.m11431a(str, zzdVar);
        zzfiVar.f9228a.mo11083b().mo11316e();
        if (a != null) {
            long j = a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzfiVar.f9228a.mo11081c().m11557G().m11540a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzfiVar.f9228a.mo11081c().m11560D().m11540a("No referrer defined in Install Referrer response");
                } else {
                    zzfiVar.f9228a.mo11081c().m11552L().m11539b("InstallReferrer API result", string);
                    zzkw G = zzfiVar.f9228a.m11381G();
                    String valueOf = String.valueOf(string);
                    Bundle z = G.m10931z(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (z == null) {
                        zzfiVar.f9228a.mo11081c().m11560D().m11540a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = z.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzfiVar.f9228a.mo11081c().m11560D().m11540a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                z.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzfiVar.f9228a.m11349x().f9192k.m11433a()) {
                            zzfiVar.f9228a.mo11081c().m11552L().m11540a("Install Referrer campaign has already been logged");
                        } else if (!zzna.m11885a() || !zzfiVar.f9228a.m11366e().m10880r(zzat.f8967t0) || zzfiVar.f9228a.m11357p()) {
                            zzfiVar.f9228a.m11349x().f9192k.m11432b(j);
                            zzfiVar.f9228a.mo11081c().m11552L().m11539b("Logging Install Referrer campaign from sdk with ", "referrer API");
                            z.putString("_cis", "referrer API");
                            zzfiVar.f9228a.m11382F().m11273X("auto", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, z);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.m14372b().m14371c(zzfiVar.f9228a.mo11075f(), serviceConnection);
        }
    }
}
