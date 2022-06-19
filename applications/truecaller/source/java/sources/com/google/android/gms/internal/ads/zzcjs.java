package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjs.class */
public final class zzcjs extends zzcii implements TextureView.SurfaceTextureListener, zzcir {
    private final zzcjb zzc;
    private final zzcjc zzd;
    private final boolean zze;
    private final zzcja zzf;
    private zzcih zzg;
    private Surface zzh;
    private zzcis zzi;
    private String zzj;
    private String[] zzk;
    private boolean zzl;
    private int zzm = 1;
    private zzciz zzn;
    private final boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private float zzv;

    public zzcjs(Context context, zzcjc zzcjcVar, zzcjb zzcjbVar, boolean z, boolean z2, zzcja zzcjaVar) {
        super(context);
        this.zze = z2;
        this.zzc = zzcjbVar;
        this.zzd = zzcjcVar;
        this.zzo = z;
        this.zzf = zzcjaVar;
        setSurfaceTextureListener(this);
        zzcjcVar.zza(this);
    }

    private final boolean zzR() {
        zzcis zzcisVar = this.zzi;
        return zzcisVar != null && zzcisVar.zzA() && !this.zzl;
    }

    private final boolean zzS() {
        return zzR() && this.zzm != 1;
    }

    private final void zzT(boolean z) {
        if ((this.zzi != null && !z) || this.zzj == null || this.zzh == null) {
            return;
        }
        if (z) {
            if (!zzR()) {
                zzcgt.zzi("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                this.zzi.zzv();
                zzU();
            }
        }
        if (this.zzj.startsWith("cache:")) {
            zzcla zzs = this.zzc.zzs(this.zzj);
            if (zzs instanceof zzclj) {
                zzcis zzj = ((zzclj) zzs).zzj();
                this.zzi = zzj;
                if (!zzj.zzA()) {
                    zzcgt.zzi("Precached video player has been released.");
                    return;
                }
            } else if (!(zzs instanceof zzclg)) {
                String valueOf = String.valueOf(this.zzj);
                zzcgt.zzi(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                zzclg zzclgVar = (zzclg) zzs;
                String zzE = zzE();
                ByteBuffer zzc = zzclgVar.zzc();
                boolean zzb = zzclgVar.zzb();
                String zza = zzclgVar.zza();
                if (zza == null) {
                    zzcgt.zzi("Stream cache URL is null.");
                    return;
                }
                zzcis zzD = zzD();
                this.zzi = zzD;
                zzD.zzq(new Uri[]{Uri.parse(zza)}, zzE, zzc, zzb);
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
            this.zzi.zzp(uriArr, zzE2);
        }
        this.zzi.zzr(this);
        zzV(this.zzh, false);
        if (!this.zzi.zzA()) {
            return;
        }
        int zzB = this.zzi.zzB();
        this.zzm = zzB;
        if (zzB != 3) {
            return;
        }
        zzX();
    }

    private final void zzU() {
        if (this.zzi != null) {
            zzV(null, true);
            zzcis zzcisVar = this.zzi;
            if (zzcisVar != null) {
                zzcisVar.zzr(null);
                this.zzi.zzs();
                this.zzi = null;
            }
            this.zzm = 1;
            this.zzl = false;
            this.zzp = false;
            this.zzq = false;
        }
    }

    private final void zzV(Surface surface, boolean z) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar == null) {
            zzcgt.zzi("Trying to set surface before player is initialized.");
            return;
        }
        try {
            zzcisVar.zzt(surface, z);
        } catch (IOException e) {
            zzcgt.zzj("", e);
        }
    }

    private final void zzW(float f, boolean z) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar == null) {
            zzcgt.zzi("Trying to set volume before player is initialized.");
            return;
        }
        try {
            zzcisVar.zzu(f, z);
        } catch (IOException e) {
            zzcgt.zzj("", e);
        }
    }

    private final void zzX() {
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjg
            private final zzcjs zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzQ();
            }
        });
        zzt();
        this.zzd.zzb();
        if (!this.zzq) {
            return;
        }
        zzh();
    }

    private static String zzY(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        C22128a.m8666T0(sb, str, StringConstant.SLASH, canonicalName, StringConstant.COLON);
        sb.append(message);
        return sb.toString();
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

    private final void zzab() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzM(true);
        }
    }

    private final void zzac() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzM(false);
        }
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
        zzciz zzcizVar = this.zzn;
        if (zzcizVar != null) {
            zzcizVar.zzc(i3, i4);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.zzo) {
            zzciz zzcizVar = new zzciz(getContext());
            this.zzn = zzcizVar;
            zzcizVar.zzb(surfaceTexture, i, i2);
            this.zzn.start();
            surfaceTexture2 = this.zzn.zze();
            if (surfaceTexture2 == null) {
                this.zzn.zzd();
                this.zzn = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.zzh = surface;
        if (this.zzi == null) {
            zzT(false);
        } else {
            zzV(surface, true);
            if (!this.zzf.zza) {
                zzab();
            }
        }
        if (this.zzr == 0 || this.zzs == 0) {
            zzaa(i, i2);
        } else {
            zzZ();
        }
        zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjn
            private final zzcjs zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzL();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzi();
        zzciz zzcizVar = this.zzn;
        if (zzcizVar != null) {
            zzcizVar.zzd();
            this.zzn = null;
        }
        if (this.zzi != null) {
            zzac();
            Surface surface = this.zzh;
            if (surface != null) {
                surface.release();
            }
            this.zzh = null;
            zzV(null, true);
        }
        zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjp
            private final zzcjs zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzJ();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzciz zzcizVar = this.zzn;
        if (zzcizVar != null) {
            zzcizVar.zzc(i, i2);
        }
        zzs.zza.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzcjo
            private final zzcjs zza;
            private final int zzb;
            private final int zzc;

            {
                this.zza = this;
                this.zzb = i;
                this.zzc = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzK(this.zzb, this.zzc);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzd.zzd(this);
        this.zza.zzb(surfaceTexture, this.zzg);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zze.zza(sb.toString());
        zzs.zza.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzcjq
            private final zzcjs zza;
            private final int zzb;

            {
                this.zza = this;
                this.zzb = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzI(this.zzb);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzA(int i) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzy(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzB(int i) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzz(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzC() {
        zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcji
            private final zzcjs zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzF();
            }
        });
    }

    public final zzcis zzD() {
        return this.zzf.zzm ? new zzcmb(this.zzc.getContext(), this.zzf, this.zzc) : new zzcki(this.zzc.getContext(), this.zzf, this.zzc);
    }

    public final String zzE() {
        return zzt.zzc().zzi(this.zzc.getContext(), this.zzc.zzt().zza);
    }

    public final /* synthetic */ void zzF() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzk();
        }
    }

    public final /* synthetic */ void zzG(String str) {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzg("ExoPlayerAdapter exception", str);
        }
    }

    public final /* synthetic */ void zzH(boolean z, long j) {
        this.zzc.zzv(z, j);
    }

    public final /* synthetic */ void zzI(int i) {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.onWindowVisibilityChanged(i);
        }
    }

    public final /* synthetic */ void zzJ() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzh();
        }
    }

    public final /* synthetic */ void zzK(int i, int i2) {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzj(i, i2);
        }
    }

    public final /* synthetic */ void zzL() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zza();
        }
    }

    public final /* synthetic */ void zzM() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzd();
        }
    }

    public final /* synthetic */ void zzN() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzc();
        }
    }

    public final /* synthetic */ void zzO(String str) {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzf("ExoPlayerAdapter error", str);
        }
    }

    public final /* synthetic */ void zzP() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zze();
        }
    }

    public final /* synthetic */ void zzQ() {
        zzcih zzcihVar = this.zzg;
        if (zzcihVar != null) {
            zzcihVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(boolean z, long j) {
        if (this.zzc != null) {
            zzchg.zze.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.zzcjr
                private final zzcjs zza;
                private final boolean zzb;
                private final long zzc;

                {
                    this.zza = this;
                    this.zzb = z;
                    this.zzc = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzH(this.zzb, this.zzc);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzb(int i) {
        if (this.zzm != i) {
            this.zzm = i;
            if (i == 3) {
                zzX();
            } else if (i != 4) {
            } else {
                if (this.zzf.zza) {
                    zzac();
                }
                this.zzd.zzf();
                this.zzb.zze();
                zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjj
                    private final zzcjs zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzP();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzc(int i, int i2) {
        this.zzr = i;
        this.zzs = i2;
        zzZ();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final String zzd() {
        String str = true != this.zzo ? "" : " spherical";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zze(zzcih zzcihVar) {
        this.zzg = zzcihVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzf(String str) {
        if (str != null) {
            zzw(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzg() {
        if (zzR()) {
            this.zzi.zzv();
            zzU();
        }
        this.zzd.zzf();
        this.zzb.zze();
        this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzh() {
        if (!zzS()) {
            this.zzq = true;
            return;
        }
        if (this.zzf.zza) {
            zzab();
        }
        this.zzi.zzE(true);
        this.zzd.zze();
        this.zzb.zzd();
        this.zza.zza();
        zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjl
            private final zzcjs zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzN();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzi() {
        if (zzS()) {
            if (this.zzf.zza) {
                zzac();
            }
            this.zzi.zzE(false);
            this.zzd.zzf();
            this.zzb.zze();
            zzs.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcjm
                private final zzcjs zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzM();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzj() {
        if (zzS()) {
            return (int) this.zzi.zzH();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzk() {
        if (zzS()) {
            return (int) this.zzi.zzC();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzl(int i) {
        if (zzS()) {
            this.zzi.zzw(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzm(float f, float f2) {
        zzciz zzcizVar = this.zzn;
        if (zzcizVar != null) {
            zzcizVar.zzf(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzn() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzo() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzp() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            return zzcisVar.zzI();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzq() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            return zzcisVar.zzJ();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzr() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            return zzcisVar.zzK();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzs() {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            return zzcisVar.zzL();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcii, com.google.android.gms.internal.ads.zzcje
    public final void zzt() {
        zzW(this.zzb.zzc(), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzu(String str, Exception exc) {
        String zzY = zzY(str, exc);
        zzcgt.zzi(zzY.length() != 0 ? "ExoPlayerAdapter error: ".concat(zzY) : new String("ExoPlayerAdapter error: "));
        this.zzl = true;
        if (this.zzf.zza) {
            zzac();
        }
        zzs.zza.post(new Runnable(this, zzY) { // from class: com.google.android.gms.internal.ads.zzcjk
            private final zzcjs zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = zzY;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzO(this.zzb);
            }
        });
        zzt.zzg().zzl(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzv(String str, Exception exc) {
        String zzY = zzY("onLoadException", exc);
        zzcgt.zzi(zzY.length() != 0 ? "ExoPlayerAdapter exception: ".concat(zzY) : new String("ExoPlayerAdapter exception: "));
        zzt.zzg().zzl(exc, "AdExoPlayerView.onException");
        zzs.zza.post(new Runnable(this, zzY) { // from class: com.google.android.gms.internal.ads.zzcjh
            private final zzcjs zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = zzY;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzG(this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzw(String str, String[] strArr) {
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
        zzT(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzx(int i) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzF(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzy(int i) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzG(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzz(int i) {
        zzcis zzcisVar = this.zzi;
        if (zzcisVar != null) {
            zzcisVar.zzx(i);
        }
    }
}
