package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckv.class */
public final class zzckv extends FrameLayout implements zzckn {
    private final zzclh zza;
    private final FrameLayout zzb;
    private final View zzc;
    private final zzbly zzd;
    private final zzclj zze;
    private final long zzf;
    private final zzcko zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String[] zzo;
    private Bitmap zzp;
    private final ImageView zzq;
    private boolean zzr;

    public zzckv(Context context, zzclh zzclhVar, int i, boolean z, zzbly zzblyVar, zzclg zzclgVar) {
        super(context);
        zzcly zzclyVar;
        this.zza = zzclhVar;
        this.zzd = zzblyVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzb = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzclhVar.zzm());
        zzckp zzckpVar = zzclhVar.zzm().zza;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null || applicationInfo.targetSdkVersion >= 11) {
            zzclyVar = i == 2 ? new zzcly(context, new zzcli(context, zzclhVar.zzp(), zzclhVar.zzu(), zzblyVar, zzclhVar.zzn()), zzclhVar, z, zzckp.zza(zzclhVar), zzclgVar) : new zzckm(context, zzclhVar, z, zzckp.zza(zzclhVar), zzclgVar, new zzcli(context, zzclhVar.zzp(), zzclhVar.zzu(), zzblyVar, zzclhVar.zzn()));
        } else {
            zzclyVar = null;
        }
        this.zzg = zzclyVar;
        View view = new View(context);
        this.zzc = view;
        view.setBackgroundColor(0);
        if (zzclyVar != null) {
            frameLayout.addView(zzclyVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzA)).booleanValue()) {
                frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.bringChildToFront(view);
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzx)).booleanValue()) {
                zzm();
            }
        }
        this.zzq = new ImageView(context);
        this.zzf = ((Long) zzbgq.zzc().zzb(zzblj.zzC)).longValue();
        boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzz)).booleanValue();
        this.zzk = booleanValue;
        if (zzblyVar != null) {
            zzblyVar.zzd("spinner_used", true != booleanValue ? "0" : "1");
        }
        this.zze = new zzclj(this);
        if (zzclyVar != null) {
            zzclyVar.zzr(this);
        }
        if (zzclyVar == null) {
            zzb("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    private final void zzH() {
        if (this.zza.zzk() != null && this.zzi && !this.zzj) {
            this.zza.zzk().getWindow().clearFlags(128);
            this.zzi = false;
        }
    }

    public final void zzI(String str, String... strArr) {
        String str2;
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str3 = null;
        for (String str4 : strArr) {
            if (str3 == null) {
                str2 = str4;
            } else {
                hashMap.put(str3, str4);
                str2 = null;
            }
            str3 = str2;
        }
        this.zza.zzd("onVideoEvent", hashMap);
    }

    private final boolean zzJ() {
        return this.zzq.getParent() != null;
    }

    public final void finalize() throws Throwable {
        try {
            this.zze.zza();
            final zzcko zzckoVar = this.zzg;
            if (zzckoVar != null) {
                zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckq
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcko.this.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zze.zzb();
        } else {
            this.zze.zza();
            this.zzm = this.zzl;
        }
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckr
            @Override // java.lang.Runnable
            public final void run() {
                zzckv.this.zzo(z);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzckn
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zze.zzb();
            z = true;
        } else {
            this.zze.zza();
            this.zzm = this.zzl;
            z = false;
        }
        zzt.zza.post(new zzcku(this, z));
    }

    public final void zzA(int i) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzA)).booleanValue()) {
            this.zzb.setBackgroundColor(i);
            this.zzc.setBackgroundColor(i);
        }
    }

    public final void zzB(int i) {
        this.zzg.zzA(i);
    }

    public final void zzC(String str, String[] strArr) {
        this.zzn = str;
        this.zzo = strArr;
    }

    public final void zzD(int i, int i2, int i3, int i4) {
        if (zze.zzc()) {
            StringBuilder m8753i = C0082b.m8753i(75, "Set video bounds to x:", i, ";y:", i2);
            m8753i.append(";w:");
            m8753i.append(i3);
            m8753i.append(";h:");
            m8753i.append(i4);
            zze.zza(m8753i.toString());
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzb.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzE(float f) {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzb.zze(f);
        zzckoVar.zzn();
    }

    public final void zzF(float f, float f2) {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar != null) {
            zzckoVar.zzu(f, f2);
        }
    }

    public final void zzG() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzb.zzd(false);
        zzckoVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zza() {
        zzI("ended", new String[0]);
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzb(String str, String str2) {
        zzI("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzc(String str, String str2) {
        zzI("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzd() {
        zzI("pause", new String[0]);
        zzH();
        this.zzh = false;
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zze() {
        if (this.zza.zzk() != null && !this.zzi) {
            boolean z = (this.zza.zzk().getWindow().getAttributes().flags & 128) != 0;
            this.zzj = z;
            if (!z) {
                this.zza.zzk().getWindow().addFlags(128);
                this.zzi = true;
            }
        }
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzf() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar != null && this.zzm == 0) {
            zzI("canplaythrough", "duration", String.valueOf(zzckoVar.zzc() / 1000.0f), "videoWidth", String.valueOf(this.zzg.zze()), "videoHeight", String.valueOf(this.zzg.zzd()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzg() {
        this.zzc.setVisibility(4);
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzh() {
        this.zze.zzb();
        zzt.zza.post(new zzcks(this));
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzi() {
        if (this.zzr && this.zzp != null && !zzJ()) {
            this.zzq.setImageBitmap(this.zzp);
            this.zzq.invalidate();
            this.zzb.addView(this.zzq, new FrameLayout.LayoutParams(-1, -1));
            this.zzb.bringChildToFront(this.zzq);
        }
        this.zze.zza();
        this.zzm = this.zzl;
        zzt.zza.post(new zzckt(this));
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzj(int i, int i2) {
        if (!this.zzk) {
            return;
        }
        zzblb<Integer> zzblbVar = zzblj.zzB;
        int max = Math.max(i / ((Integer) zzbgq.zzc().zzb(zzblbVar)).intValue(), 1);
        int max2 = Math.max(i2 / ((Integer) zzbgq.zzc().zzb(zzblbVar)).intValue(), 1);
        Bitmap bitmap = this.zzp;
        if (bitmap != null && bitmap.getWidth() == max && this.zzp.getHeight() == max2) {
            return;
        }
        this.zzp = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
        this.zzr = false;
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zzk() {
        if (this.zzh && zzJ()) {
            this.zzb.removeView(this.zzq);
        }
        if (this.zzp == null) {
            return;
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzA().elapsedRealtime();
        if (this.zzg.getBitmap(this.zzp) != null) {
            this.zzr = true;
        }
        long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzA().elapsedRealtime() - elapsedRealtime;
        if (zze.zzc()) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Spinner frame grab took ");
            sb.append(elapsedRealtime2);
            sb.append("ms");
            zze.zza(sb.toString());
        }
        if (elapsedRealtime2 <= this.zzf) {
            return;
        }
        zzciz.zzj("Spinner frame grab crossed jank threshold! Suspending spinner.");
        this.zzk = false;
        this.zzp = null;
        zzbly zzblyVar = this.zzd;
        if (zzblyVar == null) {
            return;
        }
        zzblyVar.zzd("spinner_jank", Long.toString(elapsedRealtime2));
    }

    @TargetApi(14)
    public final void zzm() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        TextView textView = new TextView(zzckoVar.getContext());
        String valueOf = String.valueOf(this.zzg.zzj());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.zzb.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzb.bringChildToFront(textView);
    }

    public final void zzn() {
        this.zze.zza();
        zzcko zzckoVar = this.zzg;
        if (zzckoVar != null) {
            zzckoVar.zzt();
        }
        zzH();
    }

    public final /* synthetic */ void zzo(boolean z) {
        zzI("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzp() {
        if (this.zzg == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzn)) {
            this.zzg.zzB(this.zzn, this.zzo);
        } else {
            zzI("no_src", new String[0]);
        }
    }

    public final void zzq() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzb.zzd(true);
        zzckoVar.zzn();
    }

    public final void zzr() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        long zza = zzckoVar.zza();
        if (this.zzl == zza || zza <= 0) {
            return;
        }
        float f = ((float) zza) / 1000.0f;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue()) {
            zzI("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.zzg.zzh()), "qoeCachedBytes", String.valueOf(this.zzg.zzf()), "qoeLoadedBytes", String.valueOf(this.zzg.zzg()), "droppedFrames", String.valueOf(this.zzg.zzb()), "reportTime", String.valueOf(com.google.android.gms.ads.internal.zzt.zzA().currentTimeMillis()));
        } else {
            zzI("timeupdate", "time", String.valueOf(f));
        }
        this.zzl = zza;
    }

    public final void zzs() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzo();
    }

    public final void zzt() {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzp();
    }

    public final void zzu(int i) {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.zzq(i);
    }

    @TargetApi(14)
    public final void zzv(MotionEvent motionEvent) {
        zzcko zzckoVar = this.zzg;
        if (zzckoVar == null) {
            return;
        }
        zzckoVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzw(int i) {
        this.zzg.zzw(i);
    }

    public final void zzx(int i) {
        this.zzg.zzx(i);
    }

    public final void zzy(int i) {
        this.zzg.zzy(i);
    }

    public final void zzz(int i) {
        this.zzg.zzz(i);
    }
}
