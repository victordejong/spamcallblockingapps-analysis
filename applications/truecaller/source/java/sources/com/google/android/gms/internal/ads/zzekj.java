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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekj.class */
public final class zzekj extends zzbfm {
    private final Context zza;
    private final zzbfa zzb;
    private final zzfar zzc;
    private final zzcvh zzd;
    private final ViewGroup zze;

    public zzekj(Context context, zzbfa zzbfaVar, zzfar zzfarVar, zzcvh zzcvhVar) {
        this.zza = context;
        this.zzb = zzbfaVar;
        this.zzc = zzfarVar;
        this.zzd = zzcvhVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(zzcvhVar.zza(), zzt.zze().zzj());
        frameLayout.setMinimumHeight(zzu().zzc);
        frameLayout.setMinimumWidth(zzu().zzf);
        this.zze = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbgz zzA() {
        return this.zzd.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzB() throws RemoteException {
        return this.zzc.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfu zzC() throws RemoteException {
        return this.zzc.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfa zzD() throws RemoteException {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzE(zzbkg zzbkgVar) throws RemoteException {
        zzcgt.zzh("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzF(zzbex zzbexVar) throws RemoteException {
        zzcgt.zzh("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzG(boolean z) throws RemoteException {
        zzcgt.zzh("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzH() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzI(zzccf zzccfVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzJ(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzK(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbhc zzL() throws RemoteException {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzM(zzbis zzbisVar) throws RemoteException {
        zzcgt.zzh("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzN(zzbhg zzbhgVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzO(zzbdr zzbdrVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzP(zzaxz zzaxzVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzQ(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzX(zzbgw zzbgwVar) {
        zzcgt.zzh("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzY(zzbdg zzbdgVar, zzbfd zzbfdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzZ(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) throws RemoteException {
        zzcgt.zzh("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() throws RemoteException {
        return new ObjectWrapper(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() throws RemoteException {
        Preconditions.m38902f("destroy must be called on the main UI thread.");
        this.zzd.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzk() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzl(zzbdg zzbdgVar) throws RemoteException {
        zzcgt.zzh("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzm() throws RemoteException {
        Preconditions.m38902f("destroy must be called on the main UI thread.");
        this.zzd.zzl().zza(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzn() throws RemoteException {
        Preconditions.m38902f("destroy must be called on the main UI thread.");
        this.zzd.zzl().zzb(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzo(zzbfa zzbfaVar) throws RemoteException {
        zzcgt.zzh("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzp(zzbfu zzbfuVar) throws RemoteException {
        zzeli zzeliVar = this.zzc.zzc;
        if (zzeliVar != null) {
            zzeliVar.zzp(zzbfuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzq(zzbfr zzbfrVar) throws RemoteException {
        zzcgt.zzh("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final Bundle zzr() throws RemoteException {
        zzcgt.zzh("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzs() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() throws RemoteException {
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() {
        Preconditions.m38902f("getAdSize must be called on the main UI thread.");
        return zzfav.zzb(this.zza, Collections.singletonList(this.zzd.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzv(zzbdl zzbdlVar) throws RemoteException {
        Preconditions.m38902f("setAdSize must be called on the main UI thread.");
        zzcvh zzcvhVar = this.zzd;
        if (zzcvhVar != null) {
            zzcvhVar.zzb(this.zze, zzbdlVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzw(zzbzz zzbzzVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzx(zzcac zzcacVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzy() throws RemoteException {
        if (this.zzd.zzm() != null) {
            return this.zzd.zzm().zze();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzz() throws RemoteException {
        if (this.zzd.zzm() != null) {
            return this.zzd.zzm().zze();
        }
        return null;
    }
}
