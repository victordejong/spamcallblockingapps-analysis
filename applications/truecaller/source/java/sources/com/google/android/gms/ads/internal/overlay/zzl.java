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
import com.amazon.device.ads.MraidUseCustomCloseCommand;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbor;
import com.google.android.gms.internal.ads.zzbot;
import com.google.android.gms.internal.ads.zzbyp;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzcml;
import com.google.android.gms.internal.ads.zzcmx;
import com.google.android.gms.internal.ads.zzcnx;
import com.google.android.gms.internal.ads.zzcnz;
import com.google.android.gms.internal.ads.zzcob;
import com.google.android.gms.internal.ads.zzedy;
import com.google.android.gms.internal.ads.zzfla;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzl.class */
public class zzl extends zzbzp implements zzz {
    @VisibleForTesting
    public static final int zza = Color.argb(0, 0, 0, 0);
    public final Activity zzb;
    @VisibleForTesting
    public AdOverlayInfoParcel zzc;
    @VisibleForTesting
    public zzcml zzd;
    @VisibleForTesting
    public zzh zze;
    @VisibleForTesting
    public zzq zzf;
    @VisibleForTesting
    public FrameLayout zzh;
    @VisibleForTesting
    public WebChromeClient.CustomViewCallback zzi;
    @VisibleForTesting
    public zzg zzl;
    private Runnable zzp;
    private boolean zzq;
    private boolean zzr;
    @VisibleForTesting
    public boolean zzg = false;
    @VisibleForTesting
    public boolean zzj = false;
    @VisibleForTesting
    public boolean zzk = false;
    @VisibleForTesting
    public boolean zzm = false;
    @VisibleForTesting
    public int zzn = 1;
    private final Object zzo = new Object();
    private boolean zzs = false;
    private boolean zzt = false;
    private boolean zzu = true;

    public zzl(Activity activity) {
        this.zzb = activity;
    }

    private final void zzG(Configuration configuration) {
        boolean z;
        boolean z2;
        zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        boolean z3 = (adOverlayInfoParcel == null || (zzjVar = adOverlayInfoParcel.zzo) == null || !zzjVar.zzb) ? false : true;
        boolean zzo = zzt.zze().zzo(this.zzb, configuration);
        if ((!this.zzk || z3) && !zzo) {
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
            z2 = true;
            z = false;
            if (adOverlayInfoParcel2 != null) {
                zzj zzjVar2 = adOverlayInfoParcel2.zzo;
                z2 = true;
                z = false;
                if (zzjVar2 != null) {
                    z2 = true;
                    z = false;
                    if (zzjVar2.zzg) {
                        z = true;
                        z2 = true;
                    }
                }
            }
        } else {
            z2 = false;
            z = false;
        }
        Window window = this.zzb.getWindow();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaM)).booleanValue()) {
            window.getDecorView().setSystemUiVisibility(z2 ? z ? 5894 : 5380 : 256);
        } else if (!z2) {
            window.addFlags(2048);
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (!z) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    private static final void zzH(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        zzt.zzr().zzh(iObjectWrapper, view);
    }

    @VisibleForTesting
    public final void zzA() {
        zzcml zzcmlVar;
        zzo zzoVar;
        if (this.zzt) {
            return;
        }
        this.zzt = true;
        zzcml zzcmlVar2 = this.zzd;
        if (zzcmlVar2 != null) {
            this.zzl.removeView(zzcmlVar2.zzH());
            zzh zzhVar = this.zze;
            if (zzhVar != null) {
                this.zzd.zzai(zzhVar.zzd);
                this.zzd.zzag(false);
                ViewGroup viewGroup = this.zze.zzc;
                View zzH = this.zzd.zzH();
                zzh zzhVar2 = this.zze;
                viewGroup.addView(zzH, zzhVar2.zza, zzhVar2.zzb);
                this.zze = null;
            } else if (this.zzb.getApplicationContext() != null) {
                this.zzd.zzai(this.zzb.getApplicationContext());
            }
            this.zzd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzbs(this.zzn);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 == null || (zzcmlVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        zzH(zzcmlVar.zzV(), this.zzc.zzd.zzH());
    }

    public final void zzB() {
        if (this.zzm) {
            this.zzm = false;
            zzC();
        }
    }

    public final void zzC() {
        this.zzd.zzK();
    }

    public final void zzD() {
        this.zzl.zzb = true;
    }

    public final void zzE() {
        synchronized (this.zzo) {
            this.zzq = true;
            Runnable runnable = this.zzp;
            if (runnable != null) {
                zzfla zzflaVar = zzs.zza;
                zzflaVar.removeCallbacks(runnable);
                zzflaVar.post(this.zzp);
            }
        }
    }

    public final void zzb() {
        this.zzn = 3;
        this.zzb.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        this.zzb.overridePendingTransition(0, 0);
    }

    public final void zzc() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzw(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzr = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzd() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zze() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzf() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzoVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzoVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final boolean zzg() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzZ = this.zzd.zzZ();
        if (!zzZ) {
            this.zzd.zze("onbackblocked", Collections.emptyMap());
        }
        return zzZ;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r0 != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0088, B:25:0x0090, B:27:0x0096, B:29:0x009d, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a7 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0088, B:25:0x0090, B:27:0x0096, B:29:0x009d, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    @Override // com.google.android.gms.internal.ads.zzbzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzh(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzl.zzh(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzj() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdl)).booleanValue()) {
            zzcml zzcmlVar = this.zzd;
            if (zzcmlVar == null || zzcmlVar.zzX()) {
                zzcgt.zzi("The webview does not exist. Ignoring action.");
            } else {
                this.zzd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzk() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzbr();
        }
        zzG(this.zzb.getResources().getConfiguration());
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdl)).booleanValue()) {
            zzcml zzcmlVar = this.zzd;
            if (zzcmlVar == null || zzcmlVar.zzX()) {
                zzcgt.zzi("The webview does not exist. Ignoring action.");
            } else {
                this.zzd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzl() {
        zzo zzoVar;
        zzc();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzbq();
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdl)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzm(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzn(IObjectWrapper iObjectWrapper) {
        zzG((Configuration) ObjectWrapper.m38746B1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzo(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzp() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdl)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzq() {
        zzcml zzcmlVar = this.zzd;
        if (zzcmlVar != null) {
            try {
                this.zzl.removeView(zzcmlVar.zzH());
            } catch (NullPointerException e) {
            }
        }
        zzz();
    }

    public final void zzr(boolean z) {
        int intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzdn)).intValue();
        boolean z2 = ((Boolean) zzbet.zzc().zzc(zzbjl.zzaL)).booleanValue() || z;
        zzp zzpVar = new zzp();
        zzpVar.zzd = 50;
        zzpVar.zza = true != z2 ? 0 : intValue;
        int i = 0;
        if (true != z2) {
            i = intValue;
        }
        zzpVar.zzb = i;
        zzpVar.zzc = intValue;
        this.zzf = new zzq(this.zzb, zzpVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzt(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzs() {
        this.zzr = true;
    }

    public final void zzt(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzj zzjVar2;
        boolean z3 = ((Boolean) zzbet.zzc().zzc(zzbjl.zzaJ)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzjVar2 = adOverlayInfoParcel2.zzo) != null && zzjVar2.zzh;
        boolean z4 = ((Boolean) zzbet.zzc().zzc(zzbjl.zzaK)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzjVar = adOverlayInfoParcel.zzo) != null && zzjVar.zzi;
        if (z && z2 && z3 && !z4) {
            new zzbyp(this.zzd, MraidUseCustomCloseCommand.NAME).zzf("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzq zzqVar = this.zzf;
        if (zzqVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzqVar.zza(z5);
        }
    }

    public final void zzu(boolean z) {
        if (z) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(-16777216);
        }
    }

    public final void zzv() {
        this.zzl.removeView(this.zzf);
        zzr(true);
    }

    public final void zzw(int i) {
        if (this.zzb.getApplicationInfo().targetSdkVersion >= ((Integer) zzbet.zzc().zzc(zzbjl.zzem)).intValue()) {
            if (this.zzb.getApplicationInfo().targetSdkVersion <= ((Integer) zzbet.zzc().zzc(zzbjl.zzen)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbet.zzc().zzc(zzbjl.zzeo)).intValue()) {
                    if (i2 <= ((Integer) zzbet.zzc().zzc(zzbjl.zzep)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzb.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzt.zzg().zzl(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzx(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.zzb);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.zzh.addView(view, -1, -1);
        this.zzb.setContentView(this.zzh);
        this.zzr = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    public final void zzy(boolean z) throws zzf {
        if (!this.zzr) {
            this.zzb.requestWindowFeature(1);
        }
        Window window = this.zzb.getWindow();
        if (window != null) {
            zzcml zzcmlVar = this.zzc.zzd;
            zzcnz zzR = zzcmlVar != null ? zzcmlVar.zzR() : null;
            boolean z2 = zzR != null && zzR.zzd();
            this.zzm = false;
            boolean z3 = false;
            if (z2) {
                int i = this.zzc.zzj;
                if (i == 6) {
                    z3 = false;
                    if (this.zzb.getResources().getConfiguration().orientation == 1) {
                        z3 = true;
                    }
                    this.zzm = z3;
                } else {
                    z3 = false;
                    if (i == 7) {
                        z3 = false;
                        if (this.zzb.getResources().getConfiguration().orientation == 2) {
                            z3 = true;
                        }
                        this.zzm = z3;
                    }
                }
            }
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z3);
            zzcgt.zzd(sb.toString());
            zzw(this.zzc.zzj);
            window.setFlags(16777216, 16777216);
            zzcgt.zzd("Hardware acceleration on the AdActivity window enabled.");
            if (!this.zzk) {
                this.zzl.setBackgroundColor(-16777216);
            } else {
                this.zzl.setBackgroundColor(zza);
            }
            this.zzb.setContentView(this.zzl);
            this.zzr = true;
            if (z) {
                try {
                    zzt.zzd();
                    Activity activity = this.zzb;
                    zzcml zzcmlVar2 = this.zzc.zzd;
                    zzcob zzP = zzcmlVar2 != null ? zzcmlVar2.zzP() : null;
                    zzcml zzcmlVar3 = this.zzc.zzd;
                    String zzQ = zzcmlVar3 != null ? zzcmlVar3.zzQ() : null;
                    AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                    zzcgz zzcgzVar = adOverlayInfoParcel.zzm;
                    zzcml zzcmlVar4 = adOverlayInfoParcel.zzd;
                    zzcml zza2 = zzcmx.zza(activity, zzP, zzQ, true, z2, null, null, zzcgzVar, null, null, zzcmlVar4 != null ? zzcmlVar4.zzk() : null, zzazb.zza(), null, null);
                    this.zzd = zza2;
                    zzcnz zzR2 = zza2.zzR();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                    zzbor zzborVar = adOverlayInfoParcel2.zzp;
                    zzbot zzbotVar = adOverlayInfoParcel2.zze;
                    zzv zzvVar = adOverlayInfoParcel2.zzi;
                    zzcml zzcmlVar5 = adOverlayInfoParcel2.zzd;
                    zzb zzbVar = null;
                    if (zzcmlVar5 != null) {
                        zzbVar = zzcmlVar5.zzR().zzc();
                    }
                    zzR2.zzL(null, zzborVar, null, zzbotVar, zzvVar, true, null, zzbVar, null, null, null, null, null, null, null, null);
                    this.zzd.zzR().zzy(new zzcnx(this) { // from class: com.google.android.gms.ads.internal.overlay.zzd
                        private final zzl zza;

                        {
                            this.zza = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzcnx
                        public final void zza(boolean z4) {
                            zzcml zzcmlVar6 = this.zza.zzd;
                            if (zzcmlVar6 != null) {
                                zzcmlVar6.zzK();
                            }
                        }
                    });
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
                    String str = adOverlayInfoParcel3.zzl;
                    if (str != null) {
                        this.zzd.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel3.zzh;
                        if (str2 == null) {
                            throw new zzf("No URL or HTML to display in ad overlay.");
                        }
                        this.zzd.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str2, "text/html", StringConstant.UTF8, null);
                    }
                    zzcml zzcmlVar6 = this.zzc.zzd;
                    if (zzcmlVar6 != null) {
                        zzcmlVar6.zzam(this);
                    }
                } catch (Exception e) {
                    zzcgt.zzg("Error obtaining webview.", e);
                    throw new zzf("Could not obtain webview for the overlay.");
                }
            } else {
                zzcml zzcmlVar7 = this.zzc.zzd;
                this.zzd = zzcmlVar7;
                zzcmlVar7.zzai(this.zzb);
            }
            this.zzd.zzae(this);
            zzcml zzcmlVar8 = this.zzc.zzd;
            if (zzcmlVar8 != null) {
                zzH(zzcmlVar8.zzV(), this.zzl);
            }
            if (this.zzc.zzk != 5) {
                ViewParent parent = this.zzd.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.zzd.zzH());
                }
                if (this.zzk) {
                    this.zzd.zzas();
                }
                this.zzl.addView(this.zzd.zzH(), -1, -1);
            }
            if (!z && !this.zzm) {
                zzC();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.zzc;
            if (adOverlayInfoParcel4.zzk == 5) {
                zzedy.zzc(this.zzb, this, adOverlayInfoParcel4.zzu, adOverlayInfoParcel4.zzr, adOverlayInfoParcel4.zzs, adOverlayInfoParcel4.zzt, adOverlayInfoParcel4.zzq, adOverlayInfoParcel4.zzv);
                return;
            }
            zzr(z2);
            if (!this.zzd.zzT()) {
                return;
            }
            zzt(z2, true);
            return;
        }
        throw new zzf("Invalid activity, no window available.");
    }

    public final void zzz() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzo zzoVar;
        if (!this.zzb.isFinishing() || this.zzs) {
            return;
        }
        this.zzs = true;
        zzcml zzcmlVar = this.zzd;
        if (zzcmlVar != null) {
            zzcmlVar.zzJ(this.zzn - 1);
            synchronized (this.zzo) {
                if (!this.zzq && this.zzd.zzaa()) {
                    if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdj)).booleanValue() && !this.zzt && (adOverlayInfoParcel = this.zzc) != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
                        zzoVar.zzd();
                    }
                    Runnable runnable = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zze
                        private final zzl zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzA();
                        }
                    };
                    this.zzp = runnable;
                    zzs.zza.postDelayed(runnable, ((Long) zzbet.zzc().zzc(zzbjl.zzaI)).longValue());
                    return;
                }
            }
        }
        zzA();
    }
}
