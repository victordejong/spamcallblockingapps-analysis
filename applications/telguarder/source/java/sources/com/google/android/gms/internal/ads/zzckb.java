package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckb.class */
public final class zzckb implements zzbrq, zzbse, zzbvq, zzvc {
    private final Context context;
    private final zzckn zzdib;
    private final zzcqr zzdie;
    private final zzdnl zzeyz;
    private final zzdmw zzfrj;
    private final zzdoc zzglj;
    private Boolean zzglk;
    private final boolean zzgll = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyz)).booleanValue();

    public zzckb(Context context, zzdoc zzdocVar, zzckn zzcknVar, zzdnl zzdnlVar, zzdmw zzdmwVar, zzcqr zzcqrVar) {
        this.context = context;
        this.zzglj = zzdocVar;
        this.zzdib = zzcknVar;
        this.zzeyz = zzdnlVar;
        this.zzfrj = zzdmwVar;
        this.zzdie = zzcqrVar;
    }

    private final void zza(zzckq zzckqVar) {
        if (!this.zzfrj.zzhjz) {
            zzckqVar.zzaqt();
            return;
        }
        this.zzdie.zza(new zzcrc(zzr.zzky().currentTimeMillis(), this.zzeyz.zzhks.zzess.zzbvs, zzckqVar.zzaqu(), zzcqs.zzgru));
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

    private final zzckq zzge(String str) {
        zzckq zzc = this.zzdib.zzaqr().zza(this.zzeyz.zzhks.zzess).zzc(this.zzfrj);
        zzc.zzr("action", str);
        if (!this.zzfrj.zzhjh.isEmpty()) {
            zzc.zzr("ancn", this.zzfrj.zzhjh.get(0));
        }
        if (this.zzfrj.zzhjz) {
            zzr.zzkr();
            zzc.zzr("device_connectivity", zzj.zzba(this.context) ? CustomTabsCallback.ONLINE_EXTRAS_KEY : "offline");
            zzc.zzr("event_timestamp", String.valueOf(zzr.zzky().currentTimeMillis()));
            zzc.zzr("offline_ad", "1");
        }
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        if (!this.zzfrj.zzhjz) {
            return;
        }
        zza(zzge("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (zzaqo() || this.zzfrj.zzhjz) {
            zza(zzge(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zza(zzcaf zzcafVar) {
        if (!this.zzgll) {
            return;
        }
        zzckq zzge = zzge("ifts");
        zzge.zzr("reason", "exception");
        if (!TextUtils.isEmpty(zzcafVar.getMessage())) {
            zzge.zzr(NotificationCompat.CATEGORY_MESSAGE, zzcafVar.getMessage());
        }
        zzge.zzaqt();
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzale() {
        if (!zzaqo()) {
            return;
        }
        zzge("adapter_impression").zzaqt();
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
        if (!zzaqo()) {
            return;
        }
        zzge("adapter_shown").zzaqt();
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzalp() {
        if (!this.zzgll) {
            return;
        }
        zzckq zzge = zzge("ifts");
        zzge.zzr("reason", "blocked");
        zzge.zzaqt();
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzl(zzvg zzvgVar) {
        if (!this.zzgll) {
            return;
        }
        zzckq zzge = zzge("ifts");
        zzge.zzr("reason", "adapter");
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
        if (i2 >= 0) {
            zzge.zzr("arec", String.valueOf(i2));
        }
        String zzgt = this.zzglj.zzgt(str2);
        if (zzgt != null) {
            zzge.zzr("areec", zzgt);
        }
        zzge.zzaqt();
    }
}
