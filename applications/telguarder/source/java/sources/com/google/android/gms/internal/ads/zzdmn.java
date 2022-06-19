package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmn.class */
final class zzdmn extends AdMetadataListener {
    private final /* synthetic */ zzdmk zzhis;
    private final /* synthetic */ zzyr zzhit;

    public zzdmn(zzdmk zzdmkVar, zzyr zzyrVar) {
        this.zzhis = zzdmkVar;
        this.zzhit = zzyrVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzchb zzchbVar;
        zzchbVar = this.zzhis.zzhir;
        if (zzchbVar != null) {
            try {
                this.zzhit.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
