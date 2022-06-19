package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.device.ads.DTBAdActivity;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzcl;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcne.class */
public final class zzcne extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcml {
    public static final /* synthetic */ int zza = 0;
    private boolean zzA;
    private boolean zzB;
    private zzblt zzC;
    private zzblq zzD;
    private zzaxq zzE;
    private int zzF;
    private int zzG;
    private zzbjx zzH;
    private final zzbjx zzI;
    private zzbjx zzJ;
    private final zzbjy zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private zzl zzO;
    private boolean zzP;
    private final zzcl zzQ;
    private Map<String, zzcla> zzV;
    private final WindowManager zzW;
    private final zzazb zzX;
    private final zzcoa zzb;
    private final zzaas zzc;
    private final zzbkk zzd;
    private final zzcgz zze;
    private com.google.android.gms.ads.internal.zzl zzf;
    private final zza zzg;
    private final DisplayMetrics zzh;
    private final float zzi;
    private zzezz zzj;
    private zzfac zzk;
    private zzcms zzn;
    private zzl zzo;
    private IObjectWrapper zzp;
    private zzcob zzq;
    private final String zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private Boolean zzw;
    private zzcnh zzz;
    private boolean zzl = false;
    private boolean zzm = false;
    private boolean zzx = true;
    private final String zzy = "";
    private int zzR = -1;
    private int zzS = -1;
    private int zzT = -1;
    private int zzU = -1;

    @VisibleForTesting
    public zzcne(zzcoa zzcoaVar, zzcob zzcobVar, String str, boolean z, boolean z2, zzaas zzaasVar, zzbkk zzbkkVar, zzcgz zzcgzVar, zzbka zzbkaVar, com.google.android.gms.ads.internal.zzl zzlVar, zza zzaVar, zzazb zzazbVar, zzezz zzezzVar, zzfac zzfacVar) {
        super(zzcoaVar);
        zzfac zzfacVar2;
        this.zzb = zzcoaVar;
        this.zzq = zzcobVar;
        this.zzr = str;
        this.zzu = z;
        this.zzc = zzaasVar;
        this.zzd = zzbkkVar;
        this.zze = zzcgzVar;
        this.zzf = zzlVar;
        this.zzg = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzW = windowManager;
        zzt.zzc();
        DisplayMetrics zzy = zzs.zzy(windowManager);
        this.zzh = zzy;
        this.zzi = zzy.density;
        this.zzX = zzazbVar;
        this.zzj = zzezzVar;
        this.zzk = zzfacVar;
        this.zzQ = new zzcl(zzcoaVar.zza(), this, this, null);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzcgt.zzg("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMixedContentMode(2);
        settings.setUserAgentString(zzt.zzc().zzi(zzcoaVar, zzcgzVar.zza));
        zzt.zze().zza(getContext(), settings);
        setDownloadListener(this);
        zzaX();
        addJavascriptInterface(new zzcnm(this, new zzcnl(this) { // from class: com.google.android.gms.internal.ads.zzcnj
            private final zzcml zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcnl
            public final void zza(Uri uri) {
                zzcms zzaS = ((zzcne) this.zza).zzaS();
                if (zzaS == null) {
                    zzcgt.zzf("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    zzaS.zzF(uri);
                }
            }
        }), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbc();
        zzbjy zzbjyVar = new zzbjy(new zzbka(true, "make_wv", this.zzr));
        this.zzK = zzbjyVar;
        zzbjyVar.zzc().zza(null);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() && (zzfacVar2 = this.zzk) != null && zzfacVar2.zzb != null) {
            zzbjyVar.zzc().zzd("gqi", this.zzk.zzb);
        }
        zzbjyVar.zzc();
        zzbjx zzf = zzbka.zzf();
        this.zzI = zzf;
        zzbjyVar.zza("native:view_create", zzf);
        this.zzJ = null;
        this.zzH = null;
        zzt.zze().zzc(zzcoaVar);
        zzt.zzg().zzm();
    }

    private final void zzaU(String str) {
        synchronized (this) {
            try {
                super.loadUrl("about:blank");
            } catch (Throwable th) {
                zzt.zzg().zzk(th, "AdWebViewImpl.loadUrlUnsafe");
                zzcgt.zzj("Could not call loadUrl in destroy(). ", th);
            }
        }
    }

    private final void zzaV() {
        synchronized (this) {
            Boolean zzg = zzt.zzg().zzg();
            this.zzw = zzg;
            if (zzg == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zzaQ(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    zzaQ(Boolean.FALSE);
                }
            }
        }
    }

    private final void zzaW() {
        zzbjs.zza(this.zzK.zzc(), this.zzI, "aeh2");
    }

    private final void zzaX() {
        synchronized (this) {
            zzezz zzezzVar = this.zzj;
            if (zzezzVar != null && zzezzVar.zzaj) {
                zzcgt.zzd("Disabling hardware acceleration on an overlay.");
                zzaY();
                return;
            }
            if (!this.zzu && !this.zzq.zzg()) {
                zzcgt.zzd("Enabling hardware acceleration on an AdView.");
                zzaZ();
                return;
            }
            zzcgt.zzd("Enabling hardware acceleration on an overlay.");
            zzaZ();
        }
    }

    private final void zzaY() {
        synchronized (this) {
            if (!this.zzv) {
                setLayerType(1, null);
            }
            this.zzv = true;
        }
    }

    private final void zzaZ() {
        synchronized (this) {
            if (this.zzv) {
                setLayerType(0, null);
            }
            this.zzv = false;
        }
    }

    private final void zzba() {
        synchronized (this) {
            if (!this.zzP) {
                this.zzP = true;
                zzt.zzg().zzn();
            }
        }
    }

    private final void zzbb() {
        synchronized (this) {
            Map<String, zzcla> map = this.zzV;
            if (map != null) {
                for (zzcla zzclaVar : map.values()) {
                    zzclaVar.release();
                }
            }
            this.zzV = null;
        }
    }

    private final void zzbc() {
        zzbjy zzbjyVar = this.zzK;
        if (zzbjyVar == null) {
            return;
        }
        zzbka zzc = zzbjyVar.zzc();
        zzbjq zze = zzt.zzg().zze();
        if (zze == null) {
            return;
        }
        zze.zzb(zzc);
    }

    private final void zzbd(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        zze("onAdVisibilityChanged", hashMap);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void destroy() {
        synchronized (this) {
            zzbc();
            this.zzQ.zzc();
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzb();
                this.zzo.zzq();
                this.zzo = null;
            }
            this.zzp = null;
            this.zzn.zzx();
            this.zzE = null;
            this.zzf = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.zzt) {
                return;
            }
            zzt.zzy().zza(this);
            zzbb();
            this.zzt = true;
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhc)).booleanValue()) {
                zze.zza("Destroying the WebView immediately...");
                zzY();
                return;
            }
            zze.zza("Initiating WebView self destruct sequence in 3...");
            zze.zza("Loading blank page in WebView, 2...");
            zzaU("about:blank");
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!zzX()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            zzcgt.zzl("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback == null) {
                return;
            }
            valueCallback.onReceiveValue(null);
        }
    }

    public final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzt) {
                    this.zzn.zzx();
                    zzt.zzy().zza(this);
                    zzbb();
                    zzba();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!zzX()) {
                super.loadData(str, str2, str3);
            } else {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!zzX()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!zzX()) {
                super.loadUrl(str);
            } else {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        zzcms zzcmsVar = this.zzn;
        if (zzcmsVar != null) {
            zzcmsVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!zzX()) {
                this.zzQ.zzd();
            }
            boolean z = this.zzA;
            zzcms zzcmsVar = this.zzn;
            boolean z2 = z;
            if (zzcmsVar != null) {
                z2 = z;
                if (zzcmsVar.zze()) {
                    if (!this.zzB) {
                        this.zzn.zzg();
                        this.zzn.zzh();
                        this.zzB = true;
                    }
                    zzaM();
                    z2 = true;
                }
            }
            zzbd(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        zzcms zzcmsVar;
        synchronized (this) {
            if (!zzX()) {
                this.zzQ.zze();
            }
            super.onDetachedFromWindow();
            if (this.zzB && (zzcmsVar = this.zzn) != null && zzcmsVar.zze() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzn.zzg();
                this.zzn.zzh();
                this.zzB = false;
            }
        }
        zzbd(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzt.zzc();
            zzs.zzP(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzcgt.zzd(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (zzX()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zzaM = zzaM();
        zzl zzN = zzN();
        if (zzN == null || !zzaM) {
            return;
        }
        zzN.zzB();
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0282 A[Catch: all -> 0x0381, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:62:0x0173, B:64:0x0179, B:67:0x0182, B:70:0x018b, B:72:0x0195, B:75:0x01ac, B:87:0x01f7, B:89:0x0206, B:94:0x021a, B:96:0x0222, B:98:0x0233, B:101:0x0255, B:112:0x0282, B:114:0x0316, B:116:0x031c, B:118:0x0328, B:124:0x033d, B:126:0x0346, B:128:0x034c, B:130:0x0352, B:132:0x0362, B:135:0x0378), top: B:142:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x033d A[Catch: all -> 0x0381, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:62:0x0173, B:64:0x0179, B:67:0x0182, B:70:0x018b, B:72:0x0195, B:75:0x01ac, B:87:0x01f7, B:89:0x0206, B:94:0x021a, B:96:0x0222, B:98:0x0233, B:101:0x0255, B:112:0x0282, B:114:0x0316, B:116:0x031c, B:118:0x0328, B:124:0x033d, B:126:0x0346, B:128:0x034c, B:130:0x0352, B:132:0x0362, B:135:0x0378), top: B:142:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0233 A[Catch: all -> 0x0381, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:62:0x0173, B:64:0x0179, B:67:0x0182, B:70:0x018b, B:72:0x0195, B:75:0x01ac, B:87:0x01f7, B:89:0x0206, B:94:0x021a, B:96:0x0222, B:98:0x0233, B:101:0x0255, B:112:0x0282, B:114:0x0316, B:116:0x031c, B:118:0x0328, B:124:0x033d, B:126:0x0346, B:128:0x034c, B:130:0x0352, B:132:0x0362, B:135:0x0378), top: B:142:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcne.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void onPause() {
        if (zzX()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzcgt.zzg("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void onResume() {
        if (zzX()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzcgt.zzg("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzn.zze() || this.zzn.zzf()) {
            zzaas zzaasVar = this.zzc;
            if (zzaasVar != null) {
                zzaasVar.zzd(motionEvent);
            }
            zzbkk zzbkkVar = this.zzd;
            if (zzbkkVar != null) {
                zzbkkVar.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                zzblt zzbltVar = this.zzC;
                if (zzbltVar != null) {
                    zzbltVar.zzb(motionEvent);
                }
            }
        }
        if (zzX()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcml
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcms) {
            this.zzn = (zzcms) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzX()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzcgt.zzg("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzA() {
        synchronized (this) {
            zzblq zzblqVar = this.zzD;
            if (zzblqVar != null) {
                zzblqVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzB(int i) {
        this.zzM = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzC(int i) {
        this.zzN = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzD() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzE() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcmc
    public final zzezz zzF() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnw
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzI() {
        zzaW();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zze.zza);
        zze("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzJ(int i) {
        if (i == 0) {
            zzbjs.zza(this.zzK.zzc(), this.zzI, "aebb2");
        }
        zzaW();
        this.zzK.zzc();
        this.zzK.zzc().zzd("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zze.zza);
        zze("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzK() {
        if (this.zzH == null) {
            zzbjs.zza(this.zzK.zzc(), this.zzI, "aes2");
            this.zzK.zzc();
            zzbjx zzf = zzbka.zzf();
            this.zzH = zzf;
            this.zzK.zza("native:view_show", zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zze.zza);
        zze("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzL() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final Context zzM() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzl zzN() {
        zzl zzlVar;
        synchronized (this) {
            zzlVar = this.zzo;
        }
        return zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzl zzO() {
        zzl zzlVar;
        synchronized (this) {
            zzlVar = this.zzO;
        }
        return zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnt
    public final zzcob zzP() {
        zzcob zzcobVar;
        synchronized (this) {
            zzcobVar = this.zzq;
        }
        return zzcobVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final String zzQ() {
        String str;
        synchronized (this) {
            str = this.zzr;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final /* bridge */ /* synthetic */ zzcnz zzR() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final WebViewClient zzS() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzT() {
        boolean z;
        synchronized (this) {
            z = this.zzs;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnu
    public final zzaas zzU() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final IObjectWrapper zzV() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzp;
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzW() {
        boolean z;
        synchronized (this) {
            z = this.zzu;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzX() {
        boolean z;
        synchronized (this) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzY() {
        synchronized (this) {
            zze.zza("Destroying WebView!");
            zzba();
            zzs.zza.post(new zzcnd(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzZ() {
        boolean z;
        synchronized (this) {
            z = this.zzx;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zza(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaA() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcni
    public final zzfac zzaB() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaC(zzezz zzezzVar, zzfac zzfacVar) {
        this.zzj = zzezzVar;
        this.zzk = zzfacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaD(boolean z) {
        synchronized (this) {
            if (z) {
                setBackgroundColor(0);
            }
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzu(z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzfsm<String> zzaE() {
        zzbkk zzbkkVar = this.zzd;
        return zzbkkVar == null ? zzfsd.zza(null) : zzbkkVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaF(zzc zzcVar, boolean z) {
        this.zzn.zzo(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaG(boolean z, int i, boolean z2) {
        this.zzn.zzq(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaH(boolean z, int i, String str, boolean z2) {
        this.zzn.zzr(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaI(boolean z, int i, String str, String str2, boolean z2) {
        this.zzn.zzs(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaJ(zzbu zzbuVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar, String str, String str2, int i) {
        this.zzn.zzp(zzbuVar, zzedqVar, zzdviVar, zzffcVar, str, str2, i);
    }

    public final boolean zzaM() {
        int i;
        int i2;
        boolean z = false;
        if (this.zzn.zzd() || this.zzn.zze()) {
            zzber.zza();
            DisplayMetrics displayMetrics = this.zzh;
            int zzq = zzcgm.zzq(displayMetrics, displayMetrics.widthPixels);
            zzber.zza();
            DisplayMetrics displayMetrics2 = this.zzh;
            int zzq2 = zzcgm.zzq(displayMetrics2, displayMetrics2.heightPixels);
            Activity zza2 = this.zzb.zza();
            if (zza2 == null || zza2.getWindow() == null) {
                i2 = zzq;
                i = zzq2;
            } else {
                zzt.zzc();
                int[] zzT = zzs.zzT(zza2);
                zzber.zza();
                i2 = zzcgm.zzq(this.zzh, zzT[0]);
                zzber.zza();
                i = zzcgm.zzq(this.zzh, zzT[1]);
            }
            int i3 = this.zzS;
            if (i3 == zzq && this.zzR == zzq2 && this.zzT == i2 && this.zzU == i) {
                return false;
            }
            if (i3 != zzq || this.zzR != zzq2) {
                z = true;
            }
            this.zzS = zzq;
            this.zzR = zzq2;
            this.zzT = i2;
            this.zzU = i;
            new zzbyp(this, "").zzk(zzq, zzq2, i2, i, this.zzh.density, this.zzW.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    public final void zzaN(String str) {
        synchronized (this) {
            if (!zzX()) {
                loadUrl(str);
            } else {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    public final void zzaO(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!zzX()) {
                evaluateJavascript(str, null);
            } else {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    public final void zzaP(String str) {
        if (zzaR() == null) {
            zzaV();
        }
        if (zzaR().booleanValue()) {
            zzaO(str, null);
        } else {
            zzaN(str.length() != 0 ? "javascript:".concat(str) : new String("javascript:"));
        }
    }

    @VisibleForTesting
    public final void zzaQ(Boolean bool) {
        synchronized (this) {
            this.zzw = bool;
        }
        zzt.zzg().zzf(bool);
    }

    @VisibleForTesting
    public final Boolean zzaR() {
        Boolean bool;
        synchronized (this) {
            bool = this.zzw;
        }
        return bool;
    }

    public final zzcms zzaS() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaa() {
        boolean z;
        synchronized (this) {
            z = this.zzF > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzab(String str, zzbpr<? super zzcml> zzbprVar) {
        zzcms zzcmsVar = this.zzn;
        if (zzcmsVar != null) {
            zzcmsVar.zzu(str, zzbprVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzac(String str, zzbpr<? super zzcml> zzbprVar) {
        zzcms zzcmsVar = this.zzn;
        if (zzcmsVar != null) {
            zzcmsVar.zzv(str, zzbprVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzad(String str, Predicate<zzbpr<? super zzcml>> predicate) {
        zzcms zzcmsVar = this.zzn;
        if (zzcmsVar != null) {
            zzcmsVar.zzw(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzae(zzl zzlVar) {
        synchronized (this) {
            this.zzo = zzlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaf(zzcob zzcobVar) {
        synchronized (this) {
            this.zzq = zzcobVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzag(boolean z) {
        synchronized (this) {
            boolean z2 = this.zzu;
            this.zzu = z;
            zzaX();
            if (z != z2) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzL)).booleanValue() || !this.zzq.zzg()) {
                    new zzbyp(this, "").zzj(true != z ? "default" : DTBAdActivity.EXPANDED);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzah() {
        this.zzQ.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzai(Context context) {
        this.zzb.setBaseContext(context);
        this.zzQ.zza(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaj(boolean z) {
        synchronized (this) {
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzt(this.zzn.zzd(), z);
            } else {
                this.zzs = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzak(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzp = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzal(int i) {
        synchronized (this) {
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzw(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzam(zzl zzlVar) {
        synchronized (this) {
            this.zzO = zzlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzan(boolean z) {
        synchronized (this) {
            this.zzx = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzao() {
        if (this.zzJ == null) {
            this.zzK.zzc();
            zzbjx zzf = zzbka.zzf();
            this.zzJ = zzf;
            this.zzK.zza("native:view_load", zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzap(zzblt zzbltVar) {
        synchronized (this) {
            this.zzC = zzbltVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzblt zzaq() {
        zzblt zzbltVar;
        synchronized (this) {
            zzbltVar = this.zzC;
        }
        return zzbltVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzar(boolean z) {
        zzl zzlVar;
        synchronized (this) {
            int i = this.zzF;
            int i2 = 1;
            if (true != z) {
                i2 = -1;
            }
            int i3 = i + i2;
            this.zzF = i3;
            if (i3 > 0 || (zzlVar = this.zzo) == null) {
                return;
            }
            zzlVar.zzE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzas() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzat(String str, String str2, String str3) {
        String str4;
        synchronized (this) {
            if (zzX()) {
                zzcgt.zzi("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            String str5 = (String) zzbet.zzc().zzc(zzbjl.zzK);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str5);
                jSONObject.put(AnalyticsConstants.SDK, "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e) {
                zzcgt.zzj("Unable to build MRAID_ENV", e);
                str4 = null;
            }
            super.loadDataWithBaseURL(str, zzcns.zza(str2, str4), "text/html", StringConstant.UTF8, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzau() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzav(boolean z) {
        this.zzn.zzD(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaw(zzblq zzblqVar) {
        synchronized (this) {
            this.zzD = zzblqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzax(zzaxq zzaxqVar) {
        synchronized (this) {
            this.zzE = zzaxqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzaxq zzay() {
        zzaxq zzaxqVar;
        synchronized (this) {
            zzaxqVar = this.zzE;
        }
        return zzaxqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaz(boolean z, int i) {
        destroy();
        this.zzX.zzb(new zzaza(z, i) { // from class: com.google.android.gms.internal.ads.zzcnb
            private final boolean zza;
            private final int zzb;

            {
                this.zza = z;
                this.zzb = i;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                boolean z2 = this.zza;
                int i2 = this.zzb;
                int i3 = zzcne.zza;
                zzbct zzc = zzbcu.zzc();
                if (zzc.zza() != z2) {
                    zzc.zzb(z2);
                }
                zzc.zzc(i2);
                zzbaoVar.zzj(zzc.zzah());
            }
        });
        this.zzX.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzcms zzcmsVar = this.zzn;
        if (zzcmsVar != null) {
            zzcmsVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzbl(String str, String str2) {
        zzaP(C22128a.m8606k(new StringBuilder(str.length() + 3 + String.valueOf(str2).length()), str, "(", str2, ");"));
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbm() {
        synchronized (this) {
            com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
            if (zzlVar != null) {
                zzlVar.zzbm();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbn() {
        synchronized (this) {
            com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
            if (zzlVar != null) {
                zzlVar.zzbn();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        boolean z;
        synchronized (this) {
            z = zzawcVar.zzj;
            this.zzA = z;
        }
        zzbd(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzd(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        StringBuilder m8688M = C22128a.m8688M("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject2.toString(), ");");
        String sb = m8688M.toString();
        zzcgt.zzd(sb.length() != 0 ? "Dispatching AFMA event: ".concat(sb) : new String("Dispatching AFMA event: "));
        zzaP(m8688M.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zze(String str, Map<String, ?> map) {
        try {
            zzd(str, zzt.zzc().zzj(map));
        } catch (JSONException e) {
            zzcgt.zzi("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzciq zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzg(boolean z) {
        this.zzn.zzB(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zzcnh zzh() {
        zzcnh zzcnhVar;
        synchronized (this) {
            zzcnhVar = this.zzz;
        }
        return zzcnhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzbjx zzi() {
        return this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnn, com.google.android.gms.internal.ads.zzcjb
    public final Activity zzj() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zza zzk() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzl() {
        zzl zzN = zzN();
        if (zzN != null) {
            zzN.zzD();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final String zzm() {
        String str;
        synchronized (this) {
            str = this.zzy;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final String zzn() {
        synchronized (this) {
            zzfac zzfacVar = this.zzk;
            if (zzfacVar != null) {
                return zzfacVar.zzb;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzo(int i) {
        synchronized (this) {
            this.zzL = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzp() {
        int i;
        synchronized (this) {
            i = this.zzL;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zzbjy zzq() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzr(String str, JSONObject jSONObject) {
        zzbl(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzcla zzs(String str) {
        synchronized (this) {
            Map<String, zzcla> map = this.zzV;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnv, com.google.android.gms.internal.ads.zzcjb
    public final zzcgz zzt() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final void zzu(String str, zzcla zzclaVar) {
        synchronized (this) {
            if (this.zzV == null) {
                this.zzV = new HashMap();
            }
            this.zzV.put(str, zzclaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzv(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(AnalyticsConstants.SUCCESS, true != z ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        hashMap.put(VastIconXmlManager.DURATION, Long.toString(j));
        zze("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzw(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final void zzx(zzcnh zzcnhVar) {
        synchronized (this) {
            if (this.zzz != null) {
                zzcgt.zzf("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.zzz = zzcnhVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzy() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzz() {
        return getMeasuredWidth();
    }
}
