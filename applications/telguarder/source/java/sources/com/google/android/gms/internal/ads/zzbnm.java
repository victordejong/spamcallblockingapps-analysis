package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnm.class */
public final class zzbnm implements zzbse, zzbtb {
    private final Context context;
    private final zzazn zzbpn;
    private final zzbeb zzdjd;
    private final zzdmw zzesr;
    private IObjectWrapper zzfvs;
    private boolean zzfvt;

    public zzbnm(Context context, zzbeb zzbebVar, zzdmw zzdmwVar, zzazn zzaznVar) {
        this.context = context;
        this.zzdjd = zzbebVar;
        this.zzesr = zzdmwVar;
        this.zzbpn = zzaznVar;
    }

    private final void zzakn() {
        zzarn zzarnVar;
        zzarm zzarmVar;
        synchronized (this) {
            if (!this.zzesr.zzdww) {
                return;
            }
            if (this.zzdjd == null) {
                return;
            }
            if (!zzr.zzlg().zzm(this.context)) {
                return;
            }
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
                    zzarnVar = zzarn.VIDEO;
                    zzarmVar = zzarm.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzarnVar = zzarn.HTML_DISPLAY;
                    zzarmVar = this.zzesr.zzhiz == 1 ? zzarm.ONE_PIXEL : zzarm.BEGIN_TO_RENDER;
                }
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner, zzarmVar, zzarnVar, this.zzesr.zzcht);
            } else {
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner);
            }
            View view = this.zzdjd.getView();
            if (this.zzfvs != null && view != null) {
                zzr.zzlg().zza(this.zzfvs, view);
                this.zzdjd.zzaq(this.zzfvs);
                zzr.zzlg().zzab(this.zzfvs);
                this.zzfvt = true;
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue()) {
                    this.zzdjd.zza("onSdkLoaded", new ArrayMap());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zzbeb zzbebVar;
        synchronized (this) {
            if (!this.zzfvt) {
                zzakn();
            }
            if (this.zzesr.zzdww && this.zzfvs != null && (zzbebVar = this.zzdjd) != null) {
                zzbebVar.zza("onSdkImpression", new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        synchronized (this) {
            if (this.zzfvt) {
                return;
            }
            zzakn();
        }
    }
}
