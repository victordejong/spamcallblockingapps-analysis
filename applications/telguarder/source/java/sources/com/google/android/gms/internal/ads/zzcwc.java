package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwc.class */
final class zzcwc extends zzave {
    private final /* synthetic */ zzbtj zzgvz;
    private final /* synthetic */ zzbrl zzgwa;
    private final /* synthetic */ zzbsm zzgwb;
    private final /* synthetic */ zzbyk zzgwc;

    public zzcwc(zzcvy zzcvyVar, zzbtj zzbtjVar, zzbrl zzbrlVar, zzbsm zzbsmVar, zzbyk zzbykVar) {
        this.zzgvz = zzbtjVar;
        this.zzgwa = zzbrlVar;
        this.zzgwb = zzbsmVar;
        this.zzgwc = zzbykVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zza(IObjectWrapper iObjectWrapper, zzavj zzavjVar) {
        this.zzgwc.zza(zzavjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaf(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzag(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzah(IObjectWrapper iObjectWrapper) {
        this.zzgvz.zzvo();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzai(IObjectWrapper iObjectWrapper) {
        this.zzgwc.zzuc();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaj(IObjectWrapper iObjectWrapper) {
        this.zzgvz.zza(zzn.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzak(IObjectWrapper iObjectWrapper) {
        this.zzgwa.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzal(IObjectWrapper iObjectWrapper) {
        this.zzgwb.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzam(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzgwb.onRewardedVideoCompleted();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
    }
}
