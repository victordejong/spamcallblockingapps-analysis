package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.network.constant.Protocols;
import io.agora.rtc.Constants;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcms.class */
public class zzcms extends WebViewClient implements zzcnz {
    public static final /* synthetic */ int zzb = 0;
    private boolean zzA;
    private View.OnAttachStateChangeListener zzC;
    public zzcdy zza;
    private final zzcml zzc;
    private final zzazb zzd;
    private zzbcv zzg;
    private zzo zzh;
    private zzcnx zzi;
    private zzcny zzj;
    private zzbor zzk;
    private zzbot zzl;
    private zzdio zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private zzv zzs;
    private zzbyo zzt;
    private zzb zzu;
    private zzffu zzw;
    private boolean zzx;
    private boolean zzy;
    private int zzz;
    private final HashMap<String, List<zzbpr<? super zzcml>>> zze = new HashMap<>();
    private final Object zzf = new Object();
    private zzbyj zzv = null;
    private final HashSet<String> zzB = new HashSet<>(Arrays.asList(((String) zzbet.zzc().zzc(zzbjl.zzdU)).split(",")));

    public zzcms(zzcml zzcmlVar, zzazb zzazbVar, boolean z) {
        zzbyo zzbyoVar = new zzbyo(zzcmlVar, zzcmlVar.zzM(), new zzbiv(zzcmlVar.getContext()));
        this.zzd = zzazbVar;
        this.zzc = zzcmlVar;
        this.zzp = z;
        this.zzt = zzbyoVar;
    }

    public final void zzM(View view, zzcdy zzcdyVar, int i) {
        if (!zzcdyVar.zzd() || i <= 0) {
            return;
        }
        zzcdyVar.zze(view);
        if (!zzcdyVar.zzd()) {
            return;
        }
        zzs.zza.postDelayed(new Runnable(this, view, zzcdyVar, i) { // from class: com.google.android.gms.internal.ads.zzcmm
            private final zzcms zza;
            private final View zzb;
            private final zzcdy zzc;
            private final int zzd;

            {
                this.zza = this;
                this.zzb = view;
                this.zzc = zzcdyVar;
                this.zzd = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzK(this.zzb, this.zzc, this.zzd);
            }
        }, 100L);
    }

    private final void zzN() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzC;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    private static WebResourceResponse zzO() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzav)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0195, code lost:
        com.google.android.gms.ads.internal.zzt.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0199, code lost:
        r0 = com.google.android.gms.ads.internal.util.zzs.zzS(r0);
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01a3, code lost:
        return r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zzP(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcms.zzP(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final void zzQ(Map<String, String> map, List<zzbpr<? super zzcml>> list, String str) {
        if (zze.zzc()) {
            zze.zza(str.length() != 0 ? "Received GMSG: ".concat(str) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zze.zza(sb.toString());
            }
        }
        for (zzbpr<? super zzcml> zzbprVar : list) {
            zzbprVar.zza(this.zzc, map);
        }
    }

    private static final boolean zzR(boolean z, zzcml zzcmlVar) {
        return z && !zzcmlVar.zzP().zzg() && !zzcmlVar.zzQ().equals("interstitial_mb");
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        zzbcv zzbcvVar = this.zzg;
        if (zzbcvVar != null) {
            zzbcvVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zze.zza(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            return;
        }
        zzF(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            if (this.zzc.zzX()) {
                zze.zza("Blank page loaded, 1...");
                this.zzc.zzY();
                return;
            }
            this.zzx = true;
            zzcny zzcnyVar = this.zzj;
            if (zzcnyVar != null) {
                zzcnyVar.zzb();
                this.zzj = null;
            }
            zzn();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzc.zzaz(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzA(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case Constants.ERR_WATERMARKR_INFO /* 127 */:
                    case 128:
                    case Constants.ERR_WATERMARK_READ /* 129 */:
                    case Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED /* 130 */:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String valueOf = String.valueOf(str);
        zze.zza(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzF(parse);
            return true;
        }
        if (this.zzn && webView == this.zzc.zzG()) {
            String scheme = parse.getScheme();
            if (Protocols.HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zzbcv zzbcvVar = this.zzg;
                if (zzbcvVar != null) {
                    zzbcvVar.onAdClicked();
                    zzcdy zzcdyVar = this.zza;
                    if (zzcdyVar != null) {
                        zzcdyVar.zzc(str);
                    }
                    this.zzg = null;
                }
                zzdio zzdioVar = this.zzm;
                if (zzdioVar != null) {
                    zzdioVar.zzb();
                    this.zzm = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (this.zzc.zzG().willNotDraw()) {
            String valueOf2 = String.valueOf(str);
            zzcgt.zzi(valueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf2) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        try {
            zzaas zzU = this.zzc.zzU();
            uri = parse;
            if (zzU != null) {
                uri = parse;
                if (zzU.zza(parse)) {
                    Context context = this.zzc.getContext();
                    zzcml zzcmlVar = this.zzc;
                    uri = zzU.zze(parse, context, (View) zzcmlVar, zzcmlVar.zzj());
                }
            }
        } catch (zzaat e) {
            String valueOf3 = String.valueOf(str);
            zzcgt.zzi(valueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf3) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        zzb zzbVar = this.zzu;
        if (zzbVar == null || zzbVar.zzb()) {
            zzo(new zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null, null), true);
            return true;
        }
        this.zzu.zzc(str);
        return true;
    }

    public final WebResourceResponse zzA(String str, Map<String, String> map) {
        zzayk zzf;
        try {
            if (zzbkz.zza.zze().booleanValue() && this.zzw != null && "oda".equals(Uri.parse(str).getScheme())) {
                this.zzw.zzb(str);
                return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
            }
            String zza = zzcfc.zza(str, this.zzc.getContext(), this.zzA);
            if (!zza.equals(str)) {
                return zzP(zza, map);
            }
            zzayn zza2 = zzayn.zza(Uri.parse(str));
            if (zza2 != null && (zzf = zzt.zzi().zzf(zza2)) != null && zzf.zza()) {
                return new WebResourceResponse("", "", zzf.zzb());
            }
            if (zzcgs.zzj() && zzbkv.zzb.zze().booleanValue()) {
                return zzP(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            zzt.zzg().zzk(e, "AdWebViewClient.interceptRequest");
            return zzO();
        }
    }

    public final void zzB(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzC() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzp = true;
            zzchg.zze.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcmn
                private final zzcms zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzJ();
                }
            });
        }
    }

    public final void zzD(boolean z) {
        this.zzA = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzE(int i, int i2) {
        zzbyj zzbyjVar = this.zzv;
        if (zzbyjVar != null) {
            zzbyjVar.zze(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzF(Uri uri) {
        String path = uri.getPath();
        List<zzbpr<? super zzcml>> list = this.zze.get(path);
        if (path == null || list == null) {
            String valueOf = String.valueOf(uri);
            valueOf.length();
            zze.zza("No GMSG handler found for GMSG: ".concat(valueOf));
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfa)).booleanValue() || zzt.zzg().zze() == null) {
                return;
            }
            zzchg.zza.execute(new Runnable((path == null || path.length() < 2) ? AnalyticsConstants.NULL : path.substring(1)) { // from class: com.google.android.gms.internal.ads.zzcmo
                private final String zza;

                {
                    this.zza = substring;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str = this.zza;
                    int i = zzcms.zzb;
                    zzt.zzg().zze().zze(str);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdT)).booleanValue() && this.zzB.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) zzbet.zzc().zzc(zzbjl.zzdV)).intValue()) {
                zze.zza(path.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(path) : new String("Parsing gmsg query params on BG thread: "));
                zzfsd.zzp(zzt.zzc().zzm(uri), new zzcmq(this, list, path, uri), zzchg.zze);
                return;
            }
        }
        zzt.zzc();
        zzQ(zzs.zzR(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzH(boolean z) {
        synchronized (this.zzf) {
            this.zzq = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzI(boolean z) {
        synchronized (this.zzf) {
            this.zzr = z;
        }
    }

    public final /* synthetic */ void zzJ() {
        this.zzc.zzah();
        zzl zzN = this.zzc.zzN();
        if (zzN != null) {
            zzN.zzv();
        }
    }

    public final /* synthetic */ void zzK(View view, zzcdy zzcdyVar, int i) {
        zzM(view, zzcdyVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzL(zzbcv zzbcvVar, zzbor zzborVar, zzo zzoVar, zzbot zzbotVar, zzv zzvVar, boolean z, zzbpu zzbpuVar, zzb zzbVar, zzbyq zzbyqVar, zzcdy zzcdyVar, zzedq zzedqVar, zzffu zzffuVar, zzdvi zzdviVar, zzffc zzffcVar, zzbps zzbpsVar, zzdio zzdioVar) {
        if (zzbVar == null) {
            zzbVar = new zzb(this.zzc.getContext(), zzcdyVar, null);
        }
        this.zzv = new zzbyj(this.zzc, zzbyqVar);
        this.zza = zzcdyVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaC)).booleanValue()) {
            zzu("/adMetadata", new zzboq(zzborVar));
        }
        if (zzbotVar != null) {
            zzu("/appEvent", new zzbos(zzbotVar));
        }
        zzu("/backButton", zzbpq.zzj);
        zzu("/refresh", zzbpq.zzk);
        zzu("/canOpenApp", zzbpq.zzb);
        zzu("/canOpenURLs", zzbpq.zza);
        zzu("/canOpenIntents", zzbpq.zzc);
        zzu("/close", zzbpq.zzd);
        zzu("/customClose", zzbpq.zze);
        zzu("/instrument", zzbpq.zzn);
        zzu("/delayPageLoaded", zzbpq.zzp);
        zzu("/delayPageClosed", zzbpq.zzq);
        zzu("/getLocationInfo", zzbpq.zzr);
        zzu("/log", zzbpq.zzg);
        zzu("/mraid", new zzbpy(zzbVar, this.zzv, zzbyqVar));
        zzbyo zzbyoVar = this.zzt;
        if (zzbyoVar != null) {
            zzu("/mraidLoaded", zzbyoVar);
        }
        zzu("/open", new zzbqc(zzbVar, this.zzv, zzedqVar, zzdviVar, zzffcVar));
        zzu("/precache", new zzclb());
        zzu("/touch", zzbpq.zzi);
        zzu("/video", zzbpq.zzl);
        zzu("/videoMeta", zzbpq.zzm);
        if (zzedqVar == null || zzffuVar == null) {
            zzu("/click", zzbpq.zzb(zzdioVar));
            zzu("/httpTrack", zzbpq.zzf);
        } else {
            zzu("/click", zzfba.zza(zzedqVar, zzffuVar, zzdioVar));
            zzu("/httpTrack", zzfba.zzb(zzedqVar, zzffuVar));
        }
        if (zzt.zzA().zzb(this.zzc.getContext())) {
            zzu("/logScionEvent", new zzbpx(this.zzc.getContext()));
        }
        if (zzbpuVar != null) {
            zzu("/setInterstitialProperties", new zzbpt(zzbpuVar, null));
        }
        if (zzbpsVar != null) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue()) {
                zzu("/inspectorNetworkExtras", zzbpsVar);
            }
        }
        this.zzg = zzbcvVar;
        this.zzh = zzoVar;
        this.zzk = zzborVar;
        this.zzl = zzbotVar;
        this.zzs = zzvVar;
        this.zzu = zzbVar;
        this.zzm = zzdioVar;
        this.zzn = z;
        this.zzw = zzffuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zza(int i, int i2, boolean z) {
        zzbyo zzbyoVar = this.zzt;
        if (zzbyoVar != null) {
            zzbyoVar.zzb(i, i2);
        }
        zzbyj zzbyjVar = this.zzv;
        if (zzbyjVar != null) {
            zzbyjVar.zzc(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzdio zzdioVar = this.zzm;
        if (zzdioVar != null) {
            zzdioVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final zzb zzc() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final boolean zzd() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzp;
        }
        return z;
    }

    public final boolean zze() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzq;
        }
        return z;
    }

    public final boolean zzf() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzr;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzg() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzh() {
        synchronized (this.zzf) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzj() {
        zzcdy zzcdyVar = this.zza;
        if (zzcdyVar != null) {
            WebView zzG = this.zzc.zzG();
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (zzG.isAttachedToWindow()) {
                zzM(zzG, zzcdyVar, 10);
                return;
            }
            zzN();
            zzcmp zzcmpVar = new zzcmp(this, zzcdyVar);
            this.zzC = zzcmpVar;
            ((View) this.zzc).addOnAttachStateChangeListener(zzcmpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzk() {
        synchronized (this.zzf) {
        }
        this.zzz++;
        zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzl() {
        this.zzz--;
        zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzm() {
        zzazb zzazbVar = this.zzd;
        if (zzazbVar != null) {
            zzazbVar.zzc(10005);
        }
        this.zzy = true;
        zzn();
        this.zzc.destroy();
    }

    public final void zzn() {
        if (this.zzi != null && ((this.zzx && this.zzz <= 0) || this.zzy || this.zzo)) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() && this.zzc.zzq() != null) {
                zzbjs.zza(this.zzc.zzq().zzc(), this.zzc.zzi(), "awfllc");
            }
            zzcnx zzcnxVar = this.zzi;
            boolean z = false;
            if (!this.zzy) {
                z = false;
                if (!this.zzo) {
                    z = true;
                }
            }
            zzcnxVar.zza(z);
            this.zzi = null;
        }
        this.zzc.zzao();
    }

    public final void zzo(zzc zzcVar, boolean z) {
        boolean zzW = this.zzc.zzW();
        boolean zzR = zzR(zzW, this.zzc);
        boolean z2 = true;
        if (!zzR) {
            z2 = !z;
        }
        zzt(new AdOverlayInfoParcel(zzcVar, zzR ? null : this.zzg, zzW ? null : this.zzh, this.zzs, this.zzc.zzt(), this.zzc, z2 ? null : this.zzm));
    }

    public final void zzp(zzbu zzbuVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar, String str, String str2, int i) {
        zzcml zzcmlVar = this.zzc;
        zzt(new AdOverlayInfoParcel(zzcmlVar, zzcmlVar.zzt(), zzbuVar, zzedqVar, zzdviVar, zzffcVar, str, str2, i));
    }

    public final void zzq(boolean z, int i, boolean z2) {
        boolean zzR = zzR(this.zzc.zzW(), this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbcv zzbcvVar = zzR ? null : this.zzg;
        zzo zzoVar = this.zzh;
        zzv zzvVar = this.zzs;
        zzcml zzcmlVar = this.zzc;
        zzt(new AdOverlayInfoParcel(zzbcvVar, zzoVar, zzvVar, zzcmlVar, z, i, zzcmlVar.zzt(), z3 ? null : this.zzm));
    }

    public final void zzr(boolean z, int i, String str, boolean z2) {
        boolean zzW = this.zzc.zzW();
        boolean zzR = zzR(zzW, this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbcv zzbcvVar = zzR ? null : this.zzg;
        zzcmr zzcmrVar = zzW ? null : new zzcmr(this.zzc, this.zzh);
        zzbor zzborVar = this.zzk;
        zzbot zzbotVar = this.zzl;
        zzv zzvVar = this.zzs;
        zzcml zzcmlVar = this.zzc;
        zzt(new AdOverlayInfoParcel(zzbcvVar, zzcmrVar, zzborVar, zzbotVar, zzvVar, zzcmlVar, z, i, str, zzcmlVar.zzt(), z3 ? null : this.zzm));
    }

    public final void zzs(boolean z, int i, String str, String str2, boolean z2) {
        boolean zzW = this.zzc.zzW();
        boolean zzR = zzR(zzW, this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbcv zzbcvVar = zzR ? null : this.zzg;
        zzcmr zzcmrVar = zzW ? null : new zzcmr(this.zzc, this.zzh);
        zzbor zzborVar = this.zzk;
        zzbot zzbotVar = this.zzl;
        zzv zzvVar = this.zzs;
        zzcml zzcmlVar = this.zzc;
        zzt(new AdOverlayInfoParcel(zzbcvVar, zzcmrVar, zzborVar, zzbotVar, zzvVar, zzcmlVar, z, i, str, str2, zzcmlVar.zzt(), z3 ? null : this.zzm));
    }

    public final void zzt(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzbyj zzbyjVar = this.zzv;
        boolean zzd = zzbyjVar != null ? zzbyjVar.zzd() : false;
        zzt.zzb();
        zzm.zza(this.zzc.getContext(), adOverlayInfoParcel, !zzd);
        zzcdy zzcdyVar = this.zza;
        if (zzcdyVar != null) {
            String str = adOverlayInfoParcel.zzl;
            String str2 = str;
            if (str == null) {
                zzc zzcVar = adOverlayInfoParcel.zza;
                str2 = str;
                if (zzcVar != null) {
                    str2 = zzcVar.zzb;
                }
            }
            zzcdyVar.zzc(str2);
        }
    }

    public final void zzu(String str, zzbpr<? super zzcml> zzbprVar) {
        synchronized (this.zzf) {
            List<zzbpr<? super zzcml>> list = this.zze.get(str);
            List<zzbpr<? super zzcml>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.zze.put(str, list2);
            }
            list2.add(zzbprVar);
        }
    }

    public final void zzv(String str, zzbpr<? super zzcml> zzbprVar) {
        synchronized (this.zzf) {
            List<zzbpr<? super zzcml>> list = this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbprVar);
        }
    }

    public final void zzw(String str, Predicate<zzbpr<? super zzcml>> predicate) {
        synchronized (this.zzf) {
            List<zzbpr<? super zzcml>> list = this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbpr<? super zzcml> zzbprVar : list) {
                if (predicate.apply(zzbprVar)) {
                    arrayList.add(zzbprVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final void zzx() {
        zzcdy zzcdyVar = this.zza;
        if (zzcdyVar != null) {
            zzcdyVar.zzg();
            this.zza = null;
        }
        zzN();
        synchronized (this.zzf) {
            this.zze.clear();
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
            this.zzj = null;
            this.zzk = null;
            this.zzl = null;
            this.zzn = false;
            this.zzp = false;
            this.zzq = false;
            this.zzs = null;
            this.zzu = null;
            this.zzt = null;
            zzbyj zzbyjVar = this.zzv;
            if (zzbyjVar != null) {
                zzbyjVar.zzb(true);
                this.zzv = null;
            }
            this.zzw = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzy(zzcnx zzcnxVar) {
        this.zzi = zzcnxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final void zzz(zzcny zzcnyVar) {
        this.zzj = zzcnyVar;
    }
}
