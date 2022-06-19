package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxs.class */
public final class zzcxs extends zzxo {
    private final Context context;
    private final ViewGroup zzfum;
    private final zzdnp zzfwy;
    private final zzwx zzgby;
    private final zzblv zzgxr;

    public zzcxs(Context context, zzwx zzwxVar, zzdnp zzdnpVar, zzblv zzblvVar) {
        this.context = context;
        this.zzgby = zzwxVar;
        this.zzfwy = zzdnpVar;
        this.zzgxr = zzblvVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(zzblvVar.zzajr(), zzr.zzkt().zzzd());
        frameLayout.setMinimumHeight(zzkg().heightPixels);
        frameLayout.setMinimumWidth(zzkg().widthPixels);
        this.zzfum = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgxr.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() throws RemoteException {
        zzd.zzew("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() throws RemoteException {
        return this.zzfwy.zzhkx;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() throws RemoteException {
        if (this.zzgxr.zzakr() != null) {
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() throws RemoteException {
        return this.zzgxr.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgxr.zzakq().zzcb(null);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgxr.zzakq().zzcc(null);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        zzd.zzew("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaauVar) throws RemoteException {
        zzd.zzew("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) throws RemoteException {
        zzd.zzew("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzaryVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzaseVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauuVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzspVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) throws RemoteException {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        zzblv zzblvVar = this.zzgxr;
        if (zzblvVar != null) {
            zzblvVar.zza(this.zzfum, zzvsVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) throws RemoteException {
        zzd.zzew("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwxVar) throws RemoteException {
        zzd.zzew("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxsVar) throws RemoteException {
        zzd.zzew("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxtVar) throws RemoteException {
        zzd.zzew("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxzVar) throws RemoteException {
        zzd.zzew("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzywVar) {
        zzd.zzew("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzziVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvlVar) throws RemoteException {
        zzd.zzew("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfum);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() throws RemoteException {
        this.zzgxr.zzkf();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        return zzdnu.zzb(this.context, Collections.singletonList(this.zzgxr.zzajq()));
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() throws RemoteException {
        if (this.zzgxr.zzakr() != null) {
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        return this.zzgxr.zzakr();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() throws RemoteException {
        return this.zzfwy.zzhld;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() throws RemoteException {
        return this.zzgby;
    }
}
