package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import com.facebook.ads.AdSDKNotificationListener;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpf.class */
public final class zzcpf implements zzbrq, zzbse, zzbvq, zzvc {
    private final Context context;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final String zzdun;
    private final zzdnl zzeyz;
    private final zzdmw zzfrj;
    private final zzdoc zzglj;
    private Boolean zzglk;
    private final boolean zzgll = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyz)).booleanValue();

    public zzcpf(Context context, zzdoc zzdocVar, zzdnl zzdnlVar, zzdmw zzdmwVar, zzcqr zzcqrVar, zzdrz zzdrzVar, String str) {
        this.context = context;
        this.zzglj = zzdocVar;
        this.zzeyz = zzdnlVar;
        this.zzfrj = zzdmwVar;
        this.zzdie = zzcqrVar;
        this.zzdic = zzdrzVar;
        this.zzdun = str;
    }

    private final void zza(zzdsa zzdsaVar) {
        if (!this.zzfrj.zzhjz) {
            this.zzdic.zzb(zzdsaVar);
            return;
        }
        this.zzdie.zza(new zzcrc(zzr.zzky().currentTimeMillis(), this.zzeyz.zzhks.zzess.zzbvs, this.zzdic.zzc(zzdsaVar), zzcqs.zzgru));
    }

    private final boolean zzaqo() {
        if (this.zzglk == null) {
            synchronized (this) {
                if (this.zzglk == null) {
                    zzaba<String> zzabaVar = zzabp.zzcrc;
                    zzr.zzkr();
                    this.zzglk = Boolean.valueOf(zze((String) zzwr.zzqr().zzd(zzabaVar), zzj.zzay(this.context)));
                }
            }
        }
        return this.zzglk.booleanValue();
    }

    private static boolean zze(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkv().zza(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    private final zzdsa zzgk(String str) {
        zzdsa zzu = zzdsa.zzgx(str).zza(this.zzeyz, null).zzf(this.zzfrj).zzu(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.zzdun);
        if (!this.zzfrj.zzhjh.isEmpty()) {
            zzu.zzu("ancn", this.zzfrj.zzhjh.get(0));
        }
        if (this.zzfrj.zzhjz) {
            zzr.zzkr();
            zzu.zzu("device_connectivity", zzj.zzba(this.context) ? CustomTabsCallback.ONLINE_EXTRAS_KEY : "offline");
            zzu.zzu("event_timestamp", String.valueOf(zzr.zzky().currentTimeMillis()));
            zzu.zzu("offline_ad", "1");
        }
        return zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        if (!this.zzfrj.zzhjz) {
            return;
        }
        zza(zzgk("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (zzaqo() || this.zzfrj.zzhjz) {
            zza(zzgk(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zza(zzcaf zzcafVar) {
        if (!this.zzgll) {
            return;
        }
        zzdsa zzu = zzgk("ifts").zzu("reason", "exception");
        if (!TextUtils.isEmpty(zzcafVar.getMessage())) {
            zzu.zzu(NotificationCompat.CATEGORY_MESSAGE, zzcafVar.getMessage());
        }
        this.zzdic.zzb(zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzale() {
        if (!zzaqo()) {
            return;
        }
        this.zzdic.zzb(zzgk("adapter_impression"));
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
        if (!zzaqo()) {
            return;
        }
        this.zzdic.zzb(zzgk("adapter_shown"));
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzalp() {
        if (!this.zzgll) {
            return;
        }
        this.zzdic.zzb(zzgk("ifts").zzu("reason", "blocked"));
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzl(zzvg zzvgVar) {
        if (!this.zzgll) {
            return;
        }
        int i = zzvgVar.errorCode;
        String str = zzvgVar.zzchg;
        int i2 = i;
        String str2 = str;
        if (zzvgVar.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
            i2 = i;
            str2 = str;
            if (zzvgVar.zzchi != null) {
                i2 = i;
                str2 = str;
                if (!zzvgVar.zzchi.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
                    i2 = zzvgVar.zzchi.errorCode;
                    str2 = zzvgVar.zzchi.zzchg;
                }
            }
        }
        String zzgt = this.zzglj.zzgt(str2);
        zzdsa zzu = zzgk("ifts").zzu("reason", "adapter");
        if (i2 >= 0) {
            zzu.zzu("arec", String.valueOf(i2));
        }
        if (zzgt != null) {
            zzu.zzu("areec", zzgt);
        }
        this.zzdic.zzb(zzu);
    }
}
