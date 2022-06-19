package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.work.WorkRequest;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqe.class */
public final class zzqe extends zzlv {
    private static final int[] zzbld = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private final Context context;
    private int zzaif;
    private boolean zzalq;
    private final zzqi zzble;
    private final zzqj zzblf;
    private final long zzblg;
    private final int zzblh;
    private final boolean zzbli;
    private final long[] zzblj;
    private zzht[] zzblk;
    private zzqg zzbll;
    private Surface zzblm;
    private Surface zzbln;
    private int zzblo;
    private boolean zzblp;
    private long zzblq;
    private long zzblr;
    private int zzbls;
    private int zzblt;
    private int zzblu;
    private float zzblv;
    private int zzblw;
    private int zzblx;
    private int zzbly;
    private float zzblz;
    private int zzbma;
    private int zzbmb;
    private int zzbmc;
    private float zzbmd;
    zzqf zzbme;
    private long zzbmf;
    private int zzbmg;

    public zzqe(Context context, zzlx zzlxVar, long j, Handler handler, zzqk zzqkVar, int i) {
        this(context, zzlxVar, 0L, null, false, handler, zzqkVar, -1);
    }

    private zzqe(Context context, zzlx zzlxVar, long j, zzjt<zzjv> zzjtVar, boolean z, Handler handler, zzqk zzqkVar, int i) {
        super(2, zzlxVar, null, false);
        this.zzblg = 0L;
        this.zzblh = -1;
        this.context = context.getApplicationContext();
        this.zzble = new zzqi(context);
        this.zzblf = new zzqj(handler, zzqkVar);
        boolean z2 = false;
        if (zzpt.SDK_INT <= 22) {
            z2 = false;
            if ("foster".equals(zzpt.DEVICE)) {
                z2 = false;
                if ("NVIDIA".equals(zzpt.MANUFACTURER)) {
                    z2 = true;
                }
            }
        }
        this.zzbli = z2;
        this.zzblj = new long[10];
        this.zzbmf = -9223372036854775807L;
        this.zzblq = -9223372036854775807L;
        this.zzblw = -1;
        this.zzblx = -1;
        this.zzblz = -1.0f;
        this.zzblv = -1.0f;
        this.zzblo = 1;
        zzjl();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int zza(String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                i5 = i * i2;
                i3 = i5;
                i4 = 2;
                break;
            case true:
            case true:
                i3 = i * i2;
                i4 = 4;
                break;
            case true:
                if (!"BRAVIA 4K 2015".equals(zzpt.MODEL)) {
                    i5 = ((zzpt.zzf(i, 16) * zzpt.zzf(i2, 16)) << 4) << 4;
                    i3 = i5;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    private final void zza(MediaCodec mediaCodec, int i, long j) {
        zzpu.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzpu.endSection();
        this.zzbcq.zzaoe++;
    }

    private final void zza(MediaCodec mediaCodec, int i, long j, long j2) {
        zzjm();
        zzpu.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzpu.endSection();
        this.zzbcq.zzaod++;
        this.zzblt = 0;
        zzjk();
    }

    private static boolean zza(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        if (!zzhtVar.zzahe.equals(zzhtVar2.zzahe) || zzj(zzhtVar) != zzj(zzhtVar2)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzhtVar.width == zzhtVar2.width && zzhtVar.height == zzhtVar2.height;
    }

    private final void zzb(MediaCodec mediaCodec, int i, long j) {
        zzjm();
        zzpu.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzpu.endSection();
        this.zzbcq.zzaod++;
        this.zzblt = 0;
        zzjk();
    }

    private static boolean zzem(long j) {
        return j < -30000;
    }

    private static int zzi(zzht zzhtVar) {
        return zzhtVar.zzahf != -1 ? zzhtVar.zzahf : zza(zzhtVar.zzahe, zzhtVar.width, zzhtVar.height);
    }

    private static int zzj(zzht zzhtVar) {
        if (zzhtVar.zzahj == -1) {
            return 0;
        }
        return zzhtVar.zzahj;
    }

    private final void zzji() {
        this.zzblq = -9223372036854775807L;
    }

    private final void zzjj() {
        MediaCodec zzhd;
        this.zzblp = false;
        if (zzpt.SDK_INT < 23 || !this.zzalq || (zzhd = zzhd()) == null) {
            return;
        }
        this.zzbme = new zzqf(this, zzhd);
    }

    private final void zzjl() {
        this.zzbma = -1;
        this.zzbmb = -1;
        this.zzbmd = -1.0f;
        this.zzbmc = -1;
    }

    private final void zzjm() {
        int i = this.zzbma;
        int i2 = this.zzblw;
        if (i == i2 && this.zzbmb == this.zzblx && this.zzbmc == this.zzbly && this.zzbmd == this.zzblz) {
            return;
        }
        this.zzblf.zza(i2, this.zzblx, this.zzbly, this.zzblz);
        this.zzbma = this.zzblw;
        this.zzbmb = this.zzblx;
        this.zzbmc = this.zzbly;
        this.zzbmd = this.zzblz;
    }

    private final void zzjn() {
        if (this.zzbma == -1 && this.zzbmb == -1) {
            return;
        }
        this.zzblf.zza(this.zzblw, this.zzblx, this.zzbly, this.zzblz);
    }

    private final void zzjo() {
        if (this.zzbls > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzblf.zzf(this.zzbls, elapsedRealtime - this.zzblr);
            this.zzbls = 0;
            this.zzblr = elapsedRealtime;
        }
    }

    private final boolean zzn(boolean z) {
        if (zzpt.SDK_INT < 23 || this.zzalq) {
            return false;
        }
        return !z || zzqa.zzc(this.context);
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.zzblp || (((surface = this.zzbln) != null && this.zzblm == surface) || zzhd() == null))) {
            this.zzblq = -9223372036854775807L;
            return true;
        } else if (this.zzblq == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.zzblq) {
                return true;
            }
            this.zzblq = -9223372036854775807L;
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.zzblw = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
        this.zzblx = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        this.zzblz = this.zzblv;
        if (zzpt.SDK_INT >= 21) {
            int i = this.zzblu;
            if (i == 90 || i == 270) {
                int i2 = this.zzblw;
                this.zzblw = this.zzblx;
                this.zzblx = i2;
                this.zzblz = 1.0f / this.zzblz;
            }
        } else {
            this.zzbly = this.zzblu;
        }
        mediaCodec.setVideoScalingMode(this.zzblo);
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void onStarted() {
        super.onStarted();
        this.zzbls = 0;
        this.zzblr = SystemClock.elapsedRealtime();
        this.zzblq = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void onStopped() {
        zzjo();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final int zza(zzlx zzlxVar, zzht zzhtVar) throws zzmd {
        boolean z;
        String str = zzhtVar.zzahe;
        int i = 0;
        if (!zzpj.zzbd(str)) {
            return 0;
        }
        zzjo zzjoVar = zzhtVar.zzahh;
        if (zzjoVar != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= zzjoVar.zzaoj) {
                    break;
                }
                z2 |= zzjoVar.zzac(i2).zzaon;
                i2++;
            }
        } else {
            z = false;
        }
        zzlw zzc = zzlxVar.zzc(str, z);
        if (zzc == null) {
            return 1;
        }
        boolean zzaz = zzc.zzaz(zzhtVar.zzahb);
        boolean z3 = zzaz;
        if (zzaz) {
            z3 = zzaz;
            if (zzhtVar.width > 0) {
                z3 = zzaz;
                if (zzhtVar.height > 0) {
                    if (zzpt.SDK_INT >= 21) {
                        z3 = zzc.zza(zzhtVar.width, zzhtVar.height, zzhtVar.zzahi);
                    } else {
                        z3 = zzhtVar.width * zzhtVar.height <= zzlz.zzhk();
                        if (!z3) {
                            int i3 = zzhtVar.width;
                            int i4 = zzhtVar.height;
                            String str2 = zzpt.zzbkn;
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                            sb.append("FalseCheck [legacyFrameSize, ");
                            sb.append(i3);
                            sb.append("x");
                            sb.append(i4);
                            sb.append("] [");
                            sb.append(str2);
                            sb.append("]");
                            Log.d("MediaCodecVideoRenderer", sb.toString());
                        }
                    }
                }
            }
        }
        int i5 = zzc.zzbcr ? 8 : 4;
        if (zzc.zzalq) {
            i = 16;
        }
        return (z3 ? 3 : 2) | i5 | i;
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhj
    public final void zza(int i, Object obj) throws zzhe {
        if (i != 1) {
            if (i != 4) {
                super.zza(i, obj);
                return;
            }
            this.zzblo = ((Integer) obj).intValue();
            MediaCodec zzhd = zzhd();
            if (zzhd == null) {
                return;
            }
            zzhd.setVideoScalingMode(this.zzblo);
            return;
        }
        Surface surface = (Surface) obj;
        zzqa zzqaVar = surface;
        if (surface == null) {
            zzqaVar = this.zzbln;
            if (zzqaVar == null) {
                zzlw zzhe = zzhe();
                zzqaVar = surface;
                if (zzhe != null) {
                    zzqaVar = surface;
                    if (zzn(zzhe.zzbcs)) {
                        zzqaVar = zzqa.zzc(this.context, zzhe.zzbcs);
                        this.zzbln = zzqaVar;
                    }
                }
            }
        }
        if (this.zzblm == zzqaVar) {
            if (zzqaVar == null || zzqaVar == this.zzbln) {
                return;
            }
            zzjn();
            if (!this.zzblp) {
                return;
            }
            this.zzblf.zza(this.zzblm);
            return;
        }
        this.zzblm = zzqaVar;
        int state = getState();
        if (state == 1 || state == 2) {
            MediaCodec zzhd2 = zzhd();
            if (zzpt.SDK_INT < 23 || zzhd2 == null || zzqaVar == null) {
                zzhf();
                zzhc();
            } else {
                zzhd2.setOutputSurface(zzqaVar);
            }
        }
        if (zzqaVar == null || zzqaVar == this.zzbln) {
            zzjl();
            zzjj();
            return;
        }
        zzjn();
        zzjj();
        if (state != 2) {
            return;
        }
        zzji();
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zza(long j, boolean z) throws zzhe {
        super.zza(j, z);
        zzjj();
        this.zzblt = 0;
        int i = this.zzbmg;
        if (i != 0) {
            this.zzbmf = this.zzblj[i - 1];
            this.zzbmg = 0;
        }
        if (z) {
            zzji();
        } else {
            this.zzblq = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zza(zzjp zzjpVar) {
        if (zzpt.SDK_INT >= 23 || !this.zzalq) {
            return;
        }
        zzjk();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zza(zzlw zzlwVar, MediaCodec mediaCodec, zzht zzhtVar, MediaCrypto mediaCrypto) throws zzmd {
        zzqg zzqgVar;
        boolean z;
        int[] iArr;
        Point point;
        zzht[] zzhtVarArr = this.zzblk;
        int i = zzhtVar.width;
        int i2 = zzhtVar.height;
        int zzi = zzi(zzhtVar);
        if (zzhtVarArr.length == 1) {
            zzqgVar = new zzqg(i, i2, zzi);
        } else {
            int length = zzhtVarArr.length;
            int i3 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i3 >= length) {
                    break;
                }
                zzht zzhtVar2 = zzhtVarArr[i3];
                int i4 = i;
                int i5 = i2;
                int i6 = zzi;
                boolean z3 = z;
                if (zza(zzlwVar.zzbcr, zzhtVar, zzhtVar2)) {
                    z3 = z | (zzhtVar2.width == -1 || zzhtVar2.height == -1);
                    i4 = Math.max(i, zzhtVar2.width);
                    i5 = Math.max(i2, zzhtVar2.height);
                    i6 = Math.max(zzi, zzi(zzhtVar2));
                }
                i3++;
                i = i4;
                i2 = i5;
                zzi = i6;
                z2 = z3;
            }
            int i7 = i;
            int i8 = i2;
            int i9 = zzi;
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z4 = zzhtVar.height > zzhtVar.width;
                int i10 = z4 ? zzhtVar.height : zzhtVar.width;
                int i11 = z4 ? zzhtVar.width : zzhtVar.height;
                float f = i11 / i10;
                for (int i12 : zzbld) {
                    int i13 = (int) (i12 * f);
                    if (i12 <= i10 || i13 <= i11) {
                        break;
                    } else if (zzpt.SDK_INT >= 21) {
                        int i14 = z4 ? i13 : i12;
                        if (!z4) {
                            i12 = i13;
                        }
                        Point zzd = zzlwVar.zzd(i14, i12);
                        if (zzlwVar.zza(zzd.x, zzd.y, zzhtVar.zzahi)) {
                            point = zzd;
                            break;
                        }
                    } else {
                        int zzf = zzpt.zzf(i12, 16) << 4;
                        int zzf2 = zzpt.zzf(i13, 16) << 4;
                        if (zzf * zzf2 <= zzlz.zzhk()) {
                            int i15 = z4 ? zzf2 : zzf;
                            if (!z4) {
                                zzf = zzf2;
                            }
                            point = new Point(i15, zzf);
                        }
                    }
                }
                point = null;
                i7 = i;
                i8 = i2;
                i9 = zzi;
                if (point != null) {
                    i7 = Math.max(i, point.x);
                    i8 = Math.max(i2, point.y);
                    i9 = Math.max(zzi, zza(zzhtVar.zzahe, i7, i8));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i7);
                    sb2.append("x");
                    sb2.append(i8);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            zzqgVar = new zzqg(i7, i8, i9);
        }
        this.zzbll = zzqgVar;
        boolean z5 = this.zzbli;
        int i16 = this.zzaif;
        MediaFormat zzfa = zzhtVar.zzfa();
        zzfa.setInteger("max-width", zzqgVar.width);
        zzfa.setInteger("max-height", zzqgVar.height);
        if (zzqgVar.zzbmi != -1) {
            zzfa.setInteger("max-input-size", zzqgVar.zzbmi);
        }
        if (z5) {
            zzfa.setInteger("auto-frc", 0);
        }
        if (i16 != 0) {
            zzfa.setFeatureEnabled("tunneled-playback", true);
            zzfa.setInteger("audio-session-id", i16);
        }
        if (this.zzblm == null) {
            zzpg.checkState(zzn(zzlwVar.zzbcs));
            if (this.zzbln == null) {
                this.zzbln = zzqa.zzc(this.context, zzlwVar.zzbcs);
            }
            this.zzblm = this.zzbln;
        }
        mediaCodec.configure(zzfa, this.zzblm, (MediaCrypto) null, 0);
        if (zzpt.SDK_INT < 23 || !this.zzalq) {
            return;
        }
        this.zzbme = new zzqf(this, mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zza(zzht[] zzhtVarArr, long j) throws zzhe {
        this.zzblk = zzhtVarArr;
        if (this.zzbmf == -9223372036854775807L) {
            this.zzbmf = j;
        } else {
            int i = this.zzbmg;
            long[] jArr = this.zzblj;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.zzbmg = i + 1;
            }
            this.zzblj[this.zzbmg - 1] = j;
        }
        super.zza(zzhtVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.zzbmg;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.zzblj;
            if (j3 < jArr[0]) {
                break;
            }
            this.zzbmf = jArr[0];
            int i4 = i3 - 1;
            this.zzbmg = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j4 = j3 - this.zzbmf;
        if (z) {
            zza(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.zzblm == this.zzbln) {
            if (!zzem(j5)) {
                return false;
            }
            zza(mediaCodec, i, j4);
            return true;
        } else if (!this.zzblp) {
            if (zzpt.SDK_INT >= 21) {
                zza(mediaCodec, i, j4, System.nanoTime());
                return true;
            }
            zzb(mediaCodec, i, j4);
            return true;
        } else if (getState() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long zzf = this.zzble.zzf(j3, ((j5 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j6 = (zzf - nanoTime) / 1000;
            if (!zzem(j6)) {
                if (zzpt.SDK_INT >= 21) {
                    if (j6 >= 50000) {
                        return false;
                    }
                    zza(mediaCodec, i, j4, zzf);
                    return true;
                } else if (j6 >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    return false;
                } else {
                    if (j6 > 11000) {
                        try {
                            Thread.sleep((j6 - WorkRequest.MIN_BACKOFF_MILLIS) / 1000);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    zzb(mediaCodec, i, j4);
                    return true;
                }
            }
            zzpu.beginSection("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzpu.endSection();
            this.zzbcq.zzaof++;
            this.zzbls++;
            this.zzblt++;
            this.zzbcq.zzaog = Math.max(this.zzblt, this.zzbcq.zzaog);
            if (this.zzbls != this.zzblh) {
                return true;
            }
            zzjo();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final boolean zza(MediaCodec mediaCodec, boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return zza(z, zzhtVar, zzhtVar2) && zzhtVar2.width <= this.zzbll.width && zzhtVar2.height <= this.zzbll.height && zzhtVar2.zzahf <= this.zzbll.zzbmi;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final boolean zza(zzlw zzlwVar) {
        return this.zzblm != null || zzn(zzlwVar.zzbcs);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zzc(String str, long j, long j2) {
        this.zzblf.zza(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzd(zzht zzhtVar) throws zzhe {
        super.zzd(zzhtVar);
        this.zzblf.zzb(zzhtVar);
        this.zzblv = zzhtVar.zzahk == -1.0f ? 1.0f : zzhtVar.zzahk;
        this.zzblu = zzj(zzhtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zze(boolean z) throws zzhe {
        super.zze(z);
        int i = zzei().zzaif;
        this.zzaif = i;
        this.zzalq = i != 0;
        this.zzblf.zza(this.zzbcq);
        this.zzble.enable();
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zzeh() {
        this.zzblw = -1;
        this.zzblx = -1;
        this.zzblz = -1.0f;
        this.zzblv = -1.0f;
        this.zzbmf = -9223372036854775807L;
        this.zzbmg = 0;
        zzjl();
        zzjj();
        this.zzble.disable();
        this.zzbme = null;
        this.zzalq = false;
        try {
            super.zzeh();
        } finally {
            this.zzbcq.zzgn();
            this.zzblf.zzb(this.zzbcq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzhf() {
        try {
            super.zzhf();
            Surface surface = this.zzbln;
            if (surface == null) {
                return;
            }
            if (this.zzblm == surface) {
                this.zzblm = null;
            }
            surface.release();
            this.zzbln = null;
        } catch (Throwable th) {
            if (this.zzbln != null) {
                Surface surface2 = this.zzblm;
                Surface surface3 = this.zzbln;
                if (surface2 == surface3) {
                    this.zzblm = null;
                }
                surface3.release();
                this.zzbln = null;
            }
            throw th;
        }
    }

    public final void zzjk() {
        if (!this.zzblp) {
            this.zzblp = true;
            this.zzblf.zza(this.zzblm);
        }
    }
}
