package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
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
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import me.zhanghai.android.materialprogressbar.C3681R;
import p163m0.C3589v;
import p163m0.C3611y;
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcow.class */
public class zzcow extends WebViewClient implements zzcqc {
    public static final /* synthetic */ int zzb = 0;
    private boolean zzA;
    private View.OnAttachStateChangeListener zzC;
    public zzcgf zza;
    private final zzcop zzc;
    private final zzbay zzd;
    private zzbes zzg;
    private zzo zzh;
    private zzcqa zzi;
    private zzcqb zzj;
    private zzbqt zzk;
    private zzbqv zzl;
    private zzdmd zzm;
    private boolean zzn;
    private boolean zzo;
    @GuardedBy("lock")
    private boolean zzp;
    @GuardedBy("lock")
    private boolean zzq;
    @GuardedBy("lock")
    private boolean zzr;
    private zzw zzs;
    private zzcap zzt;
    private zzb zzu;
    private zzfjs zzw;
    private boolean zzx;
    private boolean zzy;
    private int zzz;
    private final HashMap<String, List<zzbrt<? super zzcop>>> zze = new HashMap<>();
    private final Object zzf = new Object();
    private zzcak zzv = null;
    private final HashSet<String> zzB = new HashSet<>(Arrays.asList(((String) zzbgq.zzc().zzb(zzblj.zzeb)).split(",")));

    public zzcow(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        zzcap zzcapVar = new zzcap(zzcopVar, zzcopVar.zzG(), new zzbkt(zzcopVar.getContext()));
        this.zzd = zzbayVar;
        this.zzc = zzcopVar;
        this.zzp = z;
        this.zzt = zzcapVar;
    }

    private static WebResourceResponse zzM() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzay)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0194, code lost:
        com.google.android.gms.ads.internal.zzt.zzp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0198, code lost:
        r0 = com.google.android.gms.ads.internal.util.zzt.zzT(r0);
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01a2, code lost:
        return r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zzN(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcow.zzN(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final void zzO(Map<String, String> map, List<zzbrt<? super zzcop>> list, String str) {
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
        for (zzbrt<? super zzcop> zzbrtVar : list) {
            zzbrtVar.zza(this.zzc, map);
        }
    }

    private final void zzP() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzC;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    public final void zzQ(final View view, final zzcgf zzcgfVar, final int i) {
        if (!zzcgfVar.zzi() || i <= 0) {
            return;
        }
        zzcgfVar.zzg(view);
        if (!zzcgfVar.zzi()) {
            return;
        }
        zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcor
            @Override // java.lang.Runnable
            public final void run() {
                zzcow.this.zzn(view, zzcgfVar, i);
            }
        }, 100L);
    }

    private static final boolean zzR(boolean z, zzcop zzcopVar) {
        return z && !zzcopVar.zzQ().zzi() && !zzcopVar.zzU().equals("interstitial_mb");
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        zzbes zzbesVar = this.zzg;
        if (zzbesVar != null) {
            zzbesVar.onAdClicked();
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
        zzi(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            if (this.zzc.zzaB()) {
                zze.zza("Blank page loaded, 1...");
                this.zzc.zzW();
                return;
            }
            this.zzx = true;
            zzcqb zzcqbVar = this.zzj;
            if (zzcqbVar != null) {
                zzcqbVar.zza();
                this.zzj = null;
            }
            zzg();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzc.zzaA(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingStart /* 85 */:
            case C3681R.styleable.AppCompatTheme_panelBackground /* 86 */:
            case C3681R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
            case C3681R.styleable.AppCompatTheme_panelMenuListWidth /* 88 */:
            case C3681R.styleable.AppCompatTheme_popupMenuStyle /* 89 */:
            case C3681R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
            case C3681R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                return true;
            default:
                switch (keyCode) {
                    case C3681R.styleable.AppCompatTheme_windowNoTitle /* 126 */:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
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
            zzi(parse);
            return true;
        }
        if (this.zzn && webView == this.zzc.zzI()) {
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zzbes zzbesVar = this.zzg;
                if (zzbesVar != null) {
                    zzbesVar.onAdClicked();
                    zzcgf zzcgfVar = this.zza;
                    if (zzcgfVar != null) {
                        zzcgfVar.zzh(str);
                    }
                    this.zzg = null;
                }
                zzdmd zzdmdVar = this.zzm;
                if (zzdmdVar != null) {
                    zzdmdVar.zzq();
                    this.zzm = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (this.zzc.zzI().willNotDraw()) {
            String valueOf2 = String.valueOf(str);
            zzciz.zzj(valueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf2) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        try {
            zzalt zzK = this.zzc.zzK();
            uri = parse;
            if (zzK != null) {
                uri = parse;
                if (zzK.zzf(parse)) {
                    Context context = this.zzc.getContext();
                    zzcop zzcopVar = this.zzc;
                    uri = zzK.zza(parse, context, (View) zzcopVar, zzcopVar.zzk());
                }
            }
        } catch (zzalu e) {
            String valueOf3 = String.valueOf(str);
            zzciz.zzj(valueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf3) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        zzb zzbVar = this.zzu;
        if (zzbVar == null || zzbVar.zzc()) {
            zzr(new zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null, null), true);
            return true;
        }
        this.zzu.zzb(str);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzA(int i, int i2) {
        zzcak zzcakVar = this.zzv;
        if (zzcakVar != null) {
            zzcakVar.zzd(i, i2);
        }
    }

    public final void zzB(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzC(boolean z) {
        synchronized (this.zzf) {
            this.zzr = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzD() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzp = true;
            zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcow.this.zzm();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzE(boolean z) {
        synchronized (this.zzf) {
            this.zzq = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzF(zzcqb zzcqbVar) {
        this.zzj = zzcqbVar;
    }

    public final void zzG(String str, zzbrt<? super zzcop> zzbrtVar) {
        synchronized (this.zzf) {
            List<zzbrt<? super zzcop>> list = this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbrtVar);
        }
    }

    public final void zzH(String str, Predicate<zzbrt<? super zzcop>> predicate) {
        synchronized (this.zzf) {
            List<zzbrt<? super zzcop>> list = this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbrt<? super zzcop> zzbrtVar : list) {
                if (predicate.apply(zzbrtVar)) {
                    arrayList.add(zzbrtVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final boolean zzI() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzr;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final boolean zzJ() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzp;
        }
        return z;
    }

    public final boolean zzK() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzq;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzL(zzbes zzbesVar, zzbqt zzbqtVar, zzo zzoVar, zzbqv zzbqvVar, zzw zzwVar, boolean z, zzbrw zzbrwVar, zzb zzbVar, zzcar zzcarVar, zzcgf zzcgfVar, final zzehh zzehhVar, final zzfjs zzfjsVar, zzdyz zzdyzVar, zzfio zzfioVar, zzbru zzbruVar, final zzdmd zzdmdVar) {
        if (zzbVar == null) {
            zzbVar = new zzb(this.zzc.getContext(), zzcgfVar, null);
        }
        this.zzv = new zzcak(this.zzc, zzcarVar);
        this.zza = zzcgfVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaF)).booleanValue()) {
            zzx("/adMetadata", new zzbqs(zzbqtVar));
        }
        if (zzbqvVar != null) {
            zzx("/appEvent", new zzbqu(zzbqvVar));
        }
        zzx("/backButton", zzbrs.zzj);
        zzx("/refresh", zzbrs.zzk);
        zzx("/canOpenApp", zzbrs.zzb);
        zzx("/canOpenURLs", zzbrs.zza);
        zzx("/canOpenIntents", zzbrs.zzc);
        zzx("/close", zzbrs.zzd);
        zzx("/customClose", zzbrs.zze);
        zzx("/instrument", zzbrs.zzn);
        zzx("/delayPageLoaded", zzbrs.zzp);
        zzx("/delayPageClosed", zzbrs.zzq);
        zzx("/getLocationInfo", zzbrs.zzr);
        zzx("/log", zzbrs.zzg);
        zzx("/mraid", new zzbsa(zzbVar, this.zzv, zzcarVar));
        zzcap zzcapVar = this.zzt;
        if (zzcapVar != null) {
            zzx("/mraidLoaded", zzcapVar);
        }
        zzx("/open", new zzbse(zzbVar, this.zzv, zzehhVar, zzdyzVar, zzfioVar));
        zzx("/precache", new zzcng());
        zzx("/touch", zzbrs.zzi);
        zzx("/video", zzbrs.zzl);
        zzx("/videoMeta", zzbrs.zzm);
        if (zzehhVar == null || zzfjsVar == null) {
            zzx("/click", zzbrs.zza(zzdmdVar));
            zzx("/httpTrack", zzbrs.zzf);
        } else {
            zzx("/click", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzfel
                @Override // com.google.android.gms.internal.ads.zzbrt
                public final void zza(Object obj, Map map) {
                    zzdmd zzdmdVar2 = zzdmd.this;
                    zzfjs zzfjsVar2 = zzfjsVar;
                    zzehh zzehhVar2 = zzehhVar;
                    zzcop zzcopVar = (zzcop) obj;
                    zzbrs.zzd(map, zzdmdVar2);
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzciz.zzj("URL missing from click GMSG.");
                    } else {
                        zzfwq.zzr(zzbrs.zzb(zzcopVar, str), new zzfen(zzcopVar, zzfjsVar2, zzehhVar2), zzcjm.zza);
                    }
                }
            });
            zzx("/httpTrack", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzfem
                @Override // com.google.android.gms.internal.ads.zzbrt
                public final void zza(Object obj, Map map) {
                    zzfjs zzfjsVar2 = zzfjs.this;
                    zzehh zzehhVar2 = zzehhVar;
                    zzcog zzcogVar = (zzcog) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzciz.zzj("URL missing from httpTrack GMSG.");
                    } else if (!zzcogVar.zzF().zzag) {
                        zzfjsVar2.zzb(str);
                    } else {
                        zzehhVar2.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzA().currentTimeMillis(), ((zzcpm) zzcogVar).zzR().zzb, str, 2));
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzu(this.zzc.getContext())) {
            zzx("/logScionEvent", new zzbrz(this.zzc.getContext()));
        }
        if (zzbrwVar != null) {
            zzx("/setInterstitialProperties", new zzbrv(zzbrwVar, null));
        }
        if (zzbruVar != null) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue()) {
                zzx("/inspectorNetworkExtras", zzbruVar);
            }
        }
        this.zzg = zzbesVar;
        this.zzh = zzoVar;
        this.zzk = zzbqtVar;
        this.zzl = zzbqvVar;
        this.zzs = zzwVar;
        this.zzu = zzbVar;
        this.zzm = zzdmdVar;
        this.zzn = z;
        this.zzw = zzfjsVar;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final WebResourceResponse zzc(String str, Map<String, String> map) {
        zzbah zzb2;
        try {
            if (zzbmy.zza.zze().booleanValue() && this.zzw != null && "oda".equals(Uri.parse(str).getScheme())) {
                this.zzw.zzb(str);
                return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
            }
            String zzc = zzchj.zzc(str, this.zzc.getContext(), this.zzA);
            if (!zzc.equals(str)) {
                return zzN(zzc, map);
            }
            zzbak zza = zzbak.zza(Uri.parse(str));
            if (zza != null && (zzb2 = com.google.android.gms.ads.internal.zzt.zzc().zzb(zza)) != null && zzb2.zze()) {
                return new WebResourceResponse("", "", zzb2.zzc());
            }
            if (zzciy.zzl() && zzbmu.zzb.zze().booleanValue()) {
                return zzN(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzs(e, "AdWebViewClient.interceptRequest");
            return zzM();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final zzb zzd() {
        return this.zzu;
    }

    public final void zzg() {
        if (this.zzi != null && ((this.zzx && this.zzz <= 0) || this.zzy || this.zzo)) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() && this.zzc.zzo() != null) {
                zzblq.zza(this.zzc.zzo().zza(), this.zzc.zzn(), "awfllc");
            }
            zzcqa zzcqaVar = this.zzi;
            boolean z = false;
            if (!this.zzy) {
                z = false;
                if (!this.zzo) {
                    z = true;
                }
            }
            zzcqaVar.zza(z);
            this.zzi = null;
        }
        this.zzc.zzae();
    }

    public final void zzh(boolean z) {
        this.zzA = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzi(Uri uri) {
        String path = uri.getPath();
        List<zzbrt<? super zzcop>> list = this.zze.get(path);
        if (path == null || list == null) {
            zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfh)).booleanValue() || com.google.android.gms.ads.internal.zzt.zzo().zzf() == null) {
                return;
            }
            final String substring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcos
                @Override // java.lang.Runnable
                public final void run() {
                    String str = substring;
                    int i = zzcow.zzb;
                    com.google.android.gms.ads.internal.zzt.zzo().zzf().zze(str);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzea)).booleanValue() && this.zzB.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) zzbgq.zzc().zzb(zzblj.zzec)).intValue()) {
                zze.zza(path.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(path) : new String("Parsing gmsg query params on BG thread: "));
                zzfwq.zzr(com.google.android.gms.ads.internal.zzt.zzp().zzb(uri), new zzcou(this, list, path, uri), zzcjm.zze);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        zzO(zzt.zzS(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzj() {
        zzbay zzbayVar = this.zzd;
        if (zzbayVar != null) {
            zzbayVar.zzc(10005);
        }
        this.zzy = true;
        zzg();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzk() {
        synchronized (this.zzf) {
        }
        this.zzz++;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzl() {
        this.zzz--;
        zzg();
    }

    public final /* synthetic */ void zzm() {
        this.zzc.zzac();
        zzl zzN = this.zzc.zzN();
        if (zzN != null) {
            zzN.zzx();
        }
    }

    public final /* synthetic */ void zzn(View view, zzcgf zzcgfVar, int i) {
        zzQ(view, zzcgfVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzo(int i, int i2, boolean z) {
        zzcap zzcapVar = this.zzt;
        if (zzcapVar != null) {
            zzcapVar.zzb(i, i2);
        }
        zzcak zzcakVar = this.zzv;
        if (zzcakVar != null) {
            zzcakVar.zzc(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzp() {
        zzcgf zzcgfVar = this.zza;
        if (zzcgfVar != null) {
            WebView zzI = this.zzc.zzI();
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2059b(zzI)) {
                zzQ(zzI, zzcgfVar, 10);
                return;
            }
            zzP();
            zzcot zzcotVar = new zzcot(this, zzcgfVar);
            this.zzC = zzcotVar;
            ((View) this.zzc).addOnAttachStateChangeListener(zzcotVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzdmd zzdmdVar = this.zzm;
        if (zzdmdVar != null) {
            zzdmdVar.zzq();
        }
    }

    public final void zzr(zzc zzcVar, boolean z) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzR = zzR(zzaC, this.zzc);
        boolean z2 = true;
        if (!zzR) {
            z2 = !z;
        }
        zzu(new AdOverlayInfoParcel(zzcVar, zzR ? null : this.zzg, zzaC ? null : this.zzh, this.zzs, this.zzc.zzp(), this.zzc, z2 ? null : this.zzm));
    }

    public final void zzs(zzbv zzbvVar, zzehh zzehhVar, zzdyz zzdyzVar, zzfio zzfioVar, String str, String str2, int i) {
        zzcop zzcopVar = this.zzc;
        zzu(new AdOverlayInfoParcel(zzcopVar, zzcopVar.zzp(), zzbvVar, zzehhVar, zzdyzVar, zzfioVar, str, str2, i));
    }

    public final void zzt(boolean z, int i, boolean z2) {
        boolean zzR = zzR(this.zzc.zzaC(), this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbes zzbesVar = zzR ? null : this.zzg;
        zzo zzoVar = this.zzh;
        zzw zzwVar = this.zzs;
        zzcop zzcopVar = this.zzc;
        zzu(new AdOverlayInfoParcel(zzbesVar, zzoVar, zzwVar, zzcopVar, z, i, zzcopVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzu(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzcak zzcakVar = this.zzv;
        boolean zze = zzcakVar != null ? zzcakVar.zze() : false;
        com.google.android.gms.ads.internal.zzt.zzj();
        zzm.zza(this.zzc.getContext(), adOverlayInfoParcel, !zze);
        zzcgf zzcgfVar = this.zza;
        if (zzcgfVar != null) {
            String str = adOverlayInfoParcel.zzl;
            String str2 = str;
            if (str == null) {
                zzc zzcVar = adOverlayInfoParcel.zza;
                str2 = str;
                if (zzcVar != null) {
                    str2 = zzcVar.zzb;
                }
            }
            zzcgfVar.zzh(str2);
        }
    }

    public final void zzv(boolean z, int i, String str, boolean z2) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzR = zzR(zzaC, this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbes zzbesVar = zzR ? null : this.zzg;
        zzcov zzcovVar = zzaC ? null : new zzcov(this.zzc, this.zzh);
        zzbqt zzbqtVar = this.zzk;
        zzbqv zzbqvVar = this.zzl;
        zzw zzwVar = this.zzs;
        zzcop zzcopVar = this.zzc;
        zzu(new AdOverlayInfoParcel(zzbesVar, zzcovVar, zzbqtVar, zzbqvVar, zzwVar, zzcopVar, z, i, str, zzcopVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzw(boolean z, int i, String str, String str2, boolean z2) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzR = zzR(zzaC, this.zzc);
        boolean z3 = true;
        if (!zzR) {
            z3 = !z2;
        }
        zzbes zzbesVar = zzR ? null : this.zzg;
        zzcov zzcovVar = zzaC ? null : new zzcov(this.zzc, this.zzh);
        zzbqt zzbqtVar = this.zzk;
        zzbqv zzbqvVar = this.zzl;
        zzw zzwVar = this.zzs;
        zzcop zzcopVar = this.zzc;
        zzu(new AdOverlayInfoParcel(zzbesVar, zzcovVar, zzbqtVar, zzbqvVar, zzwVar, zzcopVar, z, i, str, str2, zzcopVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzx(String str, zzbrt<? super zzcop> zzbrtVar) {
        synchronized (this.zzf) {
            List<zzbrt<? super zzcop>> list = this.zze.get(str);
            List<zzbrt<? super zzcop>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.zze.put(str, list2);
            }
            list2.add(zzbrtVar);
        }
    }

    public final void zzy() {
        zzcgf zzcgfVar = this.zza;
        if (zzcgfVar != null) {
            zzcgfVar.zze();
            this.zza = null;
        }
        zzP();
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
            zzcak zzcakVar = this.zzv;
            if (zzcakVar != null) {
                zzcakVar.zza(true);
                this.zzv = null;
            }
            this.zzw = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqc
    public final void zzz(zzcqa zzcqaVar) {
        this.zzi = zzcqaVar;
    }
}
