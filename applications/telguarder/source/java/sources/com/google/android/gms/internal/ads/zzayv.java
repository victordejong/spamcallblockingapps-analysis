package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayv.class */
public final class zzayv {
    private final String zzedf;
    private final zzf zzedg;
    private long zzeda = -1;
    private long zzedb = -1;
    private int zzedc = -1;
    int zzedd = -1;
    private long zzede = 0;
    private final Object lock = new Object();
    private int zzedh = 0;
    private int zzedi = 0;

    public zzayv(String str, zzf zzfVar) {
        this.zzedf = str;
        this.zzedg = zzfVar;
    }

    private static boolean zzai(Context context) {
        Context zzx = zzaul.zzx(context);
        int identifier = zzx.getResources().getIdentifier("Theme.Translucent", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, Constants.PLATFORM);
        if (identifier == 0) {
            zzd.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == zzx.getPackageManager().getActivityInfo(new ComponentName(zzx.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzd.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            zzd.zzex("Fail to fetch AdActivity theme");
            zzd.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public final void zza(zzvl zzvlVar, long j) {
        synchronized (this.lock) {
            long zzyo = this.zzedg.zzyo();
            long currentTimeMillis = zzr.zzky().currentTimeMillis();
            if (this.zzedb == -1) {
                if (currentTimeMillis - zzyo > ((Long) zzwr.zzqr().zzd(zzabp.zzcpm)).longValue()) {
                    this.zzedd = -1;
                } else {
                    this.zzedd = this.zzedg.zzyp();
                }
                this.zzedb = j;
                this.zzeda = j;
            } else {
                this.zzeda = j;
            }
            if (zzvlVar == null || zzvlVar.extras == null || zzvlVar.extras.getInt("gw", 2) != 1) {
                this.zzedc++;
                int i = this.zzedd + 1;
                this.zzedd = i;
                if (i == 0) {
                    this.zzede = 0L;
                    this.zzedg.zzfa(currentTimeMillis);
                } else {
                    this.zzede = currentTimeMillis - this.zzedg.zzyq();
                }
            }
        }
    }

    public final Bundle zzn(Context context, String str) {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.zzedg.zzyu() ? "" : this.zzedf);
            bundle.putLong("basets", this.zzedb);
            bundle.putLong("currts", this.zzeda);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzedc);
            bundle.putInt("preqs_in_session", this.zzedd);
            bundle.putLong("time_in_session", this.zzede);
            bundle.putInt("pclick", this.zzedh);
            bundle.putInt("pimp", this.zzedi);
            bundle.putBoolean("support_transparent_background", zzai(context));
        }
        return bundle;
    }

    public final void zzxi() {
        synchronized (this.lock) {
            this.zzedi++;
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            this.zzedh++;
        }
    }
}
