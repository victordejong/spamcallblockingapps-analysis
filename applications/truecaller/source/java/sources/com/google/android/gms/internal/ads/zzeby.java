package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeby.class */
public final class zzeby implements zzdfx, zzbcv, zzdbw, zzdbg {
    private final Context zza;
    private final zzfbe zzb;
    private final zzfal zzc;
    private final zzezz zzd;
    private final zzedq zze;
    private Boolean zzf;
    private final boolean zzg = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfc)).booleanValue();
    private final zzffc zzh;
    private final String zzi;

    public zzeby(Context context, zzfbe zzfbeVar, zzfal zzfalVar, zzezz zzezzVar, zzedq zzedqVar, zzffc zzffcVar, String str) {
        this.zza = context;
        this.zzb = zzfbeVar;
        this.zzc = zzfalVar;
        this.zzd = zzezzVar;
        this.zze = zzedqVar;
        this.zzh = zzffcVar;
        this.zzi = str;
    }

    private final boolean zzf() {
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    String str = (String) zzbet.zzc().zzc(zzbjl.zzaY);
                    zzt.zzc();
                    String zzv = zzs.zzv(this.zza);
                    boolean z = false;
                    if (str != null) {
                        if (zzv == null) {
                            z = false;
                        } else {
                            try {
                                z = Pattern.matches(str, zzv);
                            } catch (RuntimeException e) {
                                zzt.zzg().zzk(e, "CsiActionsListener.isPatternMatched");
                                z = false;
                            }
                        }
                    }
                    this.zzf = Boolean.valueOf(z);
                }
            }
        }
        return this.zzf.booleanValue();
    }

    private final zzffb zzh(String str) {
        zzffb zza = zzffb.zza(str);
        zza.zzg(this.zzc, null);
        zza.zzi(this.zzd);
        zza.zzc("request_id", this.zzi);
        if (!this.zzd.zzt.isEmpty()) {
            zza.zzc("ancn", this.zzd.zzt.get(0));
        }
        if (this.zzd.zzaf) {
            zzt.zzc();
            zza.zzc("device_connectivity", true != zzs.zzI(this.zza) ? "offline" : "online");
            zza.zzc("event_timestamp", String.valueOf(zzt.zzj().mo38787c()));
            zza.zzc("offline_ad", "1");
        }
        return zza;
    }

    private final void zzi(zzffb zzffbVar) {
        if (!this.zzd.zzaf) {
            this.zzh.zza(zzffbVar);
            return;
        }
        this.zze.zze(new zzeds(zzt.zzj().mo38787c(), this.zzc.zzb.zzb.zzb, this.zzh.zzb(zzffbVar), 2));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        if (!this.zzd.zzaf) {
            return;
        }
        zzi(zzh("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zza(zzbcz zzbczVar) {
        if (!this.zzg) {
            return;
        }
        int i = zzbczVar.zza;
        String str = zzbczVar.zzb;
        int i2 = i;
        String str2 = str;
        if (zzbczVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            zzbcz zzbczVar2 = zzbczVar.zzd;
            i2 = i;
            str2 = str;
            if (zzbczVar2 != null) {
                i2 = i;
                str2 = str;
                if (!zzbczVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                    zzbcz zzbczVar3 = zzbczVar.zzd;
                    i2 = zzbczVar3.zza;
                    str2 = zzbczVar3.zzb;
                }
            }
        }
        String zza = this.zzb.zza(str2);
        zzffb zzh = zzh("ifts");
        zzh.zzc("reason", "adapter");
        if (i2 >= 0) {
            zzh.zzc("arec", String.valueOf(i2));
        }
        if (zza != null) {
            zzh.zzc("areec", zza);
        }
        this.zzh.zza(zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzb(zzdkm zzdkmVar) {
        if (!this.zzg) {
            return;
        }
        zzffb zzh = zzh("ifts");
        zzh.zzc("reason", "exception");
        if (!TextUtils.isEmpty(zzdkmVar.getMessage())) {
            zzh.zzc(RemoteMessageConst.MessageBody.MSG, zzdkmVar.getMessage());
        }
        this.zzh.zza(zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zzc() {
        if (!zzf()) {
            return;
        }
        this.zzh.zza(zzh("adapter_impression"));
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzd() {
        if (!this.zzg) {
            return;
        }
        zzffc zzffcVar = this.zzh;
        zzffb zzh = zzh("ifts");
        zzh.zzc("reason", "blocked");
        zzffcVar.zza(zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zze() {
        if (!zzf()) {
            return;
        }
        this.zzh.zza(zzh("adapter_shown"));
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        if (zzf() || this.zzd.zzaf) {
            zzi(zzh(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }
}
