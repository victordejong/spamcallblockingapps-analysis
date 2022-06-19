package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcly.class */
public final class zzcly extends zzcko implements TextureView.SurfaceTextureListener, zzckx {
    private final zzclh zzc;
    private final zzcli zzd;
    private final boolean zze;
    private final zzclg zzf;
    private zzckn zzg;
    private Surface zzh;
    private zzcky zzi;
    private String zzj;
    private String[] zzk;
    private boolean zzl;
    private int zzm = 1;
    private zzclf zzn;
    private final boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private float zzv;

    public zzcly(Context context, zzcli zzcliVar, zzclh zzclhVar, boolean z, boolean z2, zzclg zzclgVar) {
        super(context);
        this.zze = z2;
        this.zzc = zzclhVar;
        this.zzd = zzcliVar;
        this.zzo = z;
        this.zzf = zzclgVar;
        setSurfaceTextureListener(this);
        zzcliVar.zza(this);
    }

    private static String zzR(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        C0082b.m8749m(sb, str, "/", canonicalName, ":");
        sb.append(message);
        return sb.toString();
    }

    private final void zzS() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzK(true);
        }
    }

    private final void zzT() {
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclp
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzH();
            }
        });
        zzn();
        this.zzd.zzb();
        if (!this.zzq) {
            return;
        }
        zzp();
    }

    private final void zzU(boolean z) {
        if ((this.zzi != null && !z) || this.zzj == null || this.zzh == null) {
            return;
        }
        if (z) {
            if (!zzac()) {
                zzciz.zzj("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                this.zzi.zzO();
                zzW();
            }
        }
        if (this.zzj.startsWith("cache:")) {
            zzcnf zzr = this.zzc.zzr(this.zzj);
            if (zzr instanceof zzcno) {
                zzcky zzj = ((zzcno) zzr).zzj();
                this.zzi = zzj;
                if (!zzj.zzP()) {
                    zzciz.zzj("Precached video player has been released.");
                    return;
                }
            } else if (!(zzr instanceof zzcnl)) {
                String valueOf = String.valueOf(this.zzj);
                zzciz.zzj(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                zzcnl zzcnlVar = (zzcnl) zzr;
                String zzE = zzE();
                ByteBuffer zzl = zzcnlVar.zzl();
                boolean zzm = zzcnlVar.zzm();
                String zzi = zzcnlVar.zzi();
                if (zzi == null) {
                    zzciz.zzj("Stream cache URL is null.");
                    return;
                }
                zzcky zzD = zzD();
                this.zzi = zzD;
                zzD.zzB(new Uri[]{Uri.parse(zzi)}, zzE, zzl, zzm);
            }
        } else {
            this.zzi = zzD();
            String zzE2 = zzE();
            Uri[] uriArr = new Uri[this.zzk.length];
            int i = 0;
            while (true) {
                String[] strArr = this.zzk;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.zzi.zzA(uriArr, zzE2);
        }
        this.zzi.zzG(this);
        zzY(this.zzh, false);
        if (!this.zzi.zzP()) {
            return;
        }
        int zzr2 = this.zzi.zzr();
        this.zzm = zzr2;
        if (zzr2 != 3) {
            return;
        }
        zzT();
    }

    private final void zzV() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzK(false);
        }
    }

    private final void zzW() {
        if (this.zzi != null) {
            zzY(null, true);
            zzcky zzckyVar = this.zzi;
            if (zzckyVar != null) {
                zzckyVar.zzG(null);
                this.zzi.zzC();
                this.zzi = null;
            }
            this.zzm = 1;
            this.zzl = false;
            this.zzp = false;
            this.zzq = false;
        }
    }

    private final void zzX(float f, boolean z) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar == null) {
            zzciz.zzj("Trying to set volume before player is initialized.");
            return;
        }
        try {
            zzckyVar.zzN(f, z);
        } catch (IOException e) {
            zzciz.zzk("", e);
        }
    }

    private final void zzY(Surface surface, boolean z) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar == null) {
            zzciz.zzj("Trying to set surface before player is initialized.");
            return;
        }
        try {
            zzckyVar.zzM(surface, z);
        } catch (IOException e) {
            zzciz.zzk("", e);
        }
    }

    private final void zzZ() {
        zzaa(this.zzr, this.zzs);
    }

    private final void zzaa(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.zzv != f) {
            this.zzv = f;
            requestLayout();
        }
    }

    private final boolean zzab() {
        return zzac() && this.zzm != 1;
    }

    private final boolean zzac() {
        zzcky zzckyVar = this.zzi;
        return zzckyVar != null && zzckyVar.zzP() && !this.zzl;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.zzv;
        int i3 = measuredWidth;
        int i4 = measuredHeight;
        if (f != 0.0f) {
            i3 = measuredWidth;
            i4 = measuredHeight;
            if (this.zzn == null) {
                float f2 = measuredWidth;
                float f3 = f2 / measuredHeight;
                if (f > f3) {
                    measuredHeight = (int) (f2 / f);
                }
                i3 = measuredWidth;
                i4 = measuredHeight;
                if (f < f3) {
                    i3 = (int) (measuredHeight * f);
                    i4 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i3, i4);
        zzclf zzclfVar = this.zzn;
        if (zzclfVar != null) {
            zzclfVar.zzc(i3, i4);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.zzo) {
            zzclf zzclfVar = new zzclf(getContext());
            this.zzn = zzclfVar;
            zzclfVar.zzd(surfaceTexture, i, i2);
            this.zzn.start();
            surfaceTexture2 = this.zzn.zzb();
            if (surfaceTexture2 == null) {
                this.zzn.zze();
                this.zzn = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.zzh = surface;
        if (this.zzi == null) {
            zzU(false);
        } else {
            zzY(surface, true);
            if (!this.zzf.zza) {
                zzS();
            }
        }
        if (this.zzr == 0 || this.zzs == 0) {
            zzaa(i, i2);
        } else {
            zzZ();
        }
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclr
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzL();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzo();
        zzclf zzclfVar = this.zzn;
        if (zzclfVar != null) {
            zzclfVar.zze();
            this.zzn = null;
        }
        if (this.zzi != null) {
            zzV();
            Surface surface = this.zzh;
            if (surface != null) {
                surface.release();
            }
            this.zzh = null;
            zzY(null, true);
        }
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcls
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzM();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzclf zzclfVar = this.zzn;
        if (zzclfVar != null) {
            zzclfVar.zzc(i, i2);
        }
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclw
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzN(i, i2);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzd.zzf(this);
        this.zza.zza(surfaceTexture, this.zzg);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zze.zza(sb.toString());
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclv
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzO(i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzA(int i) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzL(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzB(String str, String[] strArr) {
        if (str == null) {
            return;
        }
        boolean z = true;
        if (strArr == null) {
            this.zzk = new String[]{str};
        } else {
            this.zzk = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.zzj;
        if (!this.zzf.zzn || str2 == null || str.equals(str2) || this.zzm != 4) {
            z = false;
        }
        this.zzj = str;
        zzU(z);
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzC(int i, int i2) {
        this.zzr = i;
        this.zzs = i2;
        zzZ();
    }

    public final zzcky zzD() {
        return this.zzf.zzm ? new zzcof(this.zzc.getContext(), this.zzf, this.zzc) : new zzcmn(this.zzc.getContext(), this.zzf, this.zzc);
    }

    public final String zzE() {
        return com.google.android.gms.ads.internal.zzt.zzp().zzd(this.zzc.getContext(), this.zzc.zzp().zza);
    }

    public final /* synthetic */ void zzF(String str) {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzb("ExoPlayerAdapter error", str);
        }
    }

    public final /* synthetic */ void zzG() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zza();
        }
    }

    public final /* synthetic */ void zzH() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzf();
        }
    }

    public final /* synthetic */ void zzI(boolean z, long j) {
        this.zzc.zzx(z, j);
    }

    public final /* synthetic */ void zzJ(String str) {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzc("ExoPlayerAdapter exception", str);
        }
    }

    public final /* synthetic */ void zzK() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzg();
        }
    }

    public final /* synthetic */ void zzL() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzh();
        }
    }

    public final /* synthetic */ void zzM() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzi();
        }
    }

    public final /* synthetic */ void zzN(int i, int i2) {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzj(i, i2);
        }
    }

    public final /* synthetic */ void zzO(int i) {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.onWindowVisibilityChanged(i);
        }
    }

    public final /* synthetic */ void zzP() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zzd();
        }
    }

    public final /* synthetic */ void zzQ() {
        zzckn zzcknVar = this.zzg;
        if (zzcknVar != null) {
            zzcknVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final int zza() {
        if (zzab()) {
            return (int) this.zzi.zzw();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final int zzb() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            return zzckyVar.zzp();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final int zzc() {
        if (zzab()) {
            return (int) this.zzi.zzx();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final int zzd() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final int zze() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final long zzf() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            return zzckyVar.zzv();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final long zzg() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            return zzckyVar.zzy();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final long zzh() {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            return zzckyVar.zzz();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzi(final boolean z, final long j) {
        if (this.zzc != null) {
            zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcly.this.zzI(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final String zzj() {
        String str = true != this.zzo ? "" : " spherical";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzk(String str, Exception exc) {
        final String zzR = zzR(str, exc);
        zzciz.zzj(zzR.length() != 0 ? "ExoPlayerAdapter error: ".concat(zzR) : new String("ExoPlayerAdapter error: "));
        this.zzl = true;
        if (this.zzf.zza) {
            zzV();
        }
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclx
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzF(zzR);
            }
        });
        com.google.android.gms.ads.internal.zzt.zzo().zzr(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzl(String str, Exception exc) {
        final String zzR = zzR("onLoadException", exc);
        zzciz.zzj(zzR.length() != 0 ? "ExoPlayerAdapter exception: ".concat(zzR) : new String("ExoPlayerAdapter exception: "));
        com.google.android.gms.ads.internal.zzt.zzo().zzr(exc, "AdExoPlayerView.onException");
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcln
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzJ(zzR);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzm(int i) {
        if (this.zzm != i) {
            this.zzm = i;
            if (i == 3) {
                zzT();
            } else if (i != 4) {
            } else {
                if (this.zzf.zza) {
                    zzV();
                }
                this.zzd.zze();
                this.zzb.zzc();
                zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcly.this.zzG();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko, com.google.android.gms.internal.ads.zzclk
    public final void zzn() {
        zzX(this.zzb.zza(), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzo() {
        if (zzab()) {
            if (this.zzf.zza) {
                zzV();
            }
            this.zzi.zzJ(false);
            this.zzd.zze();
            this.zzb.zzc();
            zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclt
                @Override // java.lang.Runnable
                public final void run() {
                    zzcly.this.zzP();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzp() {
        if (!zzab()) {
            this.zzq = true;
            return;
        }
        if (this.zzf.zza) {
            zzS();
        }
        this.zzi.zzJ(true);
        this.zzd.zzc();
        this.zzb.zzb();
        this.zza.zzb();
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclu
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzQ();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzq(int i) {
        if (zzab()) {
            this.zzi.zzD(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzr(zzckn zzcknVar) {
        this.zzg = zzcknVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzs(String str) {
        if (str != null) {
            zzB(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzt() {
        if (zzac()) {
            this.zzi.zzO();
            zzW();
        }
        this.zzd.zze();
        this.zzb.zzc();
        this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzu(float f, float f2) {
        zzclf zzclfVar = this.zzn;
        if (zzclfVar != null) {
            zzclfVar.zzf(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzv() {
        zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclq
            @Override // java.lang.Runnable
            public final void run() {
                zzcly.this.zzK();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzw(int i) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzE(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzx(int i) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzF(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzy(int i) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzH(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcko
    public final void zzz(int i) {
        zzcky zzckyVar = this.zzi;
        if (zzckyVar != null) {
            zzckyVar.zzI(i);
        }
    }
}
