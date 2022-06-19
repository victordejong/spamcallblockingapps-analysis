package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
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
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.logging.monitor.MonitorLogServerProtocol;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzber.class */
public final class zzber extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzbeb {
    private String zzacy;
    private final zzazn zzbpn;
    private final WindowManager zzbre;
    private int zzbvt;
    private boolean zzdsx;
    private Boolean zzecg;
    private zzaca zzemp;
    private final zztu zzeqv;
    private final zzbfr zzesl;
    private final zzei zzesm;
    private final zzacq zzesn;
    private final zzm zzeso;
    private final zzb zzesp;
    private final float zzesq;
    private zzdmw zzesr;
    private zzdnb zzess;
    private zzbee zzesv;
    private zzc zzesw;
    private IObjectWrapper zzesx;
    private zzbft zzesy;
    private boolean zzesz;
    private boolean zzeta;
    private boolean zzetb;
    private zzbev zzetf;
    private boolean zzetg;
    private boolean zzeth;
    private zzaef zzeti;
    private zzaea zzetj;
    private zzsh zzetk;
    private int zzetl;
    private int zzetm;
    private zzaca zzetn;
    private zzaca zzeto;
    private zzacd zzetp;
    private WeakReference<View.OnClickListener> zzetq;
    private zzc zzetr;
    private boolean zzets;
    private zzbz zzett;
    private Map<String, zzbdd> zzetu;
    private final DisplayMetrics zzwz;
    private boolean zzest = false;
    private boolean zzesu = false;
    private boolean zzetd = true;
    private boolean zzete = false;
    private String zzdun = "";
    private int zzdqj = -1;
    private int zzdqi = -1;
    private int maxWidth = -1;
    private int maxHeight = -1;
    private int zzetc = -1;

    private zzber(zzbfr zzbfrVar, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        super(zzbfrVar);
        zzdnb zzdnbVar2;
        this.zzesl = zzbfrVar;
        this.zzesy = zzbftVar;
        this.zzacy = str;
        this.zzeta = z;
        this.zzesm = zzeiVar;
        this.zzesn = zzacqVar;
        this.zzbpn = zzaznVar;
        this.zzeso = zzmVar;
        this.zzesp = zzbVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzbre = windowManager;
        zzr.zzkr();
        DisplayMetrics zza = zzj.zza(windowManager);
        this.zzwz = zza;
        this.zzesq = zza.density;
        this.zzeqv = zztuVar;
        this.zzesr = zzdmwVar;
        this.zzess = zzdnbVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzd.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(zzr.zzkr().zzq(zzbfrVar, zzaznVar.zzbrp));
        zzr.zzkt().zza(getContext(), settings);
        setDownloadListener(this);
        zzaee();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(new zzbez(this, new zzbfe(this) { // from class: com.google.android.gms.internal.ads.zzbfc
                private final zzbeb zzeuk;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeuk = this;
                }

                @Override // com.google.android.gms.internal.ads.zzbfe
                public final void zzj(Uri uri) {
                    zzbfn zzacx = this.zzeuk.zzacx();
                    if (zzacx == null) {
                        zzd.zzev("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        zzacx.zzj(uri);
                    }
                }
            }), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.zzett = new zzbz(this.zzesl.zzabe(), this, this, null);
        zzaei();
        zzacd zzacdVar = new zzacd(new zzacc(true, "make_wv", this.zzacy));
        this.zzetp = zzacdVar;
        zzacdVar.zzsp().zzc(zzaccVar);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && (zzdnbVar2 = this.zzess) != null && zzdnbVar2.zzbvs != null) {
            this.zzetp.zzsp().zzg("gqi", this.zzess.zzbvs);
        }
        zzaca zzb = zzabx.zzb(this.zzetp.zzsp());
        this.zzemp = zzb;
        this.zzetp.zza("native:view_create", zzb);
        this.zzeto = null;
        this.zzetn = null;
        zzr.zzkt().zzbe(zzbfrVar);
        zzr.zzkv().zzxp();
    }

    private final void zza(Boolean bool) {
        synchronized (this) {
            this.zzecg = bool;
        }
        zzr.zzkv().zza(bool);
    }

    private final void zza(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!isDestroyed()) {
                evaluateJavascript(str, null);
            } else {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    public static final /* synthetic */ void zza(boolean z, int i, zzug.zzi.zza zzaVar) {
        zzug.zzae.zza zzpz = zzug.zzae.zzpz();
        if (zzpz.zzpy() != z) {
            zzpz.zzw(z);
        }
        zzaVar.zzb((zzug.zzae) ((zzelb) zzpz.zzcu(i).zzbiw()));
    }

    private final boolean zzaeb() {
        int i;
        int i2;
        boolean z = false;
        if (this.zzesv.zzadp() || this.zzesv.zzadq()) {
            zzwr.zzqn();
            DisplayMetrics displayMetrics = this.zzwz;
            int zzb = zzaza.zzb(displayMetrics, displayMetrics.widthPixels);
            zzwr.zzqn();
            DisplayMetrics displayMetrics2 = this.zzwz;
            int zzb2 = zzaza.zzb(displayMetrics2, displayMetrics2.heightPixels);
            Activity zzabe = this.zzesl.zzabe();
            if (zzabe == null || zzabe.getWindow() == null) {
                i2 = zzb;
                i = zzb2;
            } else {
                zzr.zzkr();
                int[] zzf = zzj.zzf(zzabe);
                zzwr.zzqn();
                i2 = zzaza.zzb(this.zzwz, zzf[0]);
                zzwr.zzqn();
                i = zzaza.zzb(this.zzwz, zzf[1]);
            }
            int i3 = this.zzdqi;
            if (i3 == zzb && this.zzdqj == zzb2 && this.maxWidth == i2 && this.maxHeight == i) {
                return false;
            }
            if (i3 != zzb || this.zzdqj != zzb2) {
                z = true;
            }
            this.zzdqi = zzb;
            this.zzdqj = zzb2;
            this.maxWidth = i2;
            this.maxHeight = i;
            new zzaqq(this).zza(zzb, zzb2, i2, i, this.zzwz.density, this.zzbre.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    private final void zzaec() {
        synchronized (this) {
            Boolean zzxn = zzr.zzkv().zzxn();
            this.zzecg = zzxn;
            if (zzxn == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zza((Boolean) true);
                } catch (IllegalStateException e) {
                    zza((Boolean) false);
                }
            }
        }
    }

    private final void zzaed() {
        zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aeh2");
    }

    private final void zzaee() {
        synchronized (this) {
            if (!this.zzeta && !this.zzesy.zzaeo()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzd.zzdy("Disabling hardware acceleration on an AdView.");
                    zzaef();
                    return;
                }
                zzd.zzdy("Enabling hardware acceleration on an AdView.");
                zzaeg();
                return;
            }
            zzd.zzdy("Enabling hardware acceleration on an overlay.");
            zzaeg();
        }
    }

    private final void zzaef() {
        synchronized (this) {
            if (!this.zzetb) {
                setLayerType(1, null);
            }
            this.zzetb = true;
        }
    }

    private final void zzaeg() {
        synchronized (this) {
            if (this.zzetb) {
                setLayerType(0, null);
            }
            this.zzetb = false;
        }
    }

    private final void zzaeh() {
        synchronized (this) {
            Map<String, zzbdd> map = this.zzetu;
            if (map != null) {
                for (zzbdd zzbddVar : map.values()) {
                    zzbddVar.release();
                }
            }
            this.zzetu = null;
        }
    }

    private final void zzaei() {
        zzacc zzsp;
        zzacd zzacdVar = this.zzetp;
        if (zzacdVar == null || (zzsp = zzacdVar.zzsp()) == null || zzr.zzkv().zzxm() == null) {
            return;
        }
        zzr.zzkv().zzxm().zza(zzsp);
    }

    private final void zzbe(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zza("onAdVisibilityChanged", hashMap);
    }

    public static zzber zzc(Context context, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        return new zzber(new zzbfr(context), zzbftVar, str, z, z2, zzeiVar, zzacqVar, zzaznVar, zzaccVar, zzmVar, zzbVar, zztuVar, zzdmwVar, zzdnbVar);
    }

    private final void zzfk(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                loadUrl(str);
            } else {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    private final void zzfl(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                zzr.zzkv().zza(e, "AdWebViewImpl.loadUrlUnsafe");
                zzd.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    private final void zzfm(String str) {
        if (!PlatformVersion.isAtLeastKitKat()) {
            String valueOf = String.valueOf(str);
            zzfk(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        if (zzxn() == null) {
            zzaec();
        }
        if (zzxn().booleanValue()) {
            zza(str, (ValueCallback<String>) null);
            return;
        }
        String valueOf2 = String.valueOf(str);
        zzfk(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    private final Boolean zzxn() {
        Boolean bool;
        synchronized (this) {
            bool = this.zzecg;
        }
        return bool;
    }

    private final void zzxq() {
        synchronized (this) {
            if (!this.zzets) {
                this.zzets = true;
                zzr.zzkv().zzxq();
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void destroy() {
        synchronized (this) {
            zzaei();
            this.zzett.zzzt();
            zzc zzcVar = this.zzesw;
            if (zzcVar != null) {
                zzcVar.close();
                this.zzesw.onDestroy();
                this.zzesw = null;
            }
            this.zzesx = null;
            this.zzesv.reset();
            if (this.zzesz) {
                return;
            }
            zzr.zzln();
            zzbde.zzc(this);
            zzaeh();
            this.zzesz = true;
            zzd.zzeb("Initiating WebView self destruct sequence in 3...");
            zzd.zzeb("Loading blank page in WebView, 2...");
            zzfl("about:blank");
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzesz) {
                    this.zzesv.reset();
                    zzr.zzln();
                    zzbde.zzc(this);
                    zzaeh();
                    zzxq();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final String getRequestId() {
        String str;
        synchronized (this) {
            str = this.zzdun;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfo
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean isDestroyed() {
        boolean z;
        synchronized (this) {
            z = this.zzesz;
        }
        return z;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadData(str, str2, str3);
            } else {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void loadUrl(String str) {
        synchronized (this) {
            if (isDestroyed()) {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                zzr.zzkv().zza(e, "AdWebViewImpl.loadUrl");
                zzd.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zzbee zzbeeVar = this.zzesv;
        if (zzbeeVar != null) {
            zzbeeVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.zzett.onAttachedToWindow();
            }
            boolean z = this.zzetg;
            zzbee zzbeeVar = this.zzesv;
            boolean z2 = z;
            if (zzbeeVar != null) {
                z2 = z;
                if (zzbeeVar.zzadq()) {
                    if (!this.zzeth) {
                        this.zzesv.zzads();
                        this.zzesv.zzadt();
                        this.zzeth = true;
                    }
                    zzaeb();
                    z2 = true;
                }
            }
            zzbe(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        zzbee zzbeeVar;
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzett.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzeth && (zzbeeVar = this.zzesv) != null && zzbeeVar.zzadq() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzesv.zzads();
                this.zzesv.zzadt();
                this.zzeth = false;
            }
        }
        zzbe(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzr.zzkr();
            zzj.zza(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzd.zzdy(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (isDestroyed()) {
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
        boolean zzaeb = zzaeb();
        zzc zzact = zzact();
        if (zzact == null || !zzaeb) {
            return;
        }
        zzact.zzwa();
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0283 A[Catch: all -> 0x037d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:62:0x0176, B:64:0x017c, B:67:0x0185, B:70:0x018e, B:72:0x0198, B:75:0x01ad, B:87:0x01f8, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:101:0x024e, B:111:0x0283, B:113:0x02bb, B:115:0x0317, B:117:0x031d, B:119:0x0329, B:122:0x033b, B:124:0x0344, B:126:0x034a, B:128:0x0350, B:130:0x0360, B:134:0x0374), top: B:141:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x033b A[Catch: all -> 0x037d, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:62:0x0176, B:64:0x017c, B:67:0x0185, B:70:0x018e, B:72:0x0198, B:75:0x01ad, B:87:0x01f8, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:101:0x024e, B:111:0x0283, B:113:0x02bb, B:115:0x0317, B:117:0x031d, B:119:0x0329, B:122:0x033b, B:124:0x0344, B:126:0x034a, B:128:0x0350, B:130:0x0360, B:134:0x0374), top: B:141:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0230 A[Catch: all -> 0x037d, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:62:0x0176, B:64:0x017c, B:67:0x0185, B:70:0x018e, B:72:0x0198, B:75:0x01ad, B:87:0x01f8, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:101:0x024e, B:111:0x0283, B:113:0x02bb, B:115:0x0317, B:117:0x031d, B:119:0x0329, B:122:0x033b, B:124:0x0344, B:126:0x034a, B:128:0x0350, B:130:0x0360, B:134:0x0374), top: B:141:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzber.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void onPause() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzd.zzc("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void onResume() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzd.zzc("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzesv.zzadq() || this.zzesv.zzadr()) {
            zzei zzeiVar = this.zzesm;
            if (zzeiVar != null) {
                zzeiVar.zza(motionEvent);
            }
            zzacq zzacqVar = this.zzesn;
            if (zzacqVar != null) {
                zzacqVar.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                zzaef zzaefVar = this.zzeti;
                if (zzaefVar != null) {
                    zzaefVar.zzc(motionEvent);
                }
            }
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbeb
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzetq = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.zzetc = i;
            zzc zzcVar = this.zzesw;
            if (zzcVar != null) {
                zzcVar.setRequestedOrientation(i);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbeb
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzbee) {
            this.zzesv = (zzbee) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzd.zzc("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzc zzcVar) {
        synchronized (this) {
            this.zzesw = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzesv.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(zzbg zzbgVar, zzcqr zzcqrVar, zzckn zzcknVar, zzdrz zzdrzVar, String str, String str2, int i) {
        this.zzesv.zza(zzbgVar, zzcqrVar, zzcknVar, zzdrzVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzaea zzaeaVar) {
        synchronized (this) {
            this.zzetj = zzaeaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzaef zzaefVar) {
        synchronized (this) {
            this.zzeti = zzaefVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final void zza(zzbev zzbevVar) {
        synchronized (this) {
            if (this.zzetf != null) {
                zzd.zzev("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.zzetf = zzbevVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzbft zzbftVar) {
        synchronized (this) {
            this.zzesy = zzbftVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzdmw zzdmwVar, zzdnb zzdnbVar) {
        this.zzesr = zzdmwVar;
        this.zzess = zzdnbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqxVar) {
        synchronized (this) {
            this.zzetg = zzqxVar.zzbrj;
        }
        zzbe(zzqxVar.zzbrj);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzsh zzshVar) {
        synchronized (this) {
            this.zzetk = zzshVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(String str, Predicate<zzaif<? super zzbeb>> predicate) {
        zzbee zzbeeVar = this.zzesv;
        if (zzbeeVar != null) {
            zzbeeVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(String str, zzaif<? super zzbeb> zzaifVar) {
        zzbee zzbeeVar = this.zzesv;
        if (zzbeeVar != null) {
            zzbeeVar.zza(str, zzaifVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final void zza(String str, zzbdd zzbddVar) {
        synchronized (this) {
            if (this.zzetu == null) {
                this.zzetu = new HashMap();
            }
            this.zzetu.put(str, zzbddVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, Map<String, ?> map) {
        try {
            zza(str, zzr.zzkr().zzj(map));
        } catch (JSONException e) {
            zzd.zzex("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzd.zzdy(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzfm(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(boolean z, int i, String str) {
        this.zzesv.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzesv.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zza(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("duration", Long.toString(j));
        zza("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final zzbbd zzabb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final zzbev zzabc() {
        zzbev zzbevVar;
        synchronized (this) {
            zzbevVar = this.zzetf;
        }
        return zzbevVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final zzaca zzabd() {
        return this.zzemp;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfd
    public final Activity zzabe() {
        return this.zzesl.zzabe();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final zzb zzabf() {
        return this.zzesp;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final String zzabg() {
        synchronized (this) {
            zzdnb zzdnbVar = this.zzess;
            if (zzdnbVar != null) {
                return zzdnbVar.zzbvs;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final int zzabh() {
        int i;
        synchronized (this) {
            i = this.zzbvt;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final zzacd zzabi() {
        return this.zzetp;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfl
    public final zzazn zzabj() {
        return this.zzbpn;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final int zzabk() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final int zzabl() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzabm() {
        synchronized (this) {
            zzaea zzaeaVar = this.zzetj;
            if (zzaeaVar != null) {
                zzaeaVar.zzth();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbdu
    public final zzdmw zzacp() {
        return this.zzesr;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzacq() {
        zzaed();
        HashMap hashMap = new HashMap(1);
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzbpn.zzbrp);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzacr() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzr.zzkw().zzrb()));
        hashMap.put("app_volume", String.valueOf(zzr.zzkw().zzra()));
        hashMap.put("device_volume", String.valueOf(zzae.zzbg(getContext())));
        zza("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final Context zzacs() {
        return this.zzesl.zzacs();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final zzc zzact() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.zzesw;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final zzc zzacu() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.zzetr;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfj
    public final zzbft zzacv() {
        zzbft zzbftVar;
        synchronized (this) {
            zzbftVar = this.zzesy;
        }
        return zzbftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String zzacw() {
        String str;
        synchronized (this) {
            str = this.zzacy;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final /* synthetic */ zzbfn zzacx() {
        return this.zzesv;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final WebViewClient zzacy() {
        return this.zzesv;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzacz() {
        boolean z;
        synchronized (this) {
            z = this.zzdsx;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfm
    public final zzei zzada() {
        return this.zzesm;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final IObjectWrapper zzadb() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzesx;
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzadc() {
        boolean z;
        synchronized (this) {
            z = this.zzeta;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadd() {
        synchronized (this) {
            zzd.zzeb("Destroying WebView!");
            zzxq();
            zzj.zzeen.post(new zzbew(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzade() {
        boolean z;
        synchronized (this) {
            z = this.zzetd;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzadf() {
        boolean z;
        synchronized (this) {
            z = this.zzetl > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadg() {
        this.zzett.zzzs();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadh() {
        if (this.zzeto == null) {
            zzaca zzb = zzabx.zzb(this.zzetp.zzsp());
            this.zzeto = zzb;
            this.zzetp.zza("native:view_load", zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final zzaef zzadi() {
        zzaef zzaefVar;
        synchronized (this) {
            zzaefVar = this.zzeti;
        }
        return zzaefVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadj() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadk() {
        zzd.zzeb("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final zzsh zzadl() {
        zzsh zzshVar;
        synchronized (this) {
            zzshVar = this.zzetk;
        }
        return zzshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzadm() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfa
    public final zzdnb zzadn() {
        return this.zzess;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzam(boolean z) {
        synchronized (this) {
            zzc zzcVar = this.zzesw;
            if (zzcVar != null) {
                zzcVar.zza(this.zzesv.zzadp(), z);
            } else {
                this.zzdsx = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzaq(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzesx = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzaw(boolean z) {
        this.zzesv.zzaw(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzay(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.zzeta;
            this.zzeta = z;
            zzaee();
            if (z2) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcnt)).booleanValue() || !this.zzesy.zzaeo()) {
                    new zzaqq(this).zzdu(z ? "expanded" : MonitorLogServerProtocol.DEFAULT_SAMPLE_RATES_KEY);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzaz(boolean z) {
        synchronized (this) {
            this.zzetd = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzb(zzc zzcVar) {
        synchronized (this) {
            this.zzetr = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzb(String str, zzaif<? super zzbeb> zzaifVar) {
        zzbee zzbeeVar = this.zzesv;
        if (zzbeeVar != null) {
            zzbeeVar.zzb(str, zzaifVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzb(String str, String str2, String str3) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, zzbfk.zzf(str2, zzbfk.zzaek()), "text/html", POBCommonConstants.URL_ENCODING, str3);
            } else {
                zzd.zzex("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakw
    public final void zzb(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject3).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject3);
        sb.append(");");
        zzfm(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzb(boolean z, int i) {
        destroy();
        this.zzeqv.zza(new zztx(z, i) { // from class: com.google.android.gms.internal.ads.zzbeu
            private final int zzefe;
            private final boolean zzetx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzetx = z;
                this.zzefe = i;
            }

            @Override // com.google.android.gms.internal.ads.zztx
            public final void zza(zzug.zzi.zza zzaVar) {
                zzber.zza(this.zzetx, this.zzefe, zzaVar);
            }
        });
        this.zzeqv.zza(zztw.zza.EnumC2616zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzba(boolean z) {
        zzc zzcVar;
        synchronized (this) {
            int i = this.zzetl + (z ? 1 : -1);
            this.zzetl = i;
            if (i <= 0 && (zzcVar = this.zzesw) != null) {
                zzcVar.zzwd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzbb(boolean z) {
        this.zzesv.zzbb(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzbv(Context context) {
        this.zzesl.setBaseContext(context);
        this.zzett.zzj(this.zzesl.zzabe());
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zzc(boolean z, int i) {
        this.zzesv.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzakw
    public final void zzcv(String str) {
        zzfm(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzdp(int i) {
        synchronized (this) {
            this.zzbvt = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzdu(int i) {
        if (i == 0) {
            zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aebb2");
        }
        zzaed();
        if (this.zzetp.zzsp() != null) {
            this.zzetp.zzsp().zzg("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzbpn.zzbrp);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final zzbdd zzfc(String str) {
        synchronized (this) {
            Map<String, zzbdd> map = this.zzetu;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkn() {
        synchronized (this) {
            this.zzete = true;
            zzm zzmVar = this.zzeso;
            if (zzmVar != null) {
                zzmVar.zzkn();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzko() {
        synchronized (this) {
            this.zzete = false;
            zzm zzmVar = this.zzeso;
            if (zzmVar != null) {
                zzmVar.zzko();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzwb() {
        if (this.zzetn == null) {
            zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aes2");
            zzaca zzb = zzabx.zzb(this.zzetp.zzsp());
            this.zzetn = zzb;
            this.zzetp.zza("native:view_show", zzb);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzbpn.zzbrp);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzwc() {
        zzc zzact = zzact();
        if (zzact != null) {
            zzact.zzwc();
        }
    }
}
