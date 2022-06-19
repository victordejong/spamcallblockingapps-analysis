package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.zzt;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefp.class */
public final class zzefp implements zzdjm, zzbes, zzdfl, zzdev {
    private final Context zza;
    private final zzfer zzb;
    private final zzfdz zzc;
    private final zzfdn zzd;
    private final zzehh zze;
    private Boolean zzf;
    private final boolean zzg = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfj)).booleanValue();
    private final zzfio zzh;
    private final String zzi;

    public zzefp(Context context, zzfer zzferVar, zzfdz zzfdzVar, zzfdn zzfdnVar, zzehh zzehhVar, zzfio zzfioVar, String str) {
        this.zza = context;
        this.zzb = zzferVar;
        this.zzc = zzfdzVar;
        this.zzd = zzfdnVar;
        this.zze = zzehhVar;
        this.zzh = zzfioVar;
        this.zzi = str;
    }

    private final zzfin zzf(String str) {
        zzfin zzb = zzfin.zzb(str);
        zzb.zzh(this.zzc, null);
        zzb.zzf(this.zzd);
        zzb.zza("request_id", this.zzi);
        if (!this.zzd.zzu.isEmpty()) {
            zzb.zza("ancn", this.zzd.zzu.get(0));
        }
        if (this.zzd.zzag) {
            zzt.zzp();
            zzb.zza("device_connectivity", true != com.google.android.gms.ads.internal.util.zzt.zzJ(this.zza) ? "offline" : "online");
            zzb.zza("event_timestamp", String.valueOf(zzt.zzA().currentTimeMillis()));
            zzb.zza("offline_ad", "1");
        }
        return zzb;
    }

    private final void zzg(zzfin zzfinVar) {
        if (!this.zzd.zzag) {
            this.zzh.zzb(zzfinVar);
            return;
        }
        this.zze.zzd(new zzehj(zzt.zzA().currentTimeMillis(), this.zzc.zzb.zzb.zzb, this.zzh.zza(zzfinVar), 2));
    }

    private final boolean zzh() {
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    String str = (String) zzbgq.zzc().zzb(zzblj.zzbe);
                    zzt.zzp();
                    String zzv = com.google.android.gms.ads.internal.util.zzt.zzv(this.zza);
                    boolean z = false;
                    if (str != null) {
                        if (zzv == null) {
                            z = false;
                        } else {
                            try {
                                z = Pattern.matches(str, zzv);
                            } catch (RuntimeException e) {
                                zzt.zzo().zzs(e, "CsiActionsListener.isPatternMatched");
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

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        if (!this.zzd.zzag) {
            return;
        }
        zzg(zzf("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zza(zzbew zzbewVar) {
        if (!this.zzg) {
            return;
        }
        int i = zzbewVar.zza;
        String str = zzbewVar.zzb;
        int i2 = i;
        String str2 = str;
        if (zzbewVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            zzbew zzbewVar2 = zzbewVar.zzd;
            i2 = i;
            str2 = str;
            if (zzbewVar2 != null) {
                i2 = i;
                str2 = str;
                if (!zzbewVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                    zzbew zzbewVar3 = zzbewVar.zzd;
                    i2 = zzbewVar3.zza;
                    str2 = zzbewVar3.zzb;
                }
            }
        }
        String zza = this.zzb.zza(str2);
        zzfin zzf = zzf("ifts");
        zzf.zza("reason", "adapter");
        if (i2 >= 0) {
            zzf.zza("arec", String.valueOf(i2));
        }
        if (zza != null) {
            zzf.zza("areec", zza);
        }
        this.zzh.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zzb() {
        if (!this.zzg) {
            return;
        }
        zzfio zzfioVar = this.zzh;
        zzfin zzf = zzf("ifts");
        zzf.zza("reason", "blocked");
        zzfioVar.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzc() {
        if (!zzh()) {
            return;
        }
        this.zzh.zzb(zzf("adapter_shown"));
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzd() {
        if (!zzh()) {
            return;
        }
        this.zzh.zzb(zzf("adapter_impression"));
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zze(zzdoa zzdoaVar) {
        if (!this.zzg) {
            return;
        }
        zzfin zzf = zzf("ifts");
        zzf.zza("reason", "exception");
        if (!TextUtils.isEmpty(zzdoaVar.getMessage())) {
            zzf.zza("msg", zzdoaVar.getMessage());
        }
        this.zzh.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        if (zzh() || this.zzd.zzag) {
            zzg(zzf(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }
}
