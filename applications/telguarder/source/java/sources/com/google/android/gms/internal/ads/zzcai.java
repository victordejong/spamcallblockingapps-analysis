package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcai.class */
public final class zzcai implements zzq, zzbtb {
    private final Context context;
    private final zzazn zzbpn;
    private final zzbeb zzdjd;
    private final zzdmw zzesr;
    private IObjectWrapper zzfvs;
    private final zzug.zza.EnumC2617zza zzgbp;

    public zzcai(Context context, zzbeb zzbebVar, zzdmw zzdmwVar, zzazn zzaznVar, zzug.zza.EnumC2617zza enumC2617zza) {
        this.context = context;
        this.zzdjd = zzbebVar;
        this.zzesr = zzdmwVar;
        this.zzbpn = zzaznVar;
        this.zzgbp = enumC2617zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzarn zzarnVar;
        zzarm zzarmVar;
        if ((this.zzgbp == zzug.zza.EnumC2617zza.REWARD_BASED_VIDEO_AD || this.zzgbp == zzug.zza.EnumC2617zza.INTERSTITIAL || this.zzgbp == zzug.zza.EnumC2617zza.APP_OPEN) && this.zzesr.zzdww && this.zzdjd != null && zzr.zzlg().zzm(this.context)) {
            int i = this.zzbpn.zzehy;
            int i2 = this.zzbpn.zzehz;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String videoEventsOwner = this.zzesr.zzhjr.getVideoEventsOwner();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvp)).booleanValue()) {
                if (this.zzesr.zzhjr.getMediaType() == OmidMediaType.VIDEO) {
                    zzarn zzarnVar2 = zzarn.VIDEO;
                    zzarmVar = zzarm.DEFINED_BY_JAVASCRIPT;
                    zzarnVar = zzarnVar2;
                } else {
                    zzarm zzarmVar2 = this.zzesr.zzhjs == 2 ? zzarm.UNSPECIFIED : zzarm.BEGIN_TO_RENDER;
                    zzarnVar = zzarn.HTML_DISPLAY;
                    zzarmVar = zzarmVar2;
                }
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner, zzarmVar, zzarnVar, this.zzesr.zzcht);
            } else {
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner);
            }
            if (this.zzfvs == null || this.zzdjd.getView() == null) {
                return;
            }
            zzr.zzlg().zza(this.zzfvs, this.zzdjd.getView());
            this.zzdjd.zzaq(this.zzfvs);
            zzr.zzlg().zzab(this.zzfvs);
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue()) {
                return;
            }
            this.zzdjd.zza("onSdkLoaded", new ArrayMap());
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        this.zzfvs = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzbeb zzbebVar;
        if (this.zzfvs == null || (zzbebVar = this.zzdjd) == null) {
            return;
        }
        zzbebVar.zza("onSdkImpression", new ArrayMap());
    }
}
