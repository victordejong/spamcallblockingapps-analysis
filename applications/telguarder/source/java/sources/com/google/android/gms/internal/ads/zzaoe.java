package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoe.class */
public final class zzaoe extends zzann {
    private final zzavf zzdnn;
    private final Adapter zzdnv;

    public zzaoe(Adapter adapter, zzavf zzavfVar) {
        this.zzdnv = adapter;
        this.zzdnn = zzavfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzak(ObjectWrapper.wrap(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzaj(ObjectWrapper.wrap(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zze(ObjectWrapper.wrap(this.zzdnv), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzag(ObjectWrapper.wrap(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzah(ObjectWrapper.wrap(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafnVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanpVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavlVar) throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zza(ObjectWrapper.wrap(this.zzdnv), new zzavj(zzavlVar.getType(), zzavlVar.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavjVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvgVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdb(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzve() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzai(ObjectWrapper.wrap(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzvf() throws RemoteException {
        zzavf zzavfVar = this.zzdnn;
        if (zzavfVar != null) {
            zzavfVar.zzam(ObjectWrapper.wrap(this.zzdnv));
        }
    }
}
