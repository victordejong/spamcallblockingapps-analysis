package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenz.class */
public final class zzenz extends zzbhj {
    private final Context zza;
    private final zzbgx zzb;
    private final zzfef zzc;
    private final zzcyw zzd;
    private final ViewGroup zze;

    public zzenz(Context context, zzbgx zzbgxVar, zzfef zzfefVar, zzcyw zzcywVar) {
        this.zza = context;
        this.zzb = zzbgxVar;
        this.zzc = zzfefVar;
        this.zzd = zzcywVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(zzcywVar.zzc(), zzt.zzq().zzj());
        frameLayout.setMinimumHeight(zzg().zzc);
        frameLayout.setMinimumWidth(zzg().zzf);
        this.zze = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() throws RemoteException {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzd.zzm().zzc(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) throws RemoteException {
        zzciz.zzi("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) throws RemoteException {
        zzciz.zzi("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) throws RemoteException {
        zzciz.zzi("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) throws RemoteException {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        zzcyw zzcywVar = this.zzd;
        if (zzcywVar != null) {
            zzcywVar.zzh(this.zze, zzbfiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) throws RemoteException {
        zzeox zzeoxVar = this.zzc.zzc;
        if (zzeoxVar != null) {
            zzeoxVar.zzs(zzbhrVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) throws RemoteException {
        zzciz.zzi("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) throws RemoteException {
        zzciz.zzi("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) {
        zzciz.zzi("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) throws RemoteException {
        zzciz.zzi("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) throws RemoteException {
        zzciz.zzi("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) throws RemoteException {
        zzciz.zzi("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() throws RemoteException {
        zzciz.zzi("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        return zzfej.zza(this.zza, Collections.singletonList(this.zzd.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() throws RemoteException {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() throws RemoteException {
        return this.zzc.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() {
        return this.zzd.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() throws RemoteException {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() throws RemoteException {
        return ObjectWrapper.wrap(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() throws RemoteException {
        return this.zzc.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() throws RemoteException {
        if (this.zzd.zzl() != null) {
            return this.zzd.zzl().zze();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() throws RemoteException {
        if (this.zzd.zzl() != null) {
            return this.zzd.zzl().zze();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzd.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzd.zzm().zzb(null);
    }
}
