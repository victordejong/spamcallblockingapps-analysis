package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgf.class */
public final class zzcgf {
    @VisibleForTesting
    public final String zzf;
    private final zzg zzj;
    @VisibleForTesting
    public long zza = -1;
    @VisibleForTesting
    public long zzb = -1;
    @VisibleForTesting
    public int zzc = -1;
    @VisibleForTesting
    public int zzd = -1;
    @VisibleForTesting
    public long zze = 0;
    private final Object zzi = new Object();
    @VisibleForTesting
    public int zzg = 0;
    @VisibleForTesting
    public int zzh = 0;

    public zzcgf(String str, zzg zzgVar) {
        this.zzf = str;
        this.zzj = zzgVar;
    }

    private final void zzg() {
        if (zzbld.zza.zze().booleanValue()) {
            synchronized (this.zzi) {
                this.zzc--;
                this.zzd--;
            }
        }
    }

    public final void zza() {
        synchronized (this.zzi) {
            this.zzg++;
        }
    }

    public final void zzb() {
        synchronized (this.zzi) {
            this.zzh++;
        }
    }

    public final void zzc(zzbdg zzbdgVar, long j) {
        synchronized (this.zzi) {
            long zzr = this.zzj.zzr();
            long mo38787c = zzt.zzj().mo38787c();
            if (this.zzb == -1) {
                if (mo38787c - zzr > ((Long) zzbet.zzc().zzc(zzbjl.zzaE)).longValue()) {
                    this.zzd = -1;
                } else {
                    this.zzd = this.zzj.zzt();
                }
                this.zzb = j;
                this.zza = j;
            } else {
                this.zza = j;
            }
            Bundle bundle = zzbdgVar.zzc;
            if (bundle != null && bundle.getInt("gw", 2) == 1) {
                return;
            }
            this.zzc++;
            int i = this.zzd + 1;
            this.zzd = i;
            if (i == 0) {
                this.zze = 0L;
                this.zzj.zzu(mo38787c);
            } else {
                this.zze = mo38787c - this.zzj.zzv();
            }
        }
    }

    public final void zzd() {
        zzg();
    }

    public final void zze() {
        zzg();
    }

    public final Bundle zzf(Context context, String str) {
        Bundle bundle;
        synchronized (this.zzi) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzj.zzC() ? "" : this.zzf);
            bundle.putLong("basets", this.zzb);
            bundle.putLong("currts", this.zza);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzc);
            bundle.putInt("preqs_in_session", this.zzd);
            bundle.putLong("time_in_session", this.zze);
            bundle.putInt("pclick", this.zzg);
            bundle.putInt("pimp", this.zzh);
            Context zza = zzcbx.zza(context);
            int identifier = zza.getResources().getIdentifier("Theme.Translucent", "style", Constants.ANDROID_PLATFORM);
            boolean z = false;
            if (identifier == 0) {
                zzcgt.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            } else {
                try {
                    if (identifier == zza.getPackageManager().getActivityInfo(new ComponentName(zza.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                        z = true;
                    } else {
                        zzcgt.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    zzcgt.zzi("Fail to fetch AdActivity theme");
                    zzcgt.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                }
            }
            bundle.putBoolean("support_transparent_background", z);
        }
        return bundle;
    }
}
