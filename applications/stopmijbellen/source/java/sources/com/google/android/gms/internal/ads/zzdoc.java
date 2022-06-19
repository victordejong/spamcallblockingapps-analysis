package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoc.class */
public final class zzdoc implements zzdgf, zzo {
    @VisibleForTesting
    public IObjectWrapper zza;
    private final Context zzb;
    private final zzcop zzc;
    private final zzfdn zzd;
    private final zzcjf zze;
    private final zzbbg zzf;

    public zzdoc(Context context, zzcop zzcopVar, zzfdn zzfdnVar, zzcjf zzcjfVar, zzbbg zzbbgVar) {
        this.zzb = context;
        this.zzc = zzcopVar;
        this.zzd = zzfdnVar;
        this.zze = zzcjfVar;
        this.zzf = zzbbgVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzcop zzcopVar;
        if (this.zza == null || (zzcopVar = this.zzc) == null) {
            return;
        }
        zzcopVar.zzd("onSdkImpression", new C4251a());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        zzcbn zzcbnVar;
        zzcbo zzcboVar;
        zzbbg zzbbgVar = this.zzf;
        if ((zzbbgVar == zzbbg.REWARD_BASED_VIDEO_AD || zzbbgVar == zzbbg.INTERSTITIAL || zzbbgVar == zzbbg.APP_OPEN) && this.zzd.zzQ && this.zzc != null && zzt.zzh().zzi(this.zzb)) {
            zzcjf zzcjfVar = this.zze;
            int i = zzcjfVar.zzb;
            int i2 = zzcjfVar.zzc;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String zza = this.zzd.zzS.zza();
            if (this.zzd.zzS.zzb() == 1) {
                zzcbn zzcbnVar2 = zzcbn.VIDEO;
                zzcboVar = zzcbo.DEFINED_BY_JAVASCRIPT;
                zzcbnVar = zzcbnVar2;
            } else {
                zzcbo zzcboVar2 = this.zzd.zzV == 2 ? zzcbo.UNSPECIFIED : zzcbo.BEGIN_TO_RENDER;
                zzcbnVar = zzcbn.HTML_DISPLAY;
                zzcboVar = zzcboVar2;
            }
            IObjectWrapper zza2 = zzt.zzh().zza(sb2, this.zzc.zzI(), "", "javascript", zza, zzcboVar, zzcbnVar, this.zzd.zzaj);
            this.zza = zza2;
            if (zza2 == null) {
                return;
            }
            zzt.zzh().zzg(this.zza, (View) this.zzc);
            this.zzc.zzar(this.zza);
            zzt.zzh().zzh(this.zza);
            this.zzc.zzd("onSdkLoaded", new C4251a());
        }
    }
}
