package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdms.class */
final class zzdms extends AdMetadataListener {
    private final /* synthetic */ zzxs zzhiu;
    private final /* synthetic */ zzdmq zzhiv;

    public zzdms(zzdmq zzdmqVar, zzxs zzxsVar) {
        this.zzhiv = zzdmqVar;
        this.zzhiu = zzxsVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzchb zzchbVar;
        zzchbVar = this.zzhiv.zzhir;
        if (zzchbVar != null) {
            try {
                this.zzhiu.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
