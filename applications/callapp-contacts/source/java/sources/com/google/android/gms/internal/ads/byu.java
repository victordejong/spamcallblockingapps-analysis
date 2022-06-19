package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byu.class */
public final class byu extends ekv {

    /* renamed from: a */
    private final Context f45111a;

    /* renamed from: b */
    private final eki f45112b;

    /* renamed from: c */
    private final cpo f45113c;

    /* renamed from: d */
    private final alq f45114d;

    /* renamed from: e */
    private final ViewGroup f45115e;

    public byu(Context context, eki ekiVar, cpo cpoVar, alq alqVar) {
        this.f45111a = context;
        this.f45112b = ekiVar;
        this.f45113c = cpoVar;
        this.f45114d = alqVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(alqVar.mo18545b(), zzr.zzkx().zzzw());
        frameLayout.setMinimumHeight(zzkk().heightPixels);
        frameLayout.setMinimumWidth(zzkk().widthPixels);
        this.f45115e = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() throws RemoteException {
        C12045o.m19155b("destroy must be called on the main UI thread.");
        this.f45114d.mo18235a();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() throws RemoteException {
        zzd.zzey("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() throws RemoteException {
        return this.f45113c.f46326f;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() throws RemoteException {
        if (this.f45114d.f42490l != null) {
            return this.f45114d.f42490l.f43089a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() throws RemoteException {
        return this.f45114d.mo18544c();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() throws RemoteException {
        C12045o.m19155b("destroy must be called on the main UI thread.");
        this.f45114d.f42488j.m18432a((Context) null);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() throws RemoteException {
        C12045o.m19155b("destroy must be called on the main UI thread.");
        this.f45114d.f42488j.m18431b(null);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        zzd.zzey("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setUserId(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void showInterstitial() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12246bn abstractC12246bn) throws RemoteException {
        zzd.zzey("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) throws RemoteException {
        zzd.zzey("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) throws RemoteException {
        zzd.zzey("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) throws RemoteException {
        zzd.zzey("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) throws RemoteException {
        zzd.zzey("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) throws RemoteException {
        zzd.zzey("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
        zzd.zzey("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12878ri abstractC12878ri) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12883rn abstractC12883rn, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12949tz abstractC12949tz) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) throws RemoteException {
        zzd.zzey("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) throws RemoteException {
        C12045o.m19155b("setAdSize must be called on the main UI thread.");
        alq alqVar = this.f45114d;
        if (alqVar != null) {
            alqVar.mo18546a(this.f45115e, zzvtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        zzd.zzey("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final AbstractC12126b zzki() throws RemoteException {
        return BinderC12129d.m18979a(this.f45115e);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() throws RemoteException {
        this.f45114d.mo18540g();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        C12045o.m19155b("getAdSize must be called on the main UI thread.");
        return cps.m17358a(this.f45111a, Collections.singletonList(this.f45114d.mo18543d()));
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() throws RemoteException {
        if (this.f45114d.f42490l != null) {
            return this.f45114d.f42490l.f43089a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        return this.f45114d.f42490l;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() throws RemoteException {
        return this.f45113c.f46334n;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() throws RemoteException {
        return this.f45112b;
    }
}
