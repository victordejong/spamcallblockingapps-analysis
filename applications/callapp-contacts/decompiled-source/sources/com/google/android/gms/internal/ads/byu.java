package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byu.class */
public final class byu extends ekv {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25413a;

    /* renamed from: b  reason: collision with root package name */
    private final eki f25414b;

    /* renamed from: c  reason: collision with root package name */
    private final cpo f25415c;

    /* renamed from: d  reason: collision with root package name */
    private final alq f25416d;
    private final ViewGroup e;

    public byu(Context context, eki ekiVar, cpo cpoVar, alq alqVar) {
        this.f25413a = context;
        this.f25414b = ekiVar;
        this.f25415c = cpoVar;
        this.f25416d = alqVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(alqVar.b(), zzr.zzkx().zzzw());
        frameLayout.setMinimumHeight(zzkk().heightPixels);
        frameLayout.setMinimumWidth(zzkk().widthPixels);
        this.e = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() throws RemoteException {
        o.b("destroy must be called on the main UI thread.");
        this.f25416d.a();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() throws RemoteException {
        zzd.zzey("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() throws RemoteException {
        return this.f25415c.f;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() throws RemoteException {
        if (this.f25416d.l != null) {
            return this.f25416d.l.f23815a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() throws RemoteException {
        return this.f25416d.c();
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
        o.b("destroy must be called on the main UI thread.");
        this.f25416d.j.a((Context) null);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() throws RemoteException {
        o.b("destroy must be called on the main UI thread.");
        this.f25416d.j.b(null);
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
    public final void zza(bn bnVar) throws RemoteException {
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
    public final void zza(ri riVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(rn rnVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(tz tzVar) throws RemoteException {
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
        o.b("setAdSize must be called on the main UI thread.");
        alq alqVar = this.f25416d;
        if (alqVar != null) {
            alqVar.a(this.e, zzvtVar);
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
    public final void zze(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() throws RemoteException {
        return d.a(this.e);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() throws RemoteException {
        this.f25416d.g();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        o.b("getAdSize must be called on the main UI thread.");
        return cps.a(this.f25413a, Collections.singletonList(this.f25416d.d()));
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() throws RemoteException {
        if (this.f25416d.l != null) {
            return this.f25416d.l.f23815a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        return this.f25416d.l;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() throws RemoteException {
        return this.f25415c.n;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() throws RemoteException {
        return this.f25414b;
    }
}
