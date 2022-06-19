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
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzalu;
import com.google.android.gms.internal.ads.zzazw;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfo;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhr;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbit;
import com.google.android.gms.internal.ads.zzbiw;
import com.google.android.gms.internal.ads.zzbiz;
import com.google.android.gms.internal.ads.zzbjd;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbme;
import com.google.android.gms.internal.ads.zzbmn;
import com.google.android.gms.internal.ads.zzccb;
import com.google.android.gms.internal.ads.zzcce;
import com.google.android.gms.internal.ads.zzcem;
import com.google.android.gms.internal.ads.zzcis;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcjm;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;
import p007a6.C0033h;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzs.class */
public final class zzs extends zzbhj {
    private final zzcjf zza;
    private final zzbfi zzb;
    private final Future<zzalt> zzc = zzcjm.zza.zzb(new zzo(this));
    private final Context zzd;
    private final zzr zze;
    private WebView zzf;
    private zzbgx zzg;
    private zzalt zzh;
    private AsyncTask<Void, Void, String> zzi;

    public zzs(Context context, zzbfi zzbfiVar, String str, zzcjf zzcjfVar) {
        this.zzd = context;
        this.zza = zzcjfVar;
        this.zzb = zzbfiVar;
        this.zzf = new WebView(context);
        this.zze = new zzr(context, str);
        zzV(0);
        this.zzf.setVerticalScrollBarEnabled(false);
        this.zzf.getSettings().setJavaScriptEnabled(true);
        this.zzf.setWebViewClient(new zzm(this));
        this.zzf.setOnTouchListener(new zzn(this));
    }

    public static /* bridge */ /* synthetic */ String zzo(zzs zzsVar, String str) {
        Uri uri;
        if (zzsVar.zzh != null) {
            Uri parse = Uri.parse(str);
            try {
                uri = zzsVar.zzh.zza(parse, zzsVar.zzd, null, null);
            } catch (zzalu e) {
                zzciz.zzk("Unable to process ad data", e);
                uri = parse;
            }
            str = uri.toString();
        }
        return str;
    }

    public static /* bridge */ /* synthetic */ void zzw(zzs zzsVar, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzsVar.zzd.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() throws RemoteException {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) throws RemoteException {
        this.zzg = zzbgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    public final void zzV(int i) {
        if (this.zzf == null) {
            return;
        }
        this.zzf.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() throws RemoteException {
        throw new IllegalStateException("Unused method");
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
        Preconditions.checkNotNull(this.zzf, "This Search Ad has already been torn down");
        this.zze.zzf(zzbfdVar, this.zza);
        this.zzi = new zzq(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    public final int zzb(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzbgo.zzb();
            return zzcis.zzs(this.zzd, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() throws RemoteException {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() throws RemoteException {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzf);
    }

    @VisibleForTesting
    public final String zzp() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzbmn.zzd.zze());
        builder.appendQueryParameter("query", this.zze.zzd());
        builder.appendQueryParameter("pubId", this.zze.zzc());
        builder.appendQueryParameter("mappver", this.zze.zza());
        Map<String, String> zze = this.zze.zze();
        for (String str : zze.keySet()) {
            builder.appendQueryParameter(str, zze.get(str));
        }
        Uri build = builder.build();
        zzalt zzaltVar = this.zzh;
        Uri uri = build;
        if (zzaltVar != null) {
            try {
                uri = zzaltVar.zzb(build, this.zzd);
            } catch (zzalu e) {
                zzciz.zzk("Unable to process ad data", e);
                uri = build;
            }
        }
        String zzq = zzq();
        String encodedQuery = uri.getEncodedQuery();
        return C0608b.m7625j(new StringBuilder(C0033h.m8889h(zzq, 1, String.valueOf(encodedQuery).length())), zzq, "#", encodedQuery);
    }

    @VisibleForTesting
    public final String zzq() {
        String zzb = this.zze.zzb();
        String str = zzb;
        if (true == TextUtils.isEmpty(zzb)) {
            str = "www.google.com";
        }
        String zze = zzbmn.zzd.zze();
        return C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(zze).length()), "https://", str, zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzi.cancel(true);
        this.zzc.cancel(true);
        this.zzf.destroy();
        this.zzf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() throws RemoteException {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }
}
