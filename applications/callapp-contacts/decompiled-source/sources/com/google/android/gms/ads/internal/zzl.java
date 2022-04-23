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
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.bn;
import com.google.android.gms.internal.ads.ce;
import com.google.android.gms.internal.ads.die;
import com.google.android.gms.internal.ads.egc;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.ekc;
import com.google.android.gms.internal.ads.eki;
import com.google.android.gms.internal.ads.ekj;
import com.google.android.gms.internal.ads.ekv;
import com.google.android.gms.internal.ads.ekz;
import com.google.android.gms.internal.ads.ele;
import com.google.android.gms.internal.ads.elk;
import com.google.android.gms.internal.ads.elm;
import com.google.android.gms.internal.ads.emd;
import com.google.android.gms.internal.ads.emj;
import com.google.android.gms.internal.ads.emk;
import com.google.android.gms.internal.ads.ri;
import com.google.android.gms.internal.ads.rn;
import com.google.android.gms.internal.ads.tz;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.zd;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzeh;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzl.class */
public final class zzl extends ekv {
    private final Context context;
    private final zzbar zzbpx;
    private final zzvt zzbpy;
    private final Future<die> zzbpz = zd.f28573a.a(new zzq(this));
    private final zzs zzbqa;
    private WebView zzbqb;
    private eki zzbqc;
    private die zzbqd;
    private AsyncTask<Void, Void, String> zzbqe;

    public zzl(Context context, zzvt zzvtVar, String str, zzbar zzbarVar) {
        this.context = context;
        this.zzbpx = zzbarVar;
        this.zzbpy = zzvtVar;
        this.zzbqb = new WebView(context);
        this.zzbqa = new zzs(context, str);
        zzbt(0);
        this.zzbqb.setVerticalScrollBarEnabled(false);
        this.zzbqb.getSettings().setJavaScriptEnabled(true);
        this.zzbqb.setWebViewClient(new zzo(this));
        this.zzbqb.setOnTouchListener(new zzn(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzbn(String str) {
        if (this.zzbqd == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzbqd.a(parse, this.context, null, null);
        } catch (zzeh e) {
            zzd.zzd("Unable to process ad data", e);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.context.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() throws RemoteException {
        o.b("destroy must be called on the main UI thread.");
        this.zzbqe.cancel(true);
        this.zzbpz.cancel(true);
        this.zzbqb.destroy();
        this.zzbqb = null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        return null;
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
        o.b("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() throws RemoteException {
        o.b("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(bn bnVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) throws RemoteException {
        this.zzbqc = ekiVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ri riVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(rn rnVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(tz tzVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        o.a(this.zzbqb, "This Search Ad has already been torn down");
        this.zzbqa.zza(zzvqVar, this.zzbpx);
        this.zzbqe = new zzp(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
        throw new IllegalStateException("Unused method");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzbm(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            ekb.a();
            return yq.a(this.context, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzbt(int i) {
        if (this.zzbqb != null) {
            this.zzbqb.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() throws RemoteException {
        o.b("getAdFrame must be called on the main UI thread.");
        return d.a(this.zzbqb);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() throws RemoteException {
        return this.zzbpy;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzkp() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(ce.f25671d.a());
        builder.appendQueryParameter("query", this.zzbqa.getQuery());
        builder.appendQueryParameter("pubId", this.zzbqa.zzlv());
        Map<String, String> zzlw = this.zzbqa.zzlw();
        for (String str : zzlw.keySet()) {
            builder.appendQueryParameter(str, zzlw.get(str));
        }
        Uri build = builder.build();
        die dieVar = this.zzbqd;
        Uri uri = build;
        if (dieVar != null) {
            try {
                uri = dieVar.a(build, dieVar.f26844b.zzb(this.context));
            } catch (zzeh e) {
                zzd.zzd("Unable to process ad data", e);
                uri = build;
            }
        }
        String zzkq = zzkq();
        String encodedQuery = uri.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(zzkq).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(zzkq);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzkq() {
        String zzlu = this.zzbqa.zzlu();
        String str = zzlu;
        if (TextUtils.isEmpty(zzlu)) {
            str = "www.google.com";
        }
        String a2 = ce.f25671d.a();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(a2).length());
        sb.append("https://");
        sb.append(str);
        sb.append(a2);
        return sb.toString();
    }
}
