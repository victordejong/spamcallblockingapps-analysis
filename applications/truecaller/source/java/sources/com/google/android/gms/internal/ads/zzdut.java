package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdut.class */
public final class zzdut implements zzdfx, zzbcv, zzdbw, zzdbg {
    private final Context zza;
    private final zzfbe zzb;
    private final zzdvi zzc;
    private final zzfal zzd;
    private final zzezz zze;
    private final zzedq zzf;
    private Boolean zzg;
    private final boolean zzh = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfc)).booleanValue();

    public zzdut(Context context, zzfbe zzfbeVar, zzdvi zzdviVar, zzfal zzfalVar, zzezz zzezzVar, zzedq zzedqVar) {
        this.zza = context;
        this.zzb = zzfbeVar;
        this.zzc = zzdviVar;
        this.zzd = zzfalVar;
        this.zze = zzezzVar;
        this.zzf = zzedqVar;
    }

    private final boolean zzf() {
        if (this.zzg == null) {
            synchronized (this) {
                if (this.zzg == null) {
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
                    this.zzg = Boolean.valueOf(z);
                }
            }
        }
        return this.zzg.booleanValue();
    }

    private final zzdvh zzh(String str) {
        zzdvh zzd = this.zzc.zzd();
        zzd.zzb(this.zzd.zzb.zzb);
        zzd.zzc(this.zze);
        zzd.zzd("action", str);
        if (!this.zze.zzt.isEmpty()) {
            zzd.zzd("ancn", this.zze.zzt.get(0));
        }
        if (this.zze.zzaf) {
            zzt.zzc();
            zzd.zzd("device_connectivity", true != zzs.zzI(this.zza) ? "offline" : "online");
            zzd.zzd("event_timestamp", String.valueOf(zzt.zzj().mo38787c()));
            zzd.zzd("offline_ad", "1");
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            boolean zza = zze.zza(this.zzd);
            zzd.zzd("scar", String.valueOf(zza));
            if (zza) {
                String zzb = zze.zzb(this.zzd);
                if (!TextUtils.isEmpty(zzb)) {
                    zzd.zzd("ragent", zzb);
                }
                String zzc = zze.zzc(this.zzd);
                if (!TextUtils.isEmpty(zzc)) {
                    zzd.zzd("rtype", zzc);
                }
            }
        }
        return zzd;
    }

    private final void zzi(zzdvh zzdvhVar) {
        if (!this.zze.zzaf) {
            zzdvhVar.zze();
            return;
        }
        this.zzf.zze(new zzeds(zzt.zzj().mo38787c(), this.zzd.zzb.zzb.zzb, zzdvhVar.zzf(), 2));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        if (!this.zze.zzaf) {
            return;
        }
        zzi(zzh("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zza(zzbcz zzbczVar) {
        if (!this.zzh) {
            return;
        }
        zzdvh zzh = zzh("ifts");
        zzh.zzd("reason", "adapter");
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
        if (i2 >= 0) {
            zzh.zzd("arec", String.valueOf(i2));
        }
        String zza = this.zzb.zza(str2);
        if (zza != null) {
            zzh.zzd("areec", zza);
        }
        zzh.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzb(zzdkm zzdkmVar) {
        if (!this.zzh) {
            return;
        }
        zzdvh zzh = zzh("ifts");
        zzh.zzd("reason", "exception");
        if (!TextUtils.isEmpty(zzdkmVar.getMessage())) {
            zzh.zzd(RemoteMessageConst.MessageBody.MSG, zzdkmVar.getMessage());
        }
        zzh.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zzc() {
        if (!zzf()) {
            return;
        }
        zzh("adapter_impression").zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzd() {
        if (!this.zzh) {
            return;
        }
        zzdvh zzh = zzh("ifts");
        zzh.zzd("reason", "blocked");
        zzh.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zze() {
        if (!zzf()) {
            return;
        }
        zzh("adapter_shown").zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        if (zzf() || this.zze.zzaf) {
            zzi(zzh(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }
}
