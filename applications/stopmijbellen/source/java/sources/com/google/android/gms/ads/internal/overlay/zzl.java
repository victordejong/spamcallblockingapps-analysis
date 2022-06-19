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
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbay;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbqt;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcbr;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcop;
import com.google.android.gms.internal.ads.zzcpb;
import com.google.android.gms.internal.ads.zzcqa;
import com.google.android.gms.internal.ads.zzcqc;
import com.google.android.gms.internal.ads.zzcqe;
import com.google.android.gms.internal.ads.zzehp;
import com.google.android.gms.internal.ads.zzfpj;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzl.class */
public class zzl extends zzcbr implements zzaa {
    @VisibleForTesting
    public static final int zza = Color.argb(0, 0, 0, 0);
    public final Activity zzb;
    @VisibleForTesting
    public AdOverlayInfoParcel zzc;
    @VisibleForTesting
    public zzcop zzd;
    @VisibleForTesting
    public zzh zze;
    @VisibleForTesting
    public zzr zzf;
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
        boolean zzo = zzt.zzq().zzo(this.zzb, configuration);
        if ((!this.zzk || z3) && !zzo) {
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
            z = true;
            z2 = false;
            if (adOverlayInfoParcel2 != null) {
                zzj zzjVar2 = adOverlayInfoParcel2.zzo;
                z = true;
                z2 = false;
                if (zzjVar2 != null) {
                    z = true;
                    z2 = false;
                    if (zzjVar2.zzg) {
                        z2 = true;
                        z = true;
                    }
                }
            }
        } else {
            z = false;
            z2 = false;
        }
        Window window = this.zzb.getWindow();
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaS)).booleanValue()) {
            window.getDecorView().setSystemUiVisibility(z ? z2 ? 5894 : 5380 : 256);
        } else if (!z) {
            window.addFlags(2048);
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (!z2) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    private static final void zzH(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        zzt.zzh().zzg(iObjectWrapper, view);
    }

    public final void zzA(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.zzb);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.zzh.addView(view, -1, -1);
        this.zzb.setContentView(this.zzh);
        this.zzr = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    public final void zzB(boolean z) throws zzf {
        if (!this.zzr) {
            this.zzb.requestWindowFeature(1);
        }
        Window window = this.zzb.getWindow();
        if (window != null) {
            zzcop zzcopVar = this.zzc.zzd;
            zzcqc zzP = zzcopVar != null ? zzcopVar.zzP() : null;
            boolean z2 = zzP != null && zzP.zzJ();
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
            zzciz.zze(sb.toString());
            zzy(this.zzc.zzj);
            window.setFlags(16777216, 16777216);
            zzciz.zze("Hardware acceleration on the AdActivity window enabled.");
            if (!this.zzk) {
                this.zzl.setBackgroundColor(-16777216);
            } else {
                this.zzl.setBackgroundColor(zza);
            }
            this.zzb.setContentView(this.zzl);
            this.zzr = true;
            if (z) {
                try {
                    zzt.zzz();
                    Activity activity = this.zzb;
                    zzcop zzcopVar2 = this.zzc.zzd;
                    zzcqe zzQ = zzcopVar2 != null ? zzcopVar2.zzQ() : null;
                    zzcop zzcopVar3 = this.zzc.zzd;
                    String zzU = zzcopVar3 != null ? zzcopVar3.zzU() : null;
                    AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                    zzcjf zzcjfVar = adOverlayInfoParcel.zzm;
                    zzcop zzcopVar4 = adOverlayInfoParcel.zzd;
                    zzcop zza2 = zzcpb.zza(activity, zzQ, zzU, true, z2, null, null, zzcjfVar, null, null, zzcopVar4 != null ? zzcopVar4.zzm() : null, zzbay.zza(), null, null);
                    this.zzd = zza2;
                    zzcqc zzP2 = zza2.zzP();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                    zzbqt zzbqtVar = adOverlayInfoParcel2.zzp;
                    zzbqv zzbqvVar = adOverlayInfoParcel2.zze;
                    zzw zzwVar = adOverlayInfoParcel2.zzi;
                    zzcop zzcopVar5 = adOverlayInfoParcel2.zzd;
                    zzb zzbVar = null;
                    if (zzcopVar5 != null) {
                        zzbVar = zzcopVar5.zzP().zzd();
                    }
                    zzP2.zzL(null, zzbqtVar, null, zzbqvVar, zzwVar, true, null, zzbVar, null, null, null, null, null, null, null, null);
                    this.zzd.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                        @Override // com.google.android.gms.internal.ads.zzcqa
                        public final void zza(boolean z4) {
                            zzcop zzcopVar6 = zzl.this.zzd;
                            if (zzcopVar6 != null) {
                                zzcopVar6.zzZ();
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
                        this.zzd.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str2, "text/html", "UTF-8", null);
                    }
                    zzcop zzcopVar6 = this.zzc.zzd;
                    if (zzcopVar6 != null) {
                        zzcopVar6.zzat(this);
                    }
                } catch (Exception e) {
                    zzciz.zzh("Error obtaining webview.", e);
                    throw new zzf("Could not obtain webview for the overlay.");
                }
            } else {
                zzcop zzcopVar7 = this.zzc.zzd;
                this.zzd = zzcopVar7;
                zzcopVar7.zzam(this.zzb);
            }
            this.zzd.zzah(this);
            zzcop zzcopVar8 = this.zzc.zzd;
            if (zzcopVar8 != null) {
                zzH(zzcopVar8.zzS(), this.zzl);
            }
            if (this.zzc.zzk != 5) {
                ViewParent parent = this.zzd.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.zzd.zzH());
                }
                if (this.zzk) {
                    this.zzd.zzal();
                }
                this.zzl.addView(this.zzd.zzH(), -1, -1);
            }
            if (!z && !this.zzm) {
                zze();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.zzc;
            if (adOverlayInfoParcel4.zzk == 5) {
                zzehp.zzh(this.zzb, this, adOverlayInfoParcel4.zzu, adOverlayInfoParcel4.zzr, adOverlayInfoParcel4.zzs, adOverlayInfoParcel4.zzt, adOverlayInfoParcel4.zzq, adOverlayInfoParcel4.zzv);
                return;
            }
            zzu(z2);
            if (!this.zzd.zzay()) {
                return;
            }
            zzw(z2, true);
            return;
        }
        throw new zzf("Invalid activity, no window available.");
    }

    public final void zzC() {
        synchronized (this.zzo) {
            this.zzq = true;
            Runnable runnable = this.zzp;
            if (runnable != null) {
                zzfpj zzfpjVar = com.google.android.gms.ads.internal.util.zzt.zza;
                zzfpjVar.removeCallbacks(runnable);
                zzfpjVar.post(this.zzp);
            }
        }
    }

    public final void zzD() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzo zzoVar;
        if (!this.zzb.isFinishing() || this.zzs) {
            return;
        }
        this.zzs = true;
        zzcop zzcopVar = this.zzd;
        if (zzcopVar != null) {
            zzcopVar.zzY(this.zzn - 1);
            synchronized (this.zzo) {
                if (!this.zzq && this.zzd.zzaz()) {
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdq)).booleanValue() && !this.zzt && (adOverlayInfoParcel = this.zzc) != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
                        zzoVar.zzbK();
                    }
                    Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zze
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzl.this.zzc();
                        }
                    };
                    this.zzp = runnable;
                    com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(runnable, ((Long) zzbgq.zzc().zzb(zzblj.zzaL)).longValue());
                    return;
                }
            }
        }
        zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final boolean zzE() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzaE = this.zzd.zzaE();
        if (!zzaE) {
            this.zzd.zzd("onbackblocked", Collections.emptyMap());
        }
        return zzaE;
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

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzbR() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @VisibleForTesting
    public final void zzc() {
        zzcop zzcopVar;
        zzo zzoVar;
        if (this.zzt) {
            return;
        }
        this.zzt = true;
        zzcop zzcopVar2 = this.zzd;
        if (zzcopVar2 != null) {
            this.zzl.removeView(zzcopVar2.zzH());
            zzh zzhVar = this.zze;
            if (zzhVar != null) {
                this.zzd.zzam(zzhVar.zzd);
                this.zzd.zzap(false);
                ViewGroup viewGroup = this.zze.zzc;
                View zzH = this.zzd.zzH();
                zzh zzhVar2 = this.zze;
                viewGroup.addView(zzH, zzhVar2.zza, zzhVar2.zzb);
                this.zze = null;
            } else if (this.zzb.getApplicationContext() != null) {
                this.zzd.zzam(this.zzb.getApplicationContext());
            }
            this.zzd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzf(this.zzn);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 == null || (zzcopVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        zzH(zzcopVar.zzS(), this.zzc.zzd.zzH());
    }

    public final void zzd() {
        this.zzl.zzb = true;
    }

    public final void zze() {
        this.zzd.zzZ();
    }

    public final void zzf() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzy(adOverlayInfoParcel.zzj);
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

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzg(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzh() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzj(IObjectWrapper iObjectWrapper) {
        zzG((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        if (r0 != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0087, B:25:0x0090, B:27:0x0097, B:29:0x009e, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a7 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0087, B:25:0x0090, B:27:0x0097, B:29:0x009e, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    @Override // com.google.android.gms.internal.ads.zzcbs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzk(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzl.zzk(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzl() {
        zzcop zzcopVar = this.zzd;
        if (zzcopVar != null) {
            try {
                this.zzl.removeView(zzcopVar.zzH());
            } catch (NullPointerException e) {
            }
        }
        zzD();
    }

    public final void zzm() {
        if (this.zzm) {
            this.zzm = false;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzn() {
        zzo zzoVar;
        zzf();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzbz();
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzds)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzp() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzc) != null) {
            zzoVar.zzbS();
        }
        zzG(this.zzb.getResources().getConfiguration());
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzds)).booleanValue()) {
            zzcop zzcopVar = this.zzd;
            if (zzcopVar == null || zzcopVar.zzaB()) {
                zzciz.zzj("The webview does not exist. Ignoring action.");
            } else {
                this.zzd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzq(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzr() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzds)).booleanValue()) {
            zzcop zzcopVar = this.zzd;
            if (zzcopVar == null || zzcopVar.zzaB()) {
                zzciz.zzj("The webview does not exist. Ignoring action.");
            } else {
                this.zzd.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzs() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzds)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzt() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzoVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzoVar.zze();
    }

    public final void zzu(boolean z) {
        int intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzdu)).intValue();
        boolean z2 = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaO)).booleanValue() || z;
        zzq zzqVar = new zzq();
        zzqVar.zzd = 50;
        zzqVar.zza = true != z2 ? 0 : intValue;
        int i = 0;
        if (true != z2) {
            i = intValue;
        }
        zzqVar.zzb = i;
        zzqVar.zzc = intValue;
        this.zzf = new zzr(this.zzb, zzqVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzw(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzv() {
        this.zzr = true;
    }

    public final void zzw(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzj zzjVar2;
        boolean z3 = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaM)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzjVar2 = adOverlayInfoParcel2.zzo) != null && zzjVar2.zzh;
        boolean z4 = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaN)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzjVar = adOverlayInfoParcel.zzo) != null && zzjVar.zzi;
        if (z && z2 && z3 && !z4) {
            new zzcaq(this.zzd, "useCustomClose").zzg("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzr zzrVar = this.zzf;
        if (zzrVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzrVar.zzb(z5);
        }
    }

    public final void zzx() {
        this.zzl.removeView(this.zzf);
        zzu(true);
    }

    public final void zzy(int i) {
        if (this.zzb.getApplicationInfo().targetSdkVersion >= ((Integer) zzbgq.zzc().zzb(zzblj.zzet)).intValue()) {
            if (this.zzb.getApplicationInfo().targetSdkVersion <= ((Integer) zzbgq.zzc().zzb(zzblj.zzeu)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbgq.zzc().zzb(zzblj.zzev)).intValue()) {
                    if (i2 <= ((Integer) zzbgq.zzc().zzb(zzblj.zzew)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzb.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzt.zzo().zzr(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzz(boolean z) {
        if (z) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(-16777216);
        }
    }
}
