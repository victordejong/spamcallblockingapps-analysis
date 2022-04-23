package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f21428a;

    /* renamed from: b  reason: collision with root package name */
    public final String f21429b;

    /* renamed from: c  reason: collision with root package name */
    public final String f21430c;

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f21431d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    private final boolean k;

    g(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f21428a = (String) a.b(str);
        this.f21429b = str2;
        this.f21430c = str3;
        this.f21431d = codecCapabilities;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.e = z4;
        this.f = z5;
        this.g = z6;
        this.k = q.b(str2);
    }

    private static int a(String str, String str2, int i) {
        if (i > 1 || ((af.f22275a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        n.a("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    public static Point a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(af.a(i, widthAlignment) * widthAlignment, af.a(i2, heightAlignment) * heightAlignment);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bb, code lost:
        if ((com.google.android.exoplayer2.util.af.f22275a >= 21 && r16.isFeatureSupported("secure-playback")) != false) goto L_0x00c7;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.mediacodec.g a(java.lang.String r13, java.lang.String r14, java.lang.String r15, android.media.MediaCodecInfo.CodecCapabilities r16, boolean r17, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.g.a(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean):com.google.android.exoplayer2.mediacodec.g");
    }

    private void a(String str) {
        StringBuilder sb = new StringBuilder("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(this.f21428a);
        sb.append(", ");
        sb.append(this.f21429b);
        sb.append("] [");
        sb.append(af.e);
        sb.append("]");
        n.a();
    }

    private boolean a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f21431d;
        if (codecCapabilities == null) {
            a("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            a("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            a("sampleRate.support, ".concat(String.valueOf(i)));
            return false;
        }
    }

    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        Point a2 = a(videoCapabilities, i, i2);
        int i3 = a2.x;
        int i4 = a2.y;
        return (d2 == -1.0d || d2 < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d2));
    }

    private static MediaCodecInfo.CodecProfileLevel[] a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        int i = intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? PropertyFlags.INDEX_PARTIAL_SKIP_NULL : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private void b(String str) {
        StringBuilder sb = new StringBuilder("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(this.f21428a);
        sb.append(", ");
        sb.append(this.f21429b);
        sb.append("] [");
        sb.append(af.e);
        sb.append("]");
        n.a();
    }

    private boolean b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f21431d;
        if (codecCapabilities == null) {
            a("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            a("channelCount.aCaps");
            return false;
        } else if (a(this.f21428a, this.f21429b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            a("channelCount.support, ".concat(String.valueOf(i)));
            return false;
        }
    }

    private boolean c(Format format) {
        String f;
        if (format.codecs == null || this.f21429b == null || (f = q.f(format.codecs)) == null) {
            return true;
        }
        if (!this.f21429b.equals(f)) {
            a("codec.mime " + format.codecs + ", " + f);
            return false;
        }
        Pair<Integer, Integer> a2 = MediaCodecUtil.a(format);
        if (a2 == null) {
            return true;
        }
        int intValue = ((Integer) a2.first).intValue();
        int intValue2 = ((Integer) a2.second).intValue();
        if (!(this.k || intValue == 42)) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] a3 = a();
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = a3;
        if (af.f22275a <= 23) {
            codecProfileLevelArr = a3;
            if ("video/x-vnd.on2.vp9".equals(this.f21429b)) {
                codecProfileLevelArr = a3;
                if (a3.length == 0) {
                    codecProfileLevelArr = a(this.f21431d);
                }
            }
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        a("codec.profileLevel, " + format.codecs + ", " + f);
        return false;
    }

    private static boolean c(String str) {
        return af.f22278d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static final boolean d(String str) {
        return !"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(af.f22276b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (r9.height != r10.height) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.decoder.e a(com.google.android.exoplayer2.Format r9, com.google.android.exoplayer2.Format r10) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.g.a(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format):com.google.android.exoplayer2.decoder.e");
    }

    public final boolean a(int i, int i2, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f21431d;
        if (codecCapabilities == null) {
            a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            a("sizeAndRate.vCaps");
            return false;
        } else if (a(videoCapabilities, i, i2, d2)) {
            return true;
        } else {
            if (i >= i2 || !d(this.f21428a) || !a(videoCapabilities, i2, i, d2)) {
                a("sizeAndRate.support, " + i + "x" + i2 + "x" + d2);
                return false;
            }
            b("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d2);
            return true;
        }
    }

    public final boolean a(Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z = false;
        if (!c(format)) {
            return false;
        }
        if (this.k) {
            if (format.width <= 0 || format.height <= 0) {
                return true;
            }
            if (af.f22275a >= 21) {
                return a(format.width, format.height, format.frameRate);
            }
            if (format.width * format.height <= MediaCodecUtil.b()) {
                z = true;
            }
            if (!z) {
                a("legacyFrameSize, " + format.width + "x" + format.height);
            }
            return z;
        } else if (af.f22275a < 21) {
            return true;
        } else {
            if (format.sampleRate == -1 || a(format.sampleRate)) {
                return format.channelCount == -1 || b(format.channelCount);
            }
            return false;
        }
    }

    public final MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f21431d;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f21431d.profileLevels;
    }

    public final boolean b(Format format) {
        if (this.k) {
            return this.e;
        }
        Pair<Integer, Integer> a2 = MediaCodecUtil.a(format);
        return a2 != null && ((Integer) a2.first).intValue() == 42;
    }

    public final String toString() {
        return this.f21428a;
    }
}
