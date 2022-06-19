package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.huawei.hms.adapter.internal.CommonCode;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcig.class */
public final class zzcig extends zzcii implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    private static final Map<Integer, String> zzc;
    private final zzcjb zzd;
    private final zzcjc zze;
    private final boolean zzf;
    private MediaPlayer zzi;
    private Uri zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private zzciz zzp;
    private final boolean zzq;
    private int zzr;
    private zzcih zzs;
    private int zzg = 0;
    private int zzh = 0;
    private boolean zzt = false;
    private Integer zzu = null;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put(-1004, "MEDIA_ERROR_IO");
        hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
        hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
        hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzcig(Context context, zzcjb zzcjbVar, boolean z, boolean z2, zzcja zzcjaVar, zzcjc zzcjcVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.zzd = zzcjbVar;
        this.zze = zzcjcVar;
        this.zzq = z;
        this.zzf = z2;
        zzcjcVar.zza(this);
    }

    private final void zzC() {
        zze.zza("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzj == null || surfaceTexture == null) {
            return;
        }
        zzE(false);
        try {
            zzt.zzs();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.zzi = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.zzi.setOnCompletionListener(this);
            this.zzi.setOnErrorListener(this);
            this.zzi.setOnInfoListener(this);
            this.zzi.setOnPreparedListener(this);
            this.zzi.setOnVideoSizeChangedListener(this);
            this.zzm = 0;
            SurfaceTexture surfaceTexture2 = surfaceTexture;
            if (this.zzq) {
                zzciz zzcizVar = new zzciz(getContext());
                this.zzp = zzcizVar;
                zzcizVar.zzb(surfaceTexture, getWidth(), getHeight());
                this.zzp.start();
                surfaceTexture2 = this.zzp.zze();
                if (surfaceTexture2 == null) {
                    this.zzp.zzd();
                    this.zzp = null;
                    surfaceTexture2 = surfaceTexture;
                }
            }
            this.zzi.setDataSource(getContext(), this.zzj);
            zzt.zzt();
            this.zzi.setSurface(new Surface(surfaceTexture2));
            this.zzi.setAudioStreamType(3);
            this.zzi.setScreenOnWhilePlaying(true);
            this.zzi.prepareAsync();
            zzH(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String valueOf = String.valueOf(this.zzj);
            valueOf.length();
            zzcgt.zzj("Failed to initialize MediaPlayer at ".concat(valueOf), e);
            onError(this.zzi, 1, 0);
        }
    }

    private final void zzD() {
        if (this.zzf && zzF() && this.zzi.getCurrentPosition() > 0 && this.zzh != 3) {
            zze.zza("AdMediaPlayerView nudging MediaPlayer");
            zzG(0.0f);
            this.zzi.start();
            int currentPosition = this.zzi.getCurrentPosition();
            long mo38787c = zzt.zzj().mo38787c();
            while (zzF() && this.zzi.getCurrentPosition() == currentPosition && zzt.zzj().mo38787c() - mo38787c <= 250) {
            }
            this.zzi.pause();
            zzt();
        }
    }

    private final void zzE(boolean z) {
        zze.zza("AdMediaPlayerView release");
        zzciz zzcizVar = this.zzp;
        if (zzcizVar != null) {
            zzcizVar.zzd();
            this.zzp = null;
        }
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzi.release();
            this.zzi = null;
            zzH(0);
            if (!z) {
                return;
            }
            this.zzh = 0;
        }
    }

    private final boolean zzF() {
        int i;
        return (this.zzi == null || (i = this.zzg) == -1 || i == 0 || i == 1) ? false : true;
    }

    private final void zzG(float f) {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer == null) {
            zzcgt.zzi("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            return;
        }
        try {
            mediaPlayer.setVolume(f, f);
        } catch (IllegalStateException e) {
        }
    }

    private final void zzH(int i) {
        if (i == 3) {
            this.zze.zze();
            this.zzb.zzd();
        } else if (this.zzg == 3) {
            this.zze.zzf();
            this.zzb.zze();
        }
        this.zzg = i;
    }

    public static /* synthetic */ void zzu(zzcig zzcigVar, MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        int i = Build.VERSION.SDK_INT;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcigVar.zzd == null || mediaPlayer == null || (trackInfo = mediaPlayer.getTrackInfo()) == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
            if (trackInfo2 != null) {
                int trackType = trackInfo2.getTrackType();
                if (trackType == 1) {
                    MediaFormat format2 = trackInfo2.getFormat();
                    if (format2 != null) {
                        if (format2.containsKey("frame-rate")) {
                            try {
                                hashMap.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                            } catch (ClassCastException e) {
                                hashMap.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                            }
                        }
                        if (format2.containsKey("bitrate")) {
                            Integer valueOf = Integer.valueOf(format2.getInteger("bitrate"));
                            zzcigVar.zzu = valueOf;
                            hashMap.put("bitRate", String.valueOf(valueOf));
                        }
                        if (format2.containsKey("width") && format2.containsKey("height")) {
                            int integer = format2.getInteger("width");
                            int integer2 = format2.getInteger("height");
                            StringBuilder sb = new StringBuilder(23);
                            sb.append(integer);
                            sb.append("x");
                            sb.append(integer2);
                            hashMap.put(CommonCode.MapKey.HAS_RESOLUTION, sb.toString());
                        }
                        if (format2.containsKey("mime")) {
                            hashMap.put("videoMime", format2.getString("mime"));
                        }
                        if (i >= 30 && format2.containsKey("codecs-string")) {
                            hashMap.put("videoCodec", format2.getString("codecs-string"));
                        }
                    }
                } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                    if (format.containsKey("mime")) {
                        hashMap.put("audioMime", format.getString("mime"));
                    }
                    if (i >= 30 && format.containsKey("codecs-string")) {
                        hashMap.put("audioCodec", format.getString("codecs-string"));
                    }
                }
            }
        }
        if (hashMap.isEmpty()) {
            return;
        }
        zzcigVar.zzd.zze("onMetadataEvent", hashMap);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzm = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zze.zza("AdMediaPlayerView completion");
        zzH(5);
        this.zzh = 5;
        zzs.zza.post(new zzchz(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = zzc;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(StringConstant.COLON);
        sb.append(str2);
        zzcgt.zzi(sb.toString());
        zzH(-1);
        this.zzh = -1;
        zzs.zza.post(new zzcia(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = zzc;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(StringConstant.COLON);
        sb.append(str2);
        zze.zza(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c1, code lost:
        if (r5 > r6) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fd, code lost:
        if (r0 > r0) goto L33;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcig.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zze.zza("AdMediaPlayerView prepared");
        zzH(2);
        this.zze.zzb();
        zzs.zza.post(new zzchy(this, mediaPlayer));
        this.zzk = mediaPlayer.getVideoWidth();
        this.zzl = mediaPlayer.getVideoHeight();
        int i = this.zzr;
        if (i != 0) {
            zzl(i);
        }
        zzD();
        int i2 = this.zzk;
        int i3 = this.zzl;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzcgt.zzh(sb.toString());
        if (this.zzh == 3) {
            zzh();
        }
        zzt();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zze.zza("AdMediaPlayerView surface created");
        zzC();
        zzs.zza.post(new zzcib(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zze.zza("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null && this.zzr == 0) {
            this.zzr = mediaPlayer.getCurrentPosition();
        }
        zzciz zzcizVar = this.zzp;
        if (zzcizVar != null) {
            zzcizVar.zzd();
        }
        zzs.zza.post(new zzcid(this));
        zzE(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zze.zza("AdMediaPlayerView surface changed");
        int i3 = this.zzh;
        boolean z = false;
        if (this.zzk == i) {
            z = false;
            if (this.zzl == i2) {
                z = true;
            }
        }
        if (this.zzi != null && i3 == 3 && z) {
            int i4 = this.zzr;
            if (i4 != 0) {
                zzl(i4);
            }
            zzh();
        }
        zzciz zzcizVar = this.zzp;
        if (zzcizVar != null) {
            zzcizVar.zzc(i, i2);
        }
        zzs.zza.post(new zzcic(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zze.zzd(this);
        this.zza.zzb(surfaceTexture, this.zzs);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zze.zza(sb.toString());
        this.zzk = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.zzl = videoHeight;
        if (this.zzk == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zze.zza(sb.toString());
        zzs.zza.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzchx
            private final zzcig zza;
            private final int zzb;

            {
                this.zza = this;
                this.zzb = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzv(this.zzb);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzcig.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return C22128a.m8610j(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, StringConstant.f9511AT, hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final String zzd() {
        String str = true != this.zzq ? "" : " spherical";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zze(zzcih zzcihVar) {
        this.zzs = zzcihVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzf(String str) {
        Uri parse = Uri.parse(str);
        zzayn zza = zzayn.zza(parse);
        if (zza == null || zza.zza != null) {
            if (zza != null) {
                parse = Uri.parse(zza.zza);
            }
            this.zzj = parse;
            this.zzr = 0;
            zzC();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzg() {
        zze.zza("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzi.release();
            this.zzi = null;
            zzH(0);
            this.zzh = 0;
        }
        this.zze.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzh() {
        zze.zza("AdMediaPlayerView play");
        if (zzF()) {
            this.zzi.start();
            zzH(3);
            this.zza.zza();
            zzs.zza.post(new zzcie(this));
        }
        this.zzh = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzi() {
        zze.zza("AdMediaPlayerView pause");
        if (zzF() && this.zzi.isPlaying()) {
            this.zzi.pause();
            zzH(4);
            zzs.zza.post(new zzcif(this));
        }
        this.zzh = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzj() {
        if (zzF()) {
            return this.zzi.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzk() {
        if (zzF()) {
            return this.zzi.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzl(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zze.zza(sb.toString());
        if (!zzF()) {
            this.zzr = i;
            return;
        }
        this.zzi.seekTo(i);
        this.zzr = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzm(float f, float f2) {
        zzciz zzcizVar = this.zzp;
        if (zzcizVar != null) {
            zzcizVar.zzf(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzn() {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzo() {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzp() {
        if (this.zzu != null) {
            return (zzr() * this.zzm) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzq() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final long zzr() {
        if (this.zzu != null) {
            return zzj() * this.zzu.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final int zzs() {
        if (Build.VERSION.SDK_INT < 26 || !zzF()) {
            return -1;
        }
        return this.zzi.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzcii, com.google.android.gms.internal.ads.zzcje
    public final void zzt() {
        zzG(this.zzb.zzc());
    }

    public final /* synthetic */ void zzv(int i) {
        zzcih zzcihVar = this.zzs;
        if (zzcihVar != null) {
            zzcihVar.onWindowVisibilityChanged(i);
        }
    }
}
