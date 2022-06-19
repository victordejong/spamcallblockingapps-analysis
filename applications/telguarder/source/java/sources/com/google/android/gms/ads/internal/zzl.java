package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaau;
import com.google.android.gms.internal.ads.zzacl;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzary;
import com.google.android.gms.internal.ads.zzase;
import com.google.android.gms.internal.ads.zzauu;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzeh;
import com.google.android.gms.internal.ads.zzei;
import com.google.android.gms.internal.ads.zzsp;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzww;
import com.google.android.gms.internal.ads.zzwx;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxo;
import com.google.android.gms.internal.ads.zzxs;
import com.google.android.gms.internal.ads.zzxt;
import com.google.android.gms.internal.ads.zzxz;
import com.google.android.gms.internal.ads.zzyb;
import com.google.android.gms.internal.ads.zzyw;
import com.google.android.gms.internal.ads.zzyx;
import com.google.android.gms.internal.ads.zzzc;
import com.google.android.gms.internal.ads.zzzi;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzl.class */
public final class zzl extends zzxo {
    private final Context context;
    private final zzazn zzbpn;
    private final zzvs zzbpo;
    private final Future<zzei> zzbpp = zzazp.zzeic.zze(new zzq(this));
    private final zzs zzbpq;
    private WebView zzbpr;
    private zzwx zzbps;
    private zzei zzbpt;
    private AsyncTask<Void, Void, String> zzbpu;

    public zzl(Context context, zzvs zzvsVar, String str, zzazn zzaznVar) {
        this.context = context;
        this.zzbpn = zzaznVar;
        this.zzbpo = zzvsVar;
        this.zzbpr = new WebView(context);
        this.zzbpq = new zzs(context, str);
        zzbq(0);
        this.zzbpr.setVerticalScrollBarEnabled(false);
        this.zzbpr.getSettings().setJavaScriptEnabled(true);
        this.zzbpr.setWebViewClient(new zzo(this));
        this.zzbpr.setOnTouchListener(new zzn(this));
    }

    public final String zzbn(String str) {
        if (this.zzbpt == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzbpt.zza(parse, this.context, null, null);
        } catch (zzeh e) {
            zzd.zzd("Unable to process ad data", e);
        }
        return parse.toString();
    }

    public final void zzbo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.context.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzbpu.cancel(true);
        this.zzbpp.cancel(true);
        this.zzbpr.destroy();
        this.zzbpr = null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        return null;
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
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() throws RemoteException {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaauVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzaryVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzaseVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauuVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzspVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwxVar) throws RemoteException {
        this.zzbps = zzwxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxtVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxzVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzywVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzziVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvlVar) throws RemoteException {
        Preconditions.checkNotNull(this.zzbpr, "This Search Ad has already been torn down");
        this.zzbpq.zza(zzvlVar, this.zzbpn);
        this.zzbpu = new zzp(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
        throw new IllegalStateException("Unused method");
    }

    public final int zzbm(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzwr.zzqn();
            return zzaza.zze(this.context, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public final void zzbq(int i) {
        if (this.zzbpr == null) {
            return;
        }
        this.zzbpr.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() throws RemoteException {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzbpr);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() throws RemoteException {
        return this.zzbpo;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    public final String zzkl() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzadb.zzdcr.get());
        builder.appendQueryParameter(SearchIntents.EXTRA_QUERY, this.zzbpq.getQuery());
        builder.appendQueryParameter(POBCommonConstants.PUB_ID_PARAM, this.zzbpq.zzlr());
        Map<String, String> zzls = this.zzbpq.zzls();
        for (String str : zzls.keySet()) {
            builder.appendQueryParameter(str, zzls.get(str));
        }
        Uri build = builder.build();
        zzei zzeiVar = this.zzbpt;
        Uri uri = build;
        if (zzeiVar != null) {
            try {
                uri = zzeiVar.zza(build, this.context);
            } catch (zzeh e) {
                zzd.zzd("Unable to process ad data", e);
                uri = build;
            }
        }
        String zzkm = zzkm();
        String encodedQuery = uri.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(zzkm).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(zzkm);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    public final String zzkm() {
        String zzlq = this.zzbpq.zzlq();
        String str = zzlq;
        if (TextUtils.isEmpty(zzlq)) {
            str = "www.google.com";
        }
        String str2 = zzadb.zzdcr.get();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append("https://");
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }
}
