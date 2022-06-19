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
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzahi;
import com.google.android.gms.internal.ads.zzahk;
import com.google.android.gms.internal.ads.zzaqq;
import com.google.android.gms.internal.ads.zzarr;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbfq;
import com.google.android.gms.internal.ads.zzcrb;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzwr;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public class zzc extends zzarr implements zzz {
    private static final int zzdrk = Color.argb(0, 0, 0, 0);
    protected final Activity zzaas;
    zzbeb zzdjd;
    AdOverlayInfoParcel zzdrl;
    private zzi zzdrm;
    private zzp zzdrn;
    private FrameLayout zzdrp;
    private WebChromeClient.CustomViewCallback zzdrq;
    private zzj zzdrs;
    private Runnable zzdrw;
    private boolean zzdrx;
    private boolean zzdry;
    private boolean zzdro = false;
    private boolean zzdrr = false;
    private boolean zzbpe = false;
    private boolean zzdrt = false;
    zzn zzdru = zzn.BACK_BUTTON;
    private final Object zzdrv = new Object();
    private boolean zzdrz = false;
    private boolean zzdsa = false;
    private boolean zzdsb = true;

    public zzc(Activity activity) {
        this.zzaas = activity;
    }

    private final void zza(Configuration configuration) {
        boolean z;
        boolean z2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdrl;
        boolean z3 = (adOverlayInfoParcel == null || adOverlayInfoParcel.zzdtc == null || !this.zzdrl.zzdtc.zzbpf) ? false : true;
        boolean zza = zzr.zzkt().zza(this.zzaas, configuration);
        if ((!this.zzbpe || z3) && !zza) {
            z2 = true;
            z = false;
            if (Build.VERSION.SDK_INT >= 19) {
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdrl;
                z2 = true;
                z = false;
                if (adOverlayInfoParcel2 != null) {
                    z2 = true;
                    z = false;
                    if (adOverlayInfoParcel2.zzdtc != null) {
                        z2 = true;
                        z = false;
                        if (this.zzdrl.zzdtc.zzbpk) {
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
        Window window = this.zzaas.getWindow();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpt)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
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
            window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        }
    }

    private final void zzaj(boolean z) {
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvf)).intValue();
        zzs zzsVar = new zzs();
        zzsVar.size = 50;
        zzsVar.paddingLeft = z ? intValue : 0;
        zzsVar.paddingRight = z ? 0 : intValue;
        zzsVar.paddingTop = 0;
        zzsVar.paddingBottom = intValue;
        this.zzdrn = new zzp(this.zzaas, zzsVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzdrl.zzdsx);
        this.zzdrs.addView(this.zzdrn, layoutParams);
    }

    private final void zzak(boolean z) throws zzg {
        if (!this.zzdry) {
            this.zzaas.requestWindowFeature(1);
        }
        Window window = this.zzaas.getWindow();
        if (window != null) {
            zzbfn zzacx = this.zzdrl.zzdjd != null ? this.zzdrl.zzdjd.zzacx() : null;
            boolean z2 = false;
            boolean z3 = zzacx != null && zzacx.zzadp();
            this.zzdrt = false;
            if (z3) {
                if (this.zzdrl.orientation == 6) {
                    if (this.zzaas.getResources().getConfiguration().orientation == 1) {
                        z2 = true;
                    }
                    this.zzdrt = z2;
                } else if (this.zzdrl.orientation == 7) {
                    boolean z4 = false;
                    if (this.zzaas.getResources().getConfiguration().orientation == 2) {
                        z4 = true;
                    }
                    this.zzdrt = z4;
                }
            }
            boolean z5 = this.zzdrt;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z5);
            zzd.zzdy(sb.toString());
            setRequestedOrientation(this.zzdrl.orientation);
            window.setFlags(16777216, 16777216);
            zzd.zzdy("Hardware acceleration on the AdActivity window enabled.");
            if (!this.zzbpe) {
                this.zzdrs.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            } else {
                this.zzdrs.setBackgroundColor(zzdrk);
            }
            this.zzaas.setContentView(this.zzdrs);
            this.zzdry = true;
            if (z) {
                try {
                    zzr.zzks();
                    zzbeb zza = zzbej.zza(this.zzaas, this.zzdrl.zzdjd != null ? this.zzdrl.zzdjd.zzacv() : null, this.zzdrl.zzdjd != null ? this.zzdrl.zzdjd.zzacw() : null, true, z3, null, null, this.zzdrl.zzbpn, null, null, this.zzdrl.zzdjd != null ? this.zzdrl.zzdjd.zzabf() : null, zztu.zznf(), null, null);
                    this.zzdjd = zza;
                    zzbfn zzacx2 = zza.zzacx();
                    zzahi zzahiVar = this.zzdrl.zzdgz;
                    zzahk zzahkVar = this.zzdrl.zzdha;
                    zzv zzvVar = this.zzdrl.zzdsz;
                    zza zzaVar = null;
                    if (this.zzdrl.zzdjd != null) {
                        zzaVar = this.zzdrl.zzdjd.zzacx().zzado();
                    }
                    zzacx2.zza(null, zzahiVar, null, zzahkVar, zzvVar, true, null, zzaVar, null, null, null, null, null, null);
                    this.zzdjd.zzacx().zza(new zzbfq(this) { // from class: com.google.android.gms.ads.internal.overlay.zzf
                        private final zzc zzdsh;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzdsh = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbfq
                        public final void zzal(boolean z6) {
                            zzc zzcVar = this.zzdsh;
                            if (zzcVar.zzdjd != null) {
                                zzcVar.zzdjd.zzwb();
                            }
                        }
                    });
                    if (this.zzdrl.url != null) {
                        this.zzdjd.loadUrl(this.zzdrl.url);
                    } else if (this.zzdrl.zzdsy == null) {
                        throw new zzg("No URL or HTML to display in ad overlay.");
                    } else {
                        this.zzdjd.loadDataWithBaseURL(this.zzdrl.zzdsw, this.zzdrl.zzdsy, "text/html", POBCommonConstants.URL_ENCODING, null);
                    }
                    if (this.zzdrl.zzdjd != null) {
                        this.zzdrl.zzdjd.zzb(this);
                    }
                } catch (Exception e) {
                    zzd.zzc("Error obtaining webview.", e);
                    throw new zzg("Could not obtain webview for the overlay.");
                }
            } else {
                zzbeb zzbebVar = this.zzdrl.zzdjd;
                this.zzdjd = zzbebVar;
                zzbebVar.zzbv(this.zzaas);
            }
            this.zzdjd.zza(this);
            if (this.zzdrl.zzdjd != null) {
                zzc(this.zzdrl.zzdjd.zzadb(), this.zzdrs);
            }
            if (this.zzdrl.zzdta != 5) {
                ViewParent parent = this.zzdjd.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.zzdjd.getView());
                }
                if (this.zzbpe) {
                    this.zzdjd.zzadj();
                }
                this.zzdrs.addView(this.zzdjd.getView(), -1, -1);
            }
            if (!z && !this.zzdrt) {
                zzwb();
            }
            if (this.zzdrl.zzdta == 5) {
                zzcrb.zza(this.zzaas, this, this.zzdrl.zzdte, this.zzdrl.zzdtd, this.zzdrl.zzdib, this.zzdrl.zzdic, this.zzdrl.zzbvs, this.zzdrl.zzdtf);
                return;
            }
            zzaj(z3);
            if (!this.zzdjd.zzacz()) {
                return;
            }
            zza(z3, true);
            return;
        }
        throw new zzg("Invalid activity, no window available.");
    }

    private static void zzc(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        zzr.zzlg().zza(iObjectWrapper, view);
    }

    private final void zzvy() {
        if (!this.zzaas.isFinishing() || this.zzdrz) {
            return;
        }
        this.zzdrz = true;
        if (this.zzdjd != null) {
            this.zzdjd.zzdu(this.zzdru.zzwf());
            synchronized (this.zzdrv) {
                if (!this.zzdrx && this.zzdjd.zzadf()) {
                    this.zzdrw = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zze
                        private final zzc zzdsh;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzdsh = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzdsh.zzvz();
                        }
                    };
                    zzj.zzeen.postDelayed(this.zzdrw, ((Long) zzwr.zzqr().zzd(zzabp.zzcpq)).longValue());
                    return;
                }
            }
        }
        zzvz();
    }

    private final void zzwb() {
        this.zzdjd.zzwb();
    }

    public final void close() {
        this.zzdru = zzn.CUSTOM_CLOSE;
        this.zzaas.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdrl;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzdta != 5) {
            return;
        }
        this.zzaas.overridePendingTransition(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() {
        this.zzdru = zzn.BACK_BUTTON;
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public void onCreate(Bundle bundle) {
        this.zzaas.requestWindowFeature(1);
        this.zzdrr = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(this.zzaas.getIntent());
            this.zzdrl = zzd;
            if (zzd == null) {
                throw new zzg("Could not get info for ad overlay.");
            }
            if (zzd.zzbpn.zzehz > 7500000) {
                this.zzdru = zzn.OTHER;
            }
            if (this.zzaas.getIntent() != null) {
                this.zzdsb = this.zzaas.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzdrl.zzdtc != null) {
                this.zzbpe = this.zzdrl.zzdtc.zzbpe;
            } else if (this.zzdrl.zzdta == 5) {
                this.zzbpe = true;
            } else {
                this.zzbpe = false;
            }
            if (this.zzbpe && this.zzdrl.zzdta != 5 && this.zzdrl.zzdtc.zzbpj != -1) {
                new zzl(this).zzye();
            }
            if (bundle == null) {
                if (this.zzdrl.zzdsv != null && this.zzdsb) {
                    this.zzdrl.zzdsv.zzvo();
                }
                if (this.zzdrl.zzdta != 1 && this.zzdrl.zzchd != null) {
                    this.zzdrl.zzchd.onAdClicked();
                }
            }
            zzj zzjVar = new zzj(this.zzaas, this.zzdrl.zzdtb, this.zzdrl.zzbpn.zzbrp);
            this.zzdrs = zzjVar;
            zzjVar.setId(1000);
            zzr.zzkt().zzi(this.zzaas);
            int i = this.zzdrl.zzdta;
            if (i == 1) {
                zzak(false);
            } else if (i == 2) {
                this.zzdrm = new zzi(this.zzdrl.zzdjd);
                zzak(false);
            } else if (i == 3) {
                zzak(true);
            } else if (i != 5) {
                throw new zzg("Could not determine ad overlay type.");
            } else {
                zzak(false);
            }
        } catch (zzg e) {
            zzd.zzex(e.getMessage());
            this.zzdru = zzn.OTHER;
            this.zzaas.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            try {
                this.zzdrs.removeView(zzbebVar.getView());
            } catch (NullPointerException e) {
            }
        }
        zzvy();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() {
        zzvu();
        if (this.zzdrl.zzdsv != null) {
            this.zzdrl.zzdsv.onPause();
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue() && this.zzdjd != null && (!this.zzaas.isFinishing() || this.zzdrm == null)) {
            this.zzdjd.onPause();
        }
        zzvy();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() {
        if (this.zzdrl.zzdsv != null) {
            this.zzdrl.zzdsv.onResume();
        }
        zza(this.zzaas.getResources().getConfiguration());
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue()) {
            zzbeb zzbebVar = this.zzdjd;
            if (zzbebVar == null || zzbebVar.isDestroyed()) {
                zzd.zzex("The webview does not exist. Ignoring action.");
            } else {
                this.zzdjd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdrr);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue()) {
            zzbeb zzbebVar = this.zzdjd;
            if (zzbebVar == null || zzbebVar.isDestroyed()) {
                zzd.zzex("The webview does not exist. Ignoring action.");
            } else {
                this.zzdjd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue() && this.zzdjd != null && (!this.zzaas.isFinishing() || this.zzdrm == null)) {
            this.zzdjd.onPause();
        }
        zzvy();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() {
        if (this.zzdrl.zzdsv != null) {
            this.zzdrl.zzdsv.onUserLeaveHint();
        }
    }

    public final void setRequestedOrientation(int i) {
        if (this.zzaas.getApplicationInfo().targetSdkVersion >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxm)).intValue()) {
            if (this.zzaas.getApplicationInfo().targetSdkVersion <= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxn)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxo)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxp)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzaas.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzr.zzkv().zzb(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.zzaas);
        this.zzdrp = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzdrp.addView(view, -1, -1);
        this.zzaas.setContentView(this.zzdrp);
        this.zzdry = true;
        this.zzdrq = customViewCallback;
        this.zzdro = true;
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        boolean z3 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcpr)).booleanValue() && (adOverlayInfoParcel2 = this.zzdrl) != null && adOverlayInfoParcel2.zzdtc != null && this.zzdrl.zzdtc.zzbpl;
        boolean z4 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcps)).booleanValue() && (adOverlayInfoParcel = this.zzdrl) != null && adOverlayInfoParcel.zzdtc != null && this.zzdrl.zzdtc.zzbpm;
        if (z && z2 && z3 && !z4) {
            new zzaqq(this.zzdjd, "useCustomClose").zzds("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzp zzpVar = this.zzdrn;
        if (zzpVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzpVar.zzam(z5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(IObjectWrapper iObjectWrapper) {
        zza((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() {
        this.zzdry = true;
    }

    public final void zzvu() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdrl;
        if (adOverlayInfoParcel != null && this.zzdro) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.zzdrp != null) {
            this.zzaas.setContentView(this.zzdrs);
            this.zzdry = true;
            this.zzdrp.removeAllViews();
            this.zzdrp = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzdrq;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzdrq = null;
        }
        this.zzdro = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzvv() {
        this.zzdru = zzn.CLOSE_BUTTON;
        this.zzaas.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() {
        this.zzdru = zzn.BACK_BUTTON;
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar == null) {
            return true;
        }
        boolean zzade = zzbebVar.zzade();
        if (!zzade) {
            this.zzdjd.zza("onbackblocked", Collections.emptyMap());
        }
        return zzade;
    }

    public final void zzvx() {
        this.zzdrs.removeView(this.zzdrn);
        zzaj(true);
    }

    public final void zzvz() {
        if (this.zzdsa) {
            return;
        }
        this.zzdsa = true;
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            this.zzdrs.removeView(zzbebVar.getView());
            zzi zziVar = this.zzdrm;
            if (zziVar != null) {
                this.zzdjd.zzbv(zziVar.context);
                this.zzdjd.zzay(false);
                this.zzdrm.parent.addView(this.zzdjd.getView(), this.zzdrm.index, this.zzdrm.zzdsi);
                this.zzdrm = null;
            } else if (this.zzaas.getApplicationContext() != null) {
                this.zzdjd.zzbv(this.zzaas.getApplicationContext());
            }
            this.zzdjd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdrl;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzdsv != null) {
            this.zzdrl.zzdsv.zza(this.zzdru);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdrl;
        if (adOverlayInfoParcel2 == null || adOverlayInfoParcel2.zzdjd == null) {
            return;
        }
        zzc(this.zzdrl.zzdjd.zzadb(), this.zzdrl.zzdjd.getView());
    }

    public final void zzwa() {
        if (this.zzdrt) {
            this.zzdrt = false;
            zzwb();
        }
    }

    public final void zzwc() {
        this.zzdrs.zzdsk = true;
    }

    public final void zzwd() {
        synchronized (this.zzdrv) {
            this.zzdrx = true;
            if (this.zzdrw != null) {
                zzj.zzeen.removeCallbacks(this.zzdrw);
                zzj.zzeen.post(this.zzdrw);
            }
        }
    }
}
