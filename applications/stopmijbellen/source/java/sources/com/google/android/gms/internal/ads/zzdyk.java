package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk.class */
public final class zzdyk implements zzdjm, zzbes, zzdfl, zzdev {
    private final Context zza;
    private final zzfer zzb;
    private final zzdyz zzc;
    private final zzfdz zzd;
    private final zzfdn zze;
    private final zzehh zzf;
    private Boolean zzg;
    private final boolean zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfj)).booleanValue();

    public zzdyk(Context context, zzfer zzferVar, zzdyz zzdyzVar, zzfdz zzfdzVar, zzfdn zzfdnVar, zzehh zzehhVar) {
        this.zza = context;
        this.zzb = zzferVar;
        this.zzc = zzdyzVar;
        this.zzd = zzfdzVar;
        this.zze = zzfdnVar;
        this.zzf = zzehhVar;
    }

    private final zzdyy zzf(String str) {
        zzdyy zza = this.zzc.zza();
        zza.zzd(this.zzd.zzb.zzb);
        zza.zzc(this.zze);
        zza.zzb("action", str);
        if (!this.zze.zzu.isEmpty()) {
            zza.zzb("ancn", this.zze.zzu.get(0));
        }
        if (this.zze.zzag) {
            zzt.zzp();
            zza.zzb("device_connectivity", true != com.google.android.gms.ads.internal.util.zzt.zzJ(this.zza) ? "offline" : "online");
            zza.zzb("event_timestamp", String.valueOf(zzt.zzA().currentTimeMillis()));
            zza.zzb("offline_ad", "1");
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            boolean zzd = zze.zzd(this.zzd);
            zza.zzb("scar", String.valueOf(zzd));
            if (zzd) {
                String zzb = zze.zzb(this.zzd);
                if (!TextUtils.isEmpty(zzb)) {
                    zza.zzb("ragent", zzb);
                }
                String zza2 = zze.zza(this.zzd);
                if (!TextUtils.isEmpty(zza2)) {
                    zza.zzb("rtype", zza2);
                }
            }
        }
        return zza;
    }

    private final void zzg(zzdyy zzdyyVar) {
        if (!this.zze.zzag) {
            zzdyyVar.zzf();
            return;
        }
        this.zzf.zzd(new zzehj(zzt.zzA().currentTimeMillis(), this.zzd.zzb.zzb.zzb, zzdyyVar.zze(), 2));
    }

    private final boolean zzh() {
        if (this.zzg == null) {
            synchronized (this) {
                if (this.zzg == null) {
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
                    this.zzg = Boolean.valueOf(z);
                }
            }
        }
        return this.zzg.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        if (!this.zze.zzag) {
            return;
        }
        zzg(zzf("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zza(zzbew zzbewVar) {
        if (!this.zzh) {
            return;
        }
        zzdyy zzf = zzf("ifts");
        zzf.zzb("reason", "adapter");
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
        if (i2 >= 0) {
            zzf.zzb("arec", String.valueOf(i2));
        }
        String zza = this.zzb.zza(str2);
        if (zza != null) {
            zzf.zzb("areec", zza);
        }
        zzf.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zzb() {
        if (!this.zzh) {
            return;
        }
        zzdyy zzf = zzf("ifts");
        zzf.zzb("reason", "blocked");
        zzf.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzc() {
        if (!zzh()) {
            return;
        }
        zzf("adapter_shown").zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzd() {
        if (!zzh()) {
            return;
        }
        zzf("adapter_impression").zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zze(zzdoa zzdoaVar) {
        if (!this.zzh) {
            return;
        }
        zzdyy zzf = zzf("ifts");
        zzf.zzb("reason", "exception");
        if (!TextUtils.isEmpty(zzdoaVar.getMessage())) {
            zzf.zzb("msg", zzdoaVar.getMessage());
        }
        zzf.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        if (zzh() || this.zze.zzag) {
            zzg(zzf(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }
}
