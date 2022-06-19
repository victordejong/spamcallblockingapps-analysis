package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.overlay.zzn;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwl.class */
public class zzcwl extends zzann {
    private final zzbsw zzfwf;
    private final zzbsm zzfwu;
    private final zzbrt zzgbi;
    private final zzbtj zzgbl;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzbvt zzgjg;
    private final zzbvm zzgwf;
    private final zzbyp zzgwm;

    public zzcwl(zzbrl zzbrlVar, zzbsd zzbsdVar, zzbsm zzbsmVar, zzbsw zzbswVar, zzbvt zzbvtVar, zzbtj zzbtjVar, zzbyp zzbypVar, zzbvm zzbvmVar, zzbrt zzbrtVar) {
        this.zzgcj = zzbrlVar;
        this.zzgci = zzbsdVar;
        this.zzfwu = zzbsmVar;
        this.zzfwf = zzbswVar;
        this.zzgjg = zzbvtVar;
        this.zzgbl = zzbtjVar;
        this.zzgwm = zzbypVar;
        this.zzgwf = zzbvmVar;
        this.zzgbi = zzbrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() {
        this.zzgcj.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() {
        this.zzgbl.zza(zzn.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) {
    }

    public void onAdImpression() {
        this.zzgci.onAdImpression();
        this.zzgwf.zzale();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() {
        this.zzfwu.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() {
        this.zzfwf.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() {
        this.zzgbl.zzvo();
        this.zzgwf.zzalg();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) {
        this.zzgjg.onAppEvent(str, str2);
    }

    public void onVideoEnd() {
        this.zzgwm.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() {
        this.zzgwm.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() throws RemoteException {
        this.zzgwm.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafnVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanpVar) {
    }

    public void zza(zzavl zzavlVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) throws RemoteException {
    }

    public void zzb(zzavj zzavjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    @Deprecated
    public final void zzdb(int i) throws RemoteException {
        zzf(new zzvg(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) {
        zzf(new zzvg(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvgVar) {
        this.zzgbi.zzl(zzdok.zza(zzdom.MEDIATION_SHOW_ERROR, zzvgVar));
    }

    public void zzve() {
        this.zzgwm.onVideoStart();
    }

    public void zzvf() throws RemoteException {
    }
}
