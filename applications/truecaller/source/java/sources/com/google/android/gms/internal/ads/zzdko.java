package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdko.class */
public final class zzdko implements zzdcq, zzo {
    @VisibleForTesting
    public IObjectWrapper zza;
    private final Context zzb;
    private final zzcml zzc;
    private final zzezz zzd;
    private final zzcgz zze;
    private final zzazj zzf;

    public zzdko(Context context, zzcml zzcmlVar, zzezz zzezzVar, zzcgz zzcgzVar, zzazj zzazjVar) {
        this.zzb = context;
        this.zzc = zzcmlVar;
        this.zzd = zzezzVar;
        this.zze = zzcgzVar;
        this.zzf = zzazjVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        zzcml zzcmlVar;
        if (this.zza == null || (zzcmlVar = this.zzc) == null) {
            return;
        }
        zzcmlVar.zze("onSdkImpression", new C26174a());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        zzazj zzazjVar = this.zzf;
        if ((zzazjVar == zzazj.REWARD_BASED_VIDEO_AD || zzazjVar == zzazj.INTERSTITIAL || zzazjVar == zzazj.APP_OPEN) && this.zzd.zzP && this.zzc != null && zzt.zzr().zza(this.zzb)) {
            zzcgz zzcgzVar = this.zze;
            int i = zzcgzVar.zzb;
            int i2 = zzcgzVar.zzc;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(StringConstant.DOT);
            sb.append(i2);
            String sb2 = sb.toString();
            String zza = this.zzd.zzR.zza();
            if (this.zzd.zzR.zzb() == 1) {
                zzbzl zzbzlVar2 = zzbzl.VIDEO;
                zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
                zzbzlVar = zzbzlVar2;
            } else {
                zzbzm zzbzmVar2 = this.zzd.zzU == 2 ? zzbzm.UNSPECIFIED : zzbzm.BEGIN_TO_RENDER;
                zzbzlVar = zzbzl.HTML_DISPLAY;
                zzbzmVar = zzbzmVar2;
            }
            IObjectWrapper zzd = zzt.zzr().zzd(sb2, this.zzc.zzG(), "", "javascript", zza, zzbzmVar, zzbzlVar, this.zzd.zzai);
            this.zza = zzd;
            if (zzd == null) {
                return;
            }
            zzt.zzr().zzh(this.zza, (View) this.zzc);
            this.zzc.zzak(this.zza);
            zzt.zzr().zzf(this.zza);
            this.zzc.zze("onSdkLoaded", new C26174a());
        }
    }
}
