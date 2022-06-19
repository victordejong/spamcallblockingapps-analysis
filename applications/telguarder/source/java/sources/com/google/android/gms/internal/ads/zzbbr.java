package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbr.class */
public final class zzbbr extends zzbav implements TextureView.SurfaceTextureListener, zzbcu {
    private Surface zzblm;
    private final zzbbo zzeix;
    private final zzbbn zzeiy;
    private final boolean zzeiz;
    private int zzeje;
    private int zzejf;
    private int zzejh;
    private int zzeji;
    private zzbbm zzejj;
    private final boolean zzejk;
    private zzbaw zzejm;
    private String[] zzeki;
    private final zzbbl zzenf;
    private zzbck zzeng;
    private String zzenh;
    private boolean zzeni;
    private int zzenj = 1;
    private boolean zzenk;
    private boolean zzenl;
    private float zzenm;

    public zzbbr(Context context, zzbbn zzbbnVar, zzbbo zzbboVar, boolean z, boolean z2, zzbbl zzbblVar) {
        super(context);
        this.zzeiz = z2;
        this.zzeix = zzbboVar;
        this.zzeiy = zzbbnVar;
        this.zzejk = z;
        this.zzenf = zzbblVar;
        setSurfaceTextureListener(this);
        zzbbnVar.zzb(this);
    }

    private final void zza(float f, boolean z) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzb(f, z);
        } else {
            zzd.zzex("Trying to set volume before player is initalized.");
        }
    }

    private final void zza(Surface surface, boolean z) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zza(surface, z);
        } else {
            zzd.zzex("Trying to set surface before player is initalized.");
        }
    }

    private final zzbck zzabp() {
        return new zzbck(this.zzeix.getContext(), this.zzenf, this.zzeix);
    }

    private final String zzabq() {
        return zzr.zzkr().zzq(this.zzeix.getContext(), this.zzeix.zzabj().zzbrp);
    }

    private final boolean zzabr() {
        zzbck zzbckVar = this.zzeng;
        return (zzbckVar == null || zzbckVar.zzaci() == null || this.zzeni) ? false : true;
    }

    private final boolean zzabs() {
        return zzabr() && this.zzenj != 1;
    }

    private final void zzabt() {
        String str;
        if (this.zzeng != null || (str = this.zzenh) == null || this.zzblm == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            zzbdd zzfc = this.zzeix.zzfc(this.zzenh);
            if (zzfc instanceof zzbds) {
                zzbck zzaco = ((zzbds) zzfc).zzaco();
                this.zzeng = zzaco;
                if (zzaco.zzaci() == null) {
                    zzd.zzex("Precached video player has been released.");
                    return;
                }
            } else if (!(zzfc instanceof zzbdp)) {
                String valueOf = String.valueOf(this.zzenh);
                zzd.zzex(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                zzbdp zzbdpVar = (zzbdp) zzfc;
                String zzabq = zzabq();
                ByteBuffer byteBuffer = zzbdpVar.getByteBuffer();
                boolean zzacm = zzbdpVar.zzacm();
                String url = zzbdpVar.getUrl();
                if (url == null) {
                    zzd.zzex("Stream cache URL is null.");
                    return;
                }
                zzbck zzabp = zzabp();
                this.zzeng = zzabp;
                zzabp.zza(new Uri[]{Uri.parse(url)}, zzabq, byteBuffer, zzacm);
            }
        } else {
            this.zzeng = zzabp();
            String zzabq2 = zzabq();
            Uri[] uriArr = new Uri[this.zzeki.length];
            int i = 0;
            while (true) {
                String[] strArr = this.zzeki;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.zzeng.zza(uriArr, zzabq2);
        }
        this.zzeng.zza(this);
        zza(this.zzblm, false);
        if (this.zzeng.zzaci() == null) {
            return;
        }
        int playbackState = this.zzeng.zzaci().getPlaybackState();
        this.zzenj = playbackState;
        if (playbackState != 3) {
            return;
        }
        zzabu();
    }

    private final void zzabu() {
        if (this.zzenk) {
            return;
        }
        this.zzenk = true;
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbbu
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzacd();
            }
        });
        zzaaj();
        this.zzeiy.zzfb();
        if (!this.zzenl) {
            return;
        }
        play();
    }

    private final void zzabv() {
        zzo(this.zzeje, this.zzejf);
    }

    private final void zzabw() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzax(true);
        }
    }

    private final void zzabx() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzax(false);
        }
    }

    private final void zzo(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.zzenm != f) {
            this.zzenm = f;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getCurrentPosition() {
        if (zzabs()) {
            return (int) this.zzeng.zzaci().zzen();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getDuration() {
        if (zzabs()) {
            return (int) this.zzeng.zzaci().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long getTotalBytes() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            return zzbckVar.getTotalBytes();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoHeight() {
        return this.zzejf;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoWidth() {
        return this.zzeje;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.zzenm;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != 0.0f) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.zzejj == null) {
                float f2 = measuredWidth;
                float f3 = f2 / measuredHeight;
                if (f > f3) {
                    measuredHeight = (int) (f2 / f);
                }
                i4 = measuredWidth;
                i5 = measuredHeight;
                if (f < f3) {
                    i4 = (int) (measuredHeight * f);
                    i5 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i4, i5);
        zzbbm zzbbmVar = this.zzejj;
        if (zzbbmVar != null) {
            zzbbmVar.zzm(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.zzejh;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.zzeji) > 0 && i3 != i5)) && this.zzeiz && zzabr()) {
                zzhh zzaci = this.zzeng.zzaci();
                if (zzaci.zzen() > 0 && !zzaci.zzel()) {
                    zza(0.0f, true);
                    zzaci.zzg(true);
                    long zzen = zzaci.zzen();
                    long currentTimeMillis = zzr.zzky().currentTimeMillis();
                    while (zzabr() && zzaci.zzen() == zzen && zzr.zzky().currentTimeMillis() - currentTimeMillis <= 250) {
                    }
                    zzaci.zzg(false);
                    zzaaj();
                }
            }
            this.zzejh = i4;
            this.zzeji = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.zzejk) {
            zzbbm zzbbmVar = new zzbbm(getContext());
            this.zzejj = zzbbmVar;
            zzbbmVar.zza(surfaceTexture, i, i2);
            this.zzejj.start();
            surfaceTexture2 = this.zzejj.zzaax();
            if (surfaceTexture2 == null) {
                this.zzejj.zzaaw();
                this.zzejj = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.zzblm = surface;
        if (this.zzeng == null) {
            zzabt();
        } else {
            zza(surface, true);
            if (!this.zzenf.zzelf) {
                zzabw();
            }
        }
        if (this.zzeje == 0 || this.zzejf == 0) {
            zzo(i, i2);
        } else {
            zzabv();
        }
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbbx
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzabz();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        zzbbm zzbbmVar = this.zzejj;
        if (zzbbmVar != null) {
            zzbbmVar.zzaaw();
            this.zzejj = null;
        }
        if (this.zzeng != null) {
            zzabx();
            Surface surface = this.zzblm;
            if (surface != null) {
                surface.release();
            }
            this.zzblm = null;
            zza((Surface) null, true);
        }
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbbz
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzaby();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzbbm zzbbmVar = this.zzejj;
        if (zzbbmVar != null) {
            zzbbmVar.zzm(i, i2);
        }
        zzj.zzeen.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzbca
            private final int zzefe;
            private final int zzeff;
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
                this.zzefe = i;
                this.zzeff = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzp(this.zzefe, this.zzeff);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeiy.zzc(this);
        this.zzeju.zza(surfaceTexture, this.zzejm);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzd.zzeb(sb.toString());
        zzj.zzeen.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzbcc
            private final int zzefe;
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
                this.zzefe = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzdr(this.zzefe);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void pause() {
        if (zzabs()) {
            if (this.zzenf.zzelf) {
                zzabx();
            }
            this.zzeng.zzaci().zzg(false);
            this.zzeiy.zzaba();
            this.zzejv.zzaba();
            zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbby
                private final zzbbr zzenn;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzenn = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzenn.zzaca();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void play() {
        if (!zzabs()) {
            this.zzenl = true;
            return;
        }
        if (this.zzenf.zzelf) {
            zzabw();
        }
        this.zzeng.zzaci().zzg(true);
        this.zzeiy.zzaaz();
        this.zzejv.zzaaz();
        this.zzeju.zzaal();
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbbv
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzacb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void seekTo(int i) {
        if (zzabs()) {
            this.zzeng.zzaci().seekTo(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void setVideoPath(String str) {
        if (str != null) {
            this.zzenh = str;
            this.zzeki = new String[]{str};
            zzabt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void stop() {
        if (zzabr()) {
            this.zzeng.zzaci().stop();
            if (this.zzeng != null) {
                zza((Surface) null, true);
                zzbck zzbckVar = this.zzeng;
                if (zzbckVar != null) {
                    zzbckVar.zza((zzbcu) null);
                    this.zzeng.release();
                    this.zzeng = null;
                }
                this.zzenj = 1;
                this.zzeni = false;
                this.zzenk = false;
                this.zzenl = false;
            }
        }
        this.zzeiy.zzaba();
        this.zzejv.zzaba();
        this.zzeiy.onStop();
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(float f, float f2) {
        zzbbm zzbbmVar = this.zzejj;
        if (zzbbmVar != null) {
            zzbbmVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(zzbaw zzbawVar) {
        this.zzejm = zzbawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        String sb2 = sb.toString();
        String valueOf = String.valueOf(sb2);
        zzd.zzex(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.zzeni = true;
        if (this.zzenf.zzelf) {
            zzabx();
        }
        zzj.zzeen.post(new Runnable(this, sb2) { // from class: com.google.android.gms.internal.ads.zzbbw
            private final String zzdjf;
            private final zzbbr zzenn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzenn = this;
                this.zzdjf = sb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzenn.zzfd(this.zzdjf);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final String zzaad() {
        String str = this.zzejk ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zzaah() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            return zzbckVar.zzaah();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int zzaai() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            return zzbckVar.zzaai();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav, com.google.android.gms.internal.ads.zzbbs
    public final void zzaaj() {
        zza(this.zzejv.getVolume(), false);
    }

    public final /* synthetic */ void zzaby() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzaan();
        }
    }

    public final /* synthetic */ void zzabz() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzaak();
        }
    }

    public final /* synthetic */ void zzaca() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.onPaused();
        }
    }

    public final /* synthetic */ void zzacb() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzaal();
        }
    }

    public final /* synthetic */ void zzacc() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzaam();
        }
    }

    public final /* synthetic */ void zzacd() {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzfb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.zzenh = str;
            this.zzeki = (String[]) Arrays.copyOf(strArr, strArr.length);
            zzabt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzb(boolean z, long j) {
        if (this.zzeix != null) {
            zzazp.zzeig.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.zzbcb
                private final boolean zzekn;
                private final zzbbr zzenn;
                private final long zzeno;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzenn = this;
                    this.zzekn = z;
                    this.zzeno = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzenn.zzc(this.zzekn, this.zzeno);
                }
            });
        }
    }

    public final /* synthetic */ void zzc(boolean z, long j) {
        this.zzeix.zza(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdk(int i) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzacl().zzds(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdl(int i) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzacl().zzdt(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdm(int i) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzacl().zzdm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdn(int i) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzacl().zzdn(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdo(int i) {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            zzbckVar.zzdo(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzdq(int i) {
        if (this.zzenj != i) {
            this.zzenj = i;
            if (i == 3) {
                zzabu();
            } else if (i != 4) {
            } else {
                if (this.zzenf.zzelf) {
                    zzabx();
                }
                this.zzeiy.zzaba();
                this.zzejv.zzaba();
                zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbbt
                    private final zzbbr zzenn;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzenn = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzenn.zzacc();
                    }
                });
            }
        }
    }

    public final /* synthetic */ void zzdr(int i) {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.onWindowVisibilityChanged(i);
        }
    }

    public final /* synthetic */ void zzfd(String str) {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzl("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzn(int i, int i2) {
        this.zzeje = i;
        this.zzejf = i2;
        zzabv();
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zznb() {
        zzbck zzbckVar = this.zzeng;
        if (zzbckVar != null) {
            return zzbckVar.zznb();
        }
        return -1L;
    }

    public final /* synthetic */ void zzp(int i, int i2) {
        zzbaw zzbawVar = this.zzejm;
        if (zzbawVar != null) {
            zzbawVar.zzk(i, i2);
        }
    }
}
