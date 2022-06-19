package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractBinderC12867qy;
import com.google.android.gms.internal.ads.AbstractC12586go;
import com.google.android.gms.internal.ads.AbstractC12588gq;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C12843qa;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.aeb;
import com.google.android.gms.internal.ads.afd;
import com.google.android.gms.internal.ads.afe;
import com.google.android.gms.internal.ads.bsc;
import com.google.android.gms.internal.ads.ehk;
import com.google.android.gms.internal.ads.ekb;
import java.util.Collections;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zze.class */
public class zze extends AbstractBinderC12867qy implements zzab {
    private static final int zzdta = Color.argb(0, 0, 0, 0);
    protected final Activity zzaax;
    adt zzdkm;
    AdOverlayInfoParcel zzdtb;
    private zzk zzdtc;
    private zzr zzdtd;
    private FrameLayout zzdtf;
    private WebChromeClient.CustomViewCallback zzdtg;
    private zzh zzdti;
    private Runnable zzdtm;
    private boolean zzdtn;
    private boolean zzdto;
    private boolean zzdte = false;
    private boolean zzdth = false;
    private boolean zzbpo = false;
    private boolean zzdtj = false;
    zzl zzdtk = zzl.BACK_BUTTON;
    private final Object zzdtl = new Object();
    private boolean zzdtp = false;
    private boolean zzdtq = false;
    private boolean zzdtr = true;

    public zze(Activity activity) {
        this.zzaax = activity;
    }

    private final void zza(Configuration configuration) {
        boolean z;
        boolean z2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        boolean z3 = (adOverlayInfoParcel == null || adOverlayInfoParcel.zzdum == null || !this.zzdtb.zzdum.zzbpp) ? false : true;
        boolean zza = zzr.zzkx().zza(this.zzaax, configuration);
        if ((!this.zzbpo || z3) && !zza) {
            z2 = true;
            z = false;
            if (Build.VERSION.SDK_INT >= 19) {
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdtb;
                z2 = true;
                z = false;
                if (adOverlayInfoParcel2 != null) {
                    z2 = true;
                    z = false;
                    if (adOverlayInfoParcel2.zzdum != null) {
                        z2 = true;
                        z = false;
                        if (this.zzdtb.zzdum.zzbpu) {
                            z = true;
                            z2 = true;
                        }
                    }
                }
            }
        } else {
            z2 = false;
            z = false;
        }
        Window window = this.zzaax.getWindow();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42647aJ)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i = 256;
            if (z2) {
                i = 5380;
                if (z) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
        } else if (!z2) {
            window.addFlags(2048);
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT < 19 || !z) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    private final void zzan(boolean z) {
        int intValue = ((Integer) ekb.m14831e().m18571a(C12187aq.f42756cM)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.size = 50;
        zzqVar.paddingLeft = z ? intValue : 0;
        zzqVar.paddingRight = z ? 0 : intValue;
        zzqVar.paddingTop = 0;
        zzqVar.paddingBottom = intValue;
        this.zzdtd = new zzr(this.zzaax, zzqVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzdtb.zzduh);
        this.zzdti.addView(this.zzdtd, layoutParams);
    }

    private final void zzao(boolean z) throws zzi {
        if (!this.zzdto) {
            this.zzaax.requestWindowFeature(1);
        }
        Window window = this.zzaax.getWindow();
        if (window != null) {
            afe mo13808B = this.zzdtb.zzdkm != null ? this.zzdtb.zzdkm.mo13808B() : null;
            boolean z2 = false;
            boolean z3 = mo13808B != null && mo13808B.mo18785b();
            this.zzdtj = false;
            if (z3) {
                if (this.zzdtb.orientation == 6) {
                    if (this.zzaax.getResources().getConfiguration().orientation == 1) {
                        z2 = true;
                    }
                    this.zzdtj = z2;
                } else if (this.zzdtb.orientation == 7) {
                    boolean z4 = false;
                    if (this.zzaax.getResources().getConfiguration().orientation == 2) {
                        z4 = true;
                    }
                    this.zzdtj = z4;
                }
            }
            boolean z5 = this.zzdtj;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z5);
            zzd.zzdz(sb.toString());
            setRequestedOrientation(this.zzdtb.orientation);
            window.setFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
            zzd.zzdz("Hardware acceleration on the AdActivity window enabled.");
            if (!this.zzbpo) {
                this.zzdti.setBackgroundColor(-16777216);
            } else {
                this.zzdti.setBackgroundColor(zzdta);
            }
            this.zzaax.setContentView(this.zzdti);
            this.zzdto = true;
            if (z) {
                try {
                    zzr.zzkw();
                    adt m18830a = aeb.m18830a(this.zzaax, this.zzdtb.zzdkm != null ? this.zzdtb.zzdkm.mo13724z() : null, this.zzdtb.zzdkm != null ? this.zzdtb.zzdkm.mo13809A() : null, true, z3, null, null, this.zzdtb.zzbpx, null, this.zzdtb.zzdkm != null ? this.zzdtb.zzdkm.mo13748e() : null, new ehk(), null, null);
                    this.zzdkm = m18830a;
                    afe mo13808B2 = m18830a.mo13808B();
                    AbstractC12586go abstractC12586go = this.zzdtb.zzdic;
                    AbstractC12588gq abstractC12588gq = this.zzdtb.zzdie;
                    zzx zzxVar = this.zzdtb.zzduj;
                    zza zzaVar = null;
                    if (this.zzdtb.zzdkm != null) {
                        zzaVar = this.zzdtb.zzdkm.mo13808B().mo18792a();
                    }
                    mo13808B2.mo18787a(null, abstractC12586go, null, abstractC12588gq, zzxVar, true, null, zzaVar, null, null, null, null, null, null);
                    this.zzdkm.mo13808B().mo18789a(new afd(this) { // from class: com.google.android.gms.ads.internal.overlay.zzd
                        private final zze zzdsz;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzdsz = this;
                        }

                        @Override // com.google.android.gms.internal.ads.afd
                        public final void zzam(boolean z6) {
                            zze zzeVar = this.zzdsz;
                            if (zzeVar.zzdkm != null) {
                                zzeVar.zzdkm.mo13729u();
                            }
                        }
                    });
                    if (this.zzdtb.url != null) {
                        this.zzdkm.loadUrl(this.zzdtb.url);
                    } else if (this.zzdtb.zzdui == null) {
                        throw new zzi("No URL or HTML to display in ad overlay.");
                    } else {
                        this.zzdkm.loadDataWithBaseURL(this.zzdtb.zzdug, this.zzdtb.zzdui, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
                    }
                    if (this.zzdtb.zzdkm != null) {
                        this.zzdtb.zzdkm.mo13761b(this);
                    }
                } catch (Exception e) {
                    zzd.zzc("Error obtaining webview.", e);
                    throw new zzi("Could not obtain webview for the overlay.");
                }
            } else {
                adt adtVar = this.zzdtb.zzdkm;
                this.zzdkm = adtVar;
                adtVar.mo13788a(this.zzaax);
            }
            this.zzdkm.mo13786a(this);
            if (this.zzdtb.zzdkm != null) {
                zzc(this.zzdtb.zzdkm.mo13804F(), this.zzdti);
            }
            if (this.zzdtb.zzduk != 5) {
                ViewParent parent = this.zzdkm.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.zzdkm.mo13731s());
                }
                if (this.zzbpo) {
                    this.zzdkm.mo13795O();
                }
                this.zzdti.addView(this.zzdkm.mo13731s(), -1, -1);
            }
            if (!z && !this.zzdtj) {
                zzwm();
            }
            if (this.zzdtb.zzduk == 5) {
                bsc.m17624a(this.zzaax, this, this.zzdtb.zzduo, this.zzdtb.zzdun, this.zzdtb.zzdje, this.zzdtb.zzdjf, this.zzdtb.zzbwe, this.zzdtb.zzdup);
                return;
            }
            zzan(z3);
            if (!this.zzdkm.mo13806D()) {
                return;
            }
            zza(z3, true);
            return;
        }
        throw new zzi("Invalid activity, no window available.");
    }

    private static void zzc(AbstractC12126b abstractC12126b, View view) {
        if (abstractC12126b == null || view == null) {
            return;
        }
        zzr.zzlk().m14223a(abstractC12126b, view);
    }

    private final void zzwj() {
        if (!this.zzaax.isFinishing() || this.zzdtp) {
            return;
        }
        this.zzdtp = true;
        if (this.zzdkm != null) {
            this.zzdkm.mo13750d(this.zzdtk.zzwq());
            synchronized (this.zzdtl) {
                if (!this.zzdtn && this.zzdkm.mo13799K()) {
                    this.zzdtm = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zzg
                        private final zze zzdsz;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzdsz = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzdsz.zzwk();
                        }
                    };
                    zzj.zzegq.postDelayed(this.zzdtm, ((Long) ekb.m14831e().m18571a(C12187aq.f42644aG)).longValue());
                    return;
                }
            }
        }
        zzwk();
    }

    private final void zzwm() {
        this.zzdkm.mo13729u();
    }

    public final void close() {
        this.zzdtk = zzl.CUSTOM_CLOSE;
        this.zzaax.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzduk != 5) {
            return;
        }
        this.zzaax.overridePendingTransition(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onBackPressed() {
        this.zzdtk = zzl.BACK_BUTTON;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public void onCreate(Bundle bundle) {
        this.zzaax.requestWindowFeature(1);
        this.zzdth = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(this.zzaax.getIntent());
            this.zzdtb = zzd;
            if (zzd == null) {
                throw new zzi("Could not get info for ad overlay.");
            }
            if (zzd.zzbpx.zzekb > 7500000) {
                this.zzdtk = zzl.OTHER;
            }
            if (this.zzaax.getIntent() != null) {
                this.zzdtr = this.zzaax.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzdtb.zzdum != null) {
                this.zzbpo = this.zzdtb.zzdum.zzbpo;
            } else if (this.zzdtb.zzduk == 5) {
                this.zzbpo = true;
            } else {
                this.zzbpo = false;
            }
            if (this.zzbpo && this.zzdtb.zzduk != 5 && this.zzdtb.zzdum.zzbpt != -1) {
                new zzj(this).zzyx();
            }
            if (bundle == null) {
                if (this.zzdtb.zzduf != null && this.zzdtr) {
                    this.zzdtb.zzduf.zzvz();
                }
                if (this.zzdtb.zzduk != 1 && this.zzdtb.zzchr != null) {
                    this.zzdtb.zzchr.onAdClicked();
                }
            }
            zzh zzhVar = new zzh(this.zzaax, this.zzdtb.zzdul, this.zzdtb.zzbpx.zzbrz, this.zzdtb.zzbvf);
            this.zzdti = zzhVar;
            zzhVar.setId(1000);
            zzr.zzkx().zzi(this.zzaax);
            int i = this.zzdtb.zzduk;
            if (i == 1) {
                zzao(false);
            } else if (i == 2) {
                this.zzdtc = new zzk(this.zzdtb.zzdkm);
                zzao(false);
            } else if (i == 3) {
                zzao(true);
            } else if (i != 5) {
                throw new zzi("Could not determine ad overlay type.");
            } else {
                zzao(false);
            }
        } catch (zzi e) {
            zzd.zzez(e.getMessage());
            this.zzdtk = zzl.OTHER;
            this.zzaax.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onDestroy() {
        adt adtVar = this.zzdkm;
        if (adtVar != null) {
            try {
                this.zzdti.removeView(adtVar.mo13731s());
            } catch (NullPointerException e) {
            }
        }
        zzwj();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onPause() {
        zzwf();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzduf != null) {
            this.zzdtb.zzduf.onPause();
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42754cK)).booleanValue() && this.zzdkm != null && (!this.zzaax.isFinishing() || this.zzdtc == null)) {
            this.zzdkm.onPause();
        }
        zzwj();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onResume() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzduf != null) {
            this.zzdtb.zzduf.onResume();
        }
        zza(this.zzaax.getResources().getConfiguration());
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42754cK)).booleanValue()) {
            adt adtVar = this.zzdkm;
            if (adtVar == null || adtVar.mo13802H()) {
                zzd.zzez("The webview does not exist. Ignoring action.");
            } else {
                this.zzdkm.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdth);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onStart() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42754cK)).booleanValue()) {
            adt adtVar = this.zzdkm;
            if (adtVar == null || adtVar.mo13802H()) {
                zzd.zzez("The webview does not exist. Ignoring action.");
            } else {
                this.zzdkm.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onStop() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42754cK)).booleanValue() && this.zzdkm != null && (!this.zzaax.isFinishing() || this.zzdtc == null)) {
            this.zzdkm.onPause();
        }
        zzwj();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onUserLeaveHint() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzduf == null) {
            return;
        }
        this.zzdtb.zzduf.onUserLeaveHint();
    }

    public final void setRequestedOrientation(int i) {
        if (this.zzaax.getApplicationInfo().targetSdkVersion >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42798dB)).intValue()) {
            if (this.zzaax.getApplicationInfo().targetSdkVersion <= ((Integer) ekb.m14831e().m18571a(C12187aq.f42799dC)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42800dD)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) ekb.m14831e().m18571a(C12187aq.f42801dE)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzaax.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzr.zzkz().m13977b(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.zzaax);
        this.zzdtf = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.zzdtf.addView(view, -1, -1);
        this.zzaax.setContentView(this.zzdtf);
        this.zzdto = true;
        this.zzdtg = customViewCallback;
        this.zzdte = true;
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        boolean z3 = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42645aH)).booleanValue() && (adOverlayInfoParcel2 = this.zzdtb) != null && adOverlayInfoParcel2.zzdum != null && this.zzdtb.zzdum.zzbpv;
        boolean z4 = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42646aI)).booleanValue() && (adOverlayInfoParcel = this.zzdtb) != null && adOverlayInfoParcel.zzdum != null && this.zzdtb.zzdum.zzbpw;
        if (z && z2 && z3 && !z4) {
            new C12843qa(this.zzdkm, "useCustomClose").m14244a("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzr zzrVar = this.zzdtd;
        if (zzrVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzrVar.zzap(z5);
        }
    }

    public final void zzac(boolean z) {
        if (z) {
            this.zzdti.setBackgroundColor(0);
        } else {
            this.zzdti.setBackgroundColor(-16777216);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void zzae(AbstractC12126b abstractC12126b) {
        zza((Configuration) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void zzdq() {
        this.zzdto = true;
    }

    public final void zzwf() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel != null && this.zzdte) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.zzdtf != null) {
            this.zzaax.setContentView(this.zzdti);
            this.zzdto = true;
            this.zzdtf.removeAllViews();
            this.zzdtf = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzdtg;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzdtg = null;
        }
        this.zzdte = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzab
    public final void zzwg() {
        this.zzdtk = zzl.CLOSE_BUTTON;
        this.zzaax.finish();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final boolean zzwh() {
        this.zzdtk = zzl.BACK_BUTTON;
        adt adtVar = this.zzdkm;
        if (adtVar == null) {
            return true;
        }
        boolean mo13800J = adtVar.mo13800J();
        if (!mo13800J) {
            this.zzdkm.mo13770a("onbackblocked", Collections.emptyMap());
        }
        return mo13800J;
    }

    public final void zzwi() {
        this.zzdti.removeView(this.zzdtd);
        zzan(true);
    }

    public final void zzwk() {
        if (this.zzdtq) {
            return;
        }
        this.zzdtq = true;
        adt adtVar = this.zzdkm;
        if (adtVar != null) {
            this.zzdti.removeView(adtVar.mo13731s());
            zzk zzkVar = this.zzdtc;
            if (zzkVar != null) {
                this.zzdkm.mo13788a(zzkVar.context);
                this.zzdkm.mo13756b(false);
                this.zzdtc.parent.addView(this.zzdkm.mo13731s(), this.zzdtc.index, this.zzdtc.zzdtv);
                this.zzdtc = null;
            } else if (this.zzaax.getApplicationContext() != null) {
                this.zzdkm.mo13788a(this.zzaax.getApplicationContext());
            }
            this.zzdkm = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdtb;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzduf != null) {
            this.zzdtb.zzduf.zza(this.zzdtk);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdtb;
        if (adOverlayInfoParcel2 == null || adOverlayInfoParcel2.zzdkm == null) {
            return;
        }
        zzc(this.zzdtb.zzdkm.mo13804F(), this.zzdtb.zzdkm.mo13731s());
    }

    public final void zzwl() {
        if (this.zzdtj) {
            this.zzdtj = false;
            zzwm();
        }
    }

    public final void zzwn() {
        this.zzdti.zzdtt = true;
    }

    public final void zzwo() {
        synchronized (this.zzdtl) {
            this.zzdtn = true;
            if (this.zzdtm != null) {
                zzj.zzegq.removeCallbacks(this.zzdtm);
                zzj.zzegq.post(this.zzdtm);
            }
        }
    }
}
