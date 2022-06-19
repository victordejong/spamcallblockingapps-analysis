package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
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
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zzcm;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.C0033h;
@VisibleForTesting
@ParametersAreNonnullByDefault
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpi.class */
public final class zzcpi extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcop {
    public static final /* synthetic */ int zza = 0;
    @GuardedBy("this")
    private boolean zzA;
    @GuardedBy("this")
    private boolean zzB;
    @GuardedBy("this")
    private zzbnv zzC;
    @GuardedBy("this")
    private zzbnt zzD;
    @GuardedBy("this")
    private zzazn zzE;
    @GuardedBy("this")
    private int zzF;
    @GuardedBy("this")
    private int zzG;
    private zzblv zzH;
    private final zzblv zzI;
    private zzblv zzJ;
    private final zzblw zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    @GuardedBy("this")
    private zzl zzO;
    @GuardedBy("this")
    private boolean zzP;
    private final zzcm zzQ;
    private Map<String, zzcnf> zzV;
    private final WindowManager zzW;
    private final zzbay zzX;
    private final zzcqd zzb;
    private final zzalt zzc;
    private final zzbmi zzd;
    private final zzcjf zze;
    private com.google.android.gms.ads.internal.zzl zzf;
    private final zza zzg;
    private final DisplayMetrics zzh;
    private final float zzi;
    private zzfdn zzj;
    private zzfdq zzk;
    private zzcow zzn;
    @GuardedBy("this")
    private zzl zzo;
    @GuardedBy("this")
    private IObjectWrapper zzp;
    @GuardedBy("this")
    private zzcqe zzq;
    @GuardedBy("this")
    private final String zzr;
    @GuardedBy("this")
    private boolean zzs;
    @GuardedBy("this")
    private boolean zzt;
    @GuardedBy("this")
    private boolean zzu;
    @GuardedBy("this")
    private boolean zzv;
    @GuardedBy("this")
    private Boolean zzw;
    @GuardedBy("this")
    private zzcpl zzz;
    private boolean zzl = false;
    private boolean zzm = false;
    @GuardedBy("this")
    private boolean zzx = true;
    @GuardedBy("this")
    private final String zzy = "";
    private int zzR = -1;
    private int zzS = -1;
    private int zzT = -1;
    private int zzU = -1;

    @VisibleForTesting
    public zzcpi(zzcqd zzcqdVar, zzcqe zzcqeVar, String str, boolean z, boolean z2, zzalt zzaltVar, zzbmi zzbmiVar, zzcjf zzcjfVar, zzbly zzblyVar, com.google.android.gms.ads.internal.zzl zzlVar, zza zzaVar, zzbay zzbayVar, zzfdn zzfdnVar, zzfdq zzfdqVar) {
        super(zzcqdVar);
        zzfdq zzfdqVar2;
        this.zzb = zzcqdVar;
        this.zzq = zzcqeVar;
        this.zzr = str;
        this.zzu = z;
        this.zzc = zzaltVar;
        this.zzd = zzbmiVar;
        this.zze = zzcjfVar;
        this.zzf = zzlVar;
        this.zzg = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzW = windowManager;
        zzt.zzp();
        DisplayMetrics zzy = com.google.android.gms.ads.internal.util.zzt.zzy(windowManager);
        this.zzh = zzy;
        this.zzi = zzy.density;
        this.zzX = zzbayVar;
        this.zzj = zzfdnVar;
        this.zzk = zzfdqVar;
        this.zzQ = new zzcm(zzcqdVar.zza(), this, this, null);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzciz.zzh("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMixedContentMode(2);
        settings.setUserAgentString(zzt.zzp().zzd(zzcqdVar, zzcjfVar.zza));
        zzt.zzq().zzf(getContext(), settings);
        setDownloadListener(this);
        zzaU();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(new zzcpp(this, new zzcpn(this), null), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbc();
        zzblw zzblwVar = new zzblw(new zzbly(true, "make_wv", this.zzr));
        this.zzK = zzblwVar;
        zzblwVar.zza().zzc(null);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() && (zzfdqVar2 = this.zzk) != null && zzfdqVar2.zzb != null) {
            zzblwVar.zza().zzd("gqi", this.zzk.zzb);
        }
        zzblwVar.zza();
        zzblv zzf = zzbly.zzf();
        this.zzI = zzf;
        zzblwVar.zzb("native:view_create", zzf);
        this.zzJ = null;
        this.zzH = null;
        zzt.zzq().zze(zzcqdVar);
        zzt.zzo().zzp();
    }

    private final void zzaU() {
        synchronized (this) {
            zzfdn zzfdnVar = this.zzj;
            if (zzfdnVar != null && zzfdnVar.zzak) {
                zzciz.zze("Disabling hardware acceleration on an overlay.");
                zzaW();
                return;
            }
            if (!this.zzu && !this.zzq.zzi()) {
                zzciz.zze("Enabling hardware acceleration on an AdView.");
                zzaY();
                return;
            }
            zzciz.zze("Enabling hardware acceleration on an overlay.");
            zzaY();
        }
    }

    private final void zzaV() {
        synchronized (this) {
            if (!this.zzP) {
                this.zzP = true;
                zzt.zzo().zzo();
            }
        }
    }

    private final void zzaW() {
        synchronized (this) {
            if (!this.zzv) {
                setLayerType(1, null);
            }
            this.zzv = true;
        }
    }

    private final void zzaX(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? "0" : "1");
        zzd("onAdVisibilityChanged", hashMap);
    }

    private final void zzaY() {
        synchronized (this) {
            if (this.zzv) {
                setLayerType(0, null);
            }
            this.zzv = false;
        }
    }

    private final void zzaZ(String str) {
        synchronized (this) {
            try {
                super.loadUrl("about:blank");
            } catch (Throwable th) {
                zzt.zzo().zzs(th, "AdWebViewImpl.loadUrlUnsafe");
                zzciz.zzk("Could not call loadUrl in destroy(). ", th);
            }
        }
    }

    private final void zzba() {
        zzblq.zza(this.zzK.zza(), this.zzI, "aeh2");
    }

    private final void zzbb() {
        synchronized (this) {
            Map<String, zzcnf> map = this.zzV;
            if (map != null) {
                for (zzcnf zzcnfVar : map.values()) {
                    zzcnfVar.release();
                }
            }
            this.zzV = null;
        }
    }

    private final void zzbc() {
        zzblw zzblwVar = this.zzK;
        if (zzblwVar == null) {
            return;
        }
        zzbly zza2 = zzblwVar.zza();
        zzblo zzf = zzt.zzo().zzf();
        if (zzf == null) {
            return;
        }
        zzf.zzf(zza2);
    }

    private final void zzbd() {
        synchronized (this) {
            Boolean zzk = zzt.zzo().zzk();
            this.zzw = zzk;
            if (zzk == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zzaS(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    zzaS(Boolean.FALSE);
                }
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void destroy() {
        synchronized (this) {
            zzbc();
            this.zzQ.zza();
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzb();
                this.zzo.zzl();
                this.zzo = null;
            }
            this.zzp = null;
            this.zzn.zzy();
            this.zzE = null;
            this.zzf = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.zzt) {
                return;
            }
            zzt.zzy().zzd(this);
            zzbb();
            this.zzt = true;
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhn)).booleanValue()) {
                zze.zza("Destroying the WebView immediately...");
                zzW();
                return;
            }
            zze.zza("Initiating WebView self destruct sequence in 3...");
            zze.zza("Loading blank page in WebView, 2...");
            zzaZ("about:blank");
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!zzaB()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            zzciz.zzl("#004 The webview is destroyed. Ignoring action.", null);
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
                    this.zzn.zzy();
                    zzt.zzy().zzd(this);
                    zzbb();
                    zzaV();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!zzaB()) {
                super.loadData(str, str2, str3);
            } else {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!zzaB()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!zzaB()) {
                super.loadUrl(str);
            } else {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        zzcow zzcowVar = this.zzn;
        if (zzcowVar != null) {
            zzcowVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!zzaB()) {
                this.zzQ.zzc();
            }
            boolean z = this.zzA;
            zzcow zzcowVar = this.zzn;
            boolean z2 = z;
            if (zzcowVar != null) {
                z2 = z;
                if (zzcowVar.zzK()) {
                    if (!this.zzB) {
                        this.zzn.zza();
                        this.zzn.zzb();
                        this.zzB = true;
                    }
                    zzaT();
                    z2 = true;
                }
            }
            zzaX(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        zzcow zzcowVar;
        synchronized (this) {
            if (!zzaB()) {
                this.zzQ.zzd();
            }
            super.onDetachedFromWindow();
            if (this.zzB && (zzcowVar = this.zzn) != null && zzcowVar.zzK() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzn.zza();
                this.zzn.zzb();
                this.zzB = false;
            }
        }
        zzaX(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzQ(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzciz.zze(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
        if (zzaB()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
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
        boolean zzaT = zzaT();
        zzl zzN = zzN();
        if (zzN == null || !zzaT) {
            return;
        }
        zzN.zzm();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x023c A[Catch: all -> 0x038a, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x028b A[Catch: all -> 0x038a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0346 A[Catch: all -> 0x038a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcpi.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void onPause() {
        if (zzaB()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzciz.zzh("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void onResume() {
        if (zzaB()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzciz.zzh("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzn.zzK() || this.zzn.zzI()) {
            zzalt zzaltVar = this.zzc;
            if (zzaltVar != null) {
                zzaltVar.zzd(motionEvent);
            }
            zzbmi zzbmiVar = this.zzd;
            if (zzbmiVar != null) {
                zzbmiVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbnv zzbnvVar = this.zzC;
                if (zzbnvVar != null) {
                    zzbnvVar.zzd(motionEvent);
                }
            }
        }
        if (zzaB()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcop
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcow) {
            this.zzn = (zzcow) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaB()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzciz.zzh("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzA(int i) {
        this.zzM = i;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzB(boolean z) {
        this.zzn.zzB(false);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzC(int i) {
        synchronized (this) {
            this.zzL = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzD(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final void zzE(zzcpl zzcplVar) {
        synchronized (this) {
            if (this.zzz != null) {
                zzciz.zzg("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.zzz = zzcplVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcog
    public final zzfdn zzF() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final Context zzG() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpz
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final WebView zzI() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final WebViewClient zzJ() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpx
    public final zzalt zzK() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzazn zzL() {
        zzazn zzaznVar;
        synchronized (this) {
            zzaznVar = this.zzE;
        }
        return zzaznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzbnv zzM() {
        zzbnv zzbnvVar;
        synchronized (this) {
            zzbnvVar = this.zzC;
        }
        return zzbnvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzl zzN() {
        zzl zzlVar;
        synchronized (this) {
            zzlVar = this.zzo;
        }
        return zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzl zzO() {
        zzl zzlVar;
        synchronized (this) {
            zzlVar = this.zzO;
        }
        return zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final /* synthetic */ zzcqc zzP() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpw
    public final zzcqe zzQ() {
        zzcqe zzcqeVar;
        synchronized (this) {
            zzcqeVar = this.zzq;
        }
        return zzcqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpm
    public final zzfdq zzR() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final IObjectWrapper zzS() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzp;
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzfxa<String> zzT() {
        zzbmi zzbmiVar = this.zzd;
        return zzbmiVar == null ? zzfwq.zzi(null) : zzbmiVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final String zzU() {
        String str;
        synchronized (this) {
            str = this.zzr;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzV(zzfdn zzfdnVar, zzfdq zzfdqVar) {
        this.zzj = zzfdnVar;
        this.zzk = zzfdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzW() {
        synchronized (this) {
            zze.zza("Destroying WebView!");
            zzaV();
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcph(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzX() {
        zzba();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zze.zza);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzY(int i) {
        if (i == 0) {
            zzblq.zza(this.zzK.zza(), this.zzI, "aebb2");
        }
        zzba();
        this.zzK.zza();
        this.zzK.zza().zzd("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zze.zza);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzZ() {
        if (this.zzH == null) {
            zzblq.zza(this.zzK.zza(), this.zzI, "aes2");
            this.zzK.zza();
            zzblv zzf = zzbly.zzf();
            this.zzH = zzf;
            this.zzK.zzb("native:view_show", zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zze.zza);
        zzd("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zza(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaA(final boolean z, final int i) {
        destroy();
        this.zzX.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzcpf
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                boolean z2 = z;
                int i2 = i;
                int i3 = zzcpi.zza;
                zzbeq zza2 = zzber.zza();
                if (zza2.zzc() != z2) {
                    zza2.zza(z2);
                }
                zza2.zzb(i2);
                zzbclVar.zzj(zza2.zzah());
            }
        });
        this.zzX.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaB() {
        boolean z;
        synchronized (this) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaC() {
        boolean z;
        synchronized (this) {
            z = this.zzu;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaD() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaE() {
        boolean z;
        synchronized (this) {
            z = this.zzx;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaF(zzc zzcVar, boolean z) {
        this.zzn.zzr(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaG(zzbv zzbvVar, zzehh zzehhVar, zzdyz zzdyzVar, zzfio zzfioVar, String str, String str2, int i) {
        this.zzn.zzs(zzbvVar, zzehhVar, zzdyzVar, zzfioVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaH(boolean z, int i, boolean z2) {
        this.zzn.zzt(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaI(boolean z, int i, String str, boolean z2) {
        this.zzn.zzv(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaJ(boolean z, int i, String str, String str2, boolean z2) {
        this.zzn.zzw(z, i, str, str2, z2);
    }

    public final zzcow zzaL() {
        return this.zzn;
    }

    @VisibleForTesting
    public final Boolean zzaM() {
        Boolean bool;
        synchronized (this) {
            bool = this.zzw;
        }
        return bool;
    }

    @TargetApi(19)
    public final void zzaP(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!zzaB()) {
                evaluateJavascript(str, null);
            } else {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    public final void zzaQ(String str) {
        if (!PlatformVersion.isAtLeastKitKat()) {
            zzaR(str.length() != 0 ? "javascript:".concat(str) : new String("javascript:"));
            return;
        }
        if (zzaM() == null) {
            zzbd();
        }
        if (zzaM().booleanValue()) {
            zzaP(str, null);
        } else {
            zzaR(str.length() != 0 ? "javascript:".concat(str) : new String("javascript:"));
        }
    }

    public final void zzaR(String str) {
        synchronized (this) {
            if (!zzaB()) {
                loadUrl(str);
            } else {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @VisibleForTesting
    public final void zzaS(Boolean bool) {
        synchronized (this) {
            this.zzw = bool;
        }
        zzt.zzo().zzt(bool);
    }

    public final boolean zzaT() {
        int i;
        int i2;
        boolean z = false;
        if (this.zzn.zzJ() || this.zzn.zzK()) {
            zzbgo.zzb();
            DisplayMetrics displayMetrics = this.zzh;
            int zzq = zzcis.zzq(displayMetrics, displayMetrics.widthPixels);
            zzbgo.zzb();
            DisplayMetrics displayMetrics2 = this.zzh;
            int zzq2 = zzcis.zzq(displayMetrics2, displayMetrics2.heightPixels);
            Activity zza2 = this.zzb.zza();
            if (zza2 == null || zza2.getWindow() == null) {
                i2 = zzq;
                i = zzq2;
            } else {
                zzt.zzp();
                int[] zzU = com.google.android.gms.ads.internal.util.zzt.zzU(zza2);
                zzbgo.zzb();
                i2 = zzcis.zzq(this.zzh, zzU[0]);
                zzbgo.zzb();
                i = zzcis.zzq(this.zzh, zzU[1]);
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
            new zzcaq(this, "").zzi(zzq, zzq2, i2, i, this.zzh.density, this.zzW.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaa() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzab(boolean z) {
        this.zzn.zzh(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzac() {
        this.zzQ.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzad(String str, String str2, String str3) {
        String str4;
        synchronized (this) {
            if (zzaB()) {
                zzciz.zzj("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            String str5 = (String) zzbgq.zzc().zzb(zzblj.zzK);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str5);
                jSONObject.put("sdk", "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e) {
                zzciz.zzk("Unable to build MRAID_ENV", e);
                str4 = null;
            }
            super.loadDataWithBaseURL(str, zzcpv.zza(str2, str4), "text/html", "UTF-8", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzae() {
        if (this.zzJ == null) {
            this.zzK.zza();
            zzblv zzf = zzbly.zzf();
            this.zzJ = zzf;
            this.zzK.zzb("native:view_load", zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaf(String str, zzbrt<? super zzcop> zzbrtVar) {
        zzcow zzcowVar = this.zzn;
        if (zzcowVar != null) {
            zzcowVar.zzx(str, zzbrtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzag() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzah(zzl zzlVar) {
        synchronized (this) {
            this.zzo = zzlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzai(zzcqe zzcqeVar) {
        synchronized (this) {
            this.zzq = zzcqeVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaj(zzazn zzaznVar) {
        synchronized (this) {
            this.zzE = zzaznVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzak(boolean z) {
        synchronized (this) {
            this.zzx = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzal() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzam(Context context) {
        this.zzb.setBaseContext(context);
        this.zzQ.zze(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzan(boolean z) {
        synchronized (this) {
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzw(this.zzn.zzJ(), z);
            } else {
                this.zzs = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzao(zzbnt zzbntVar) {
        synchronized (this) {
            this.zzD = zzbntVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzap(boolean z) {
        synchronized (this) {
            boolean z2 = this.zzu;
            this.zzu = z;
            zzaU();
            if (z != z2) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzL)).booleanValue() || !this.zzq.zzi()) {
                    new zzcaq(this, "").zzk(true != z ? "default" : "expanded");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaq(zzbnv zzbnvVar) {
        synchronized (this) {
            this.zzC = zzbnvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzar(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzp = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzas(int i) {
        synchronized (this) {
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzy(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzat(zzl zzlVar) {
        synchronized (this) {
            this.zzO = zzlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzau(boolean z) {
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
            zzlVar.zzC();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzav(boolean z) {
        synchronized (this) {
            if (z) {
                setBackgroundColor(0);
            }
            zzl zzlVar = this.zzo;
            if (zzlVar != null) {
                zzlVar.zzz(z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaw(String str, zzbrt<? super zzcop> zzbrtVar) {
        zzcow zzcowVar = this.zzn;
        if (zzcowVar != null) {
            zzcowVar.zzG(str, zzbrtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzax(String str, Predicate<zzbrt<? super zzcop>> predicate) {
        zzcow zzcowVar = this.zzn;
        if (zzcowVar != null) {
            zzcowVar.zzH(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzay() {
        boolean z;
        synchronized (this) {
            z = this.zzs;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaz() {
        boolean z;
        synchronized (this) {
            z = this.zzF > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zzb(String str, String str2) {
        zzaQ(C1676a.m4788i(new StringBuilder(C0033h.m8889h(str, 3, String.valueOf(str2).length())), str, "(", str2, ");"));
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbv() {
        synchronized (this) {
            com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
            if (zzlVar != null) {
                zzlVar.zzbv();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbw() {
        synchronized (this) {
            com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
            if (zzlVar != null) {
                zzlVar.zzbw();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzckw zzbx() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        boolean z;
        synchronized (this) {
            z = zzaxzVar.zzj;
            this.zzA = z;
        }
        zzaX(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final void zzd(String str, Map<String, ?> map) {
        try {
            zze(str, zzt.zzp().zzf(map));
        } catch (JSONException e) {
            zzciz.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final void zze(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject3);
        sb.append(");");
        String sb2 = sb.toString();
        zzciz.zze(sb2.length() != 0 ? "Dispatching AFMA event: ".concat(sb2) : new String("Dispatching AFMA event: "));
        zzaQ(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzf() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzg() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzh() {
        int i;
        synchronized (this) {
            i = this.zzL;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzi() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzj() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpq, com.google.android.gms.internal.ads.zzclh
    public final Activity zzk() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zza zzm() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzblv zzn() {
        return this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zzblw zzo() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpy, com.google.android.gms.internal.ads.zzclh
    public final zzcjf zzp() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzcow zzcowVar = this.zzn;
        if (zzcowVar != null) {
            zzcowVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzcnf zzr(String str) {
        synchronized (this) {
            Map<String, zzcnf> map = this.zzV;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zzcpl zzs() {
        zzcpl zzcplVar;
        synchronized (this) {
            zzcplVar = this.zzz;
        }
        return zzcplVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final String zzt() {
        synchronized (this) {
            zzfdq zzfdqVar = this.zzk;
            if (zzfdqVar != null) {
                return zzfdqVar.zzb;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final String zzu() {
        String str;
        synchronized (this) {
            str = this.zzy;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final void zzv(String str, zzcnf zzcnfVar) {
        synchronized (this) {
            if (this.zzV == null) {
                this.zzV = new HashMap();
            }
            this.zzV.put(str, zzcnfVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzw() {
        zzl zzN = zzN();
        if (zzN != null) {
            zzN.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzx(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", true != z ? "0" : "1");
        hashMap.put("duration", Long.toString(j));
        zzd("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzy() {
        synchronized (this) {
            zzbnt zzbntVar = this.zzD;
            if (zzbntVar != null) {
                final zzdty zzdtyVar = (zzdty) zzbntVar;
                com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtw
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            zzdty.this.zzd();
                        } catch (RemoteException e) {
                            zzciz.zzl("#007 Could not call remote method.", e);
                        }
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzz(int i) {
        this.zzN = i;
    }
}
