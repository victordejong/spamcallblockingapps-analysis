package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
/* renamed from: com.google.android.exoplayer2.mediacodec.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/g.class */
public final class C11187g {

    /* renamed from: a */
    public final String f36736a;

    /* renamed from: b */
    public final String f36737b;

    /* renamed from: c */
    public final String f36738c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f36739d;

    /* renamed from: e */
    public final boolean f36740e;

    /* renamed from: f */
    public final boolean f36741f;

    /* renamed from: g */
    public final boolean f36742g;

    /* renamed from: h */
    public final boolean f36743h;

    /* renamed from: i */
    public final boolean f36744i;

    /* renamed from: j */
    public final boolean f36745j;

    /* renamed from: k */
    private final boolean f36746k;

    C11187g(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f36736a = (String) C11593a.m20020b(str);
        this.f36737b = str2;
        this.f36738c = str3;
        this.f36739d = codecCapabilities;
        this.f36743h = z;
        this.f36744i = z2;
        this.f36745j = z3;
        this.f36740e = z4;
        this.f36741f = z5;
        this.f36742g = z6;
        this.f36746k = C11620q.m19851b(str2);
    }

    /* renamed from: a */
    private static int m21244a(String str, String str2, int i) {
        if (i > 1 || ((C11599af.f38648a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        C11617n.m19863a("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    /* renamed from: a */
    public static Point m21249a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C11599af.m19998a(i, widthAlignment) * widthAlignment, C11599af.m19998a(i2, heightAlignment) * heightAlignment);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bb, code lost:
        if ((com.google.android.exoplayer2.util.C11599af.f38648a >= 21 && r16.isFeatureSupported("secure-playback")) != false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.mediacodec.C11187g m21243a(java.lang.String r13, java.lang.String r14, java.lang.String r15, android.media.MediaCodecInfo.CodecCapabilities r16, boolean r17, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C11187g.m21243a(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean):com.google.android.exoplayer2.mediacodec.g");
    }

    /* renamed from: a */
    private void m21245a(String str) {
        StringBuilder sb = new StringBuilder("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(this.f36736a);
        sb.append(", ");
        sb.append(this.f36737b);
        sb.append("] [");
        sb.append(C11599af.f38652e);
        sb.append("]");
        C11617n.m19864a();
    }

    /* renamed from: a */
    private boolean m21252a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f36739d;
        if (codecCapabilities == null) {
            m21245a("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m21245a("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            m21245a("sampleRate.support, ".concat(String.valueOf(i)));
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m21248a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point m21249a = m21249a(videoCapabilities, i, i2);
        int i3 = m21249a.x;
        int i4 = m21249a.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* renamed from: a */
    private static MediaCodecInfo.CodecProfileLevel[] m21250a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        int i = intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? 256 : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    /* renamed from: b */
    private void m21240b(String str) {
        StringBuilder sb = new StringBuilder("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(this.f36736a);
        sb.append(", ");
        sb.append(this.f36737b);
        sb.append("] [");
        sb.append(C11599af.f38652e);
        sb.append("]");
        C11617n.m19864a();
    }

    /* renamed from: b */
    private boolean m21242b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f36739d;
        if (codecCapabilities == null) {
            m21245a("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m21245a("channelCount.aCaps");
            return false;
        } else if (m21244a(this.f36736a, this.f36737b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            m21245a("channelCount.support, ".concat(String.valueOf(i)));
            return false;
        }
    }

    /* renamed from: c */
    private boolean m21239c(Format format) {
        String m19846f;
        if (format.codecs == null || this.f36737b == null || (m19846f = C11620q.m19846f(format.codecs)) == null) {
            return true;
        }
        if (!this.f36737b.equals(m19846f)) {
            m21245a("codec.mime " + format.codecs + ", " + m19846f);
            return false;
        }
        Pair<Integer, Integer> m21306a = MediaCodecUtil.m21306a(format);
        if (m21306a == null) {
            return true;
        }
        int intValue = ((Integer) m21306a.first).intValue();
        int intValue2 = ((Integer) m21306a.second).intValue();
        if (!this.f36746k && intValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] m21253a = m21253a();
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = m21253a;
        if (C11599af.f38648a <= 23) {
            codecProfileLevelArr = m21253a;
            if ("video/x-vnd.on2.vp9".equals(this.f36737b)) {
                codecProfileLevelArr = m21253a;
                if (m21253a.length == 0) {
                    codecProfileLevelArr = m21250a(this.f36739d);
                }
            }
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        m21245a("codec.profileLevel, " + format.codecs + ", " + m19846f);
        return false;
    }

    /* renamed from: c */
    private static boolean m21238c(String str) {
        return C11599af.f38651d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    /* renamed from: d */
    private static final boolean m21237d(String str) {
        return !"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(C11599af.f38649b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (r9.height != r10.height) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.decoder.C10935e m21246a(com.google.android.exoplayer2.Format r9, com.google.android.exoplayer2.Format r10) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C11187g.m21246a(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format):com.google.android.exoplayer2.decoder.e");
    }

    /* renamed from: a */
    public final boolean m21251a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f36739d;
        if (codecCapabilities == null) {
            m21245a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m21245a("sizeAndRate.vCaps");
            return false;
        } else if (m21248a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m21237d(this.f36736a) || !m21248a(videoCapabilities, i2, i, d)) {
                m21245a("sizeAndRate.support, " + i + "x" + i2 + "x" + d);
                return false;
            }
            m21240b("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m21247a(Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z = false;
        if (!m21239c(format)) {
            return false;
        }
        if (!this.f36746k) {
            if (C11599af.f38648a < 21) {
                return true;
            }
            if (format.sampleRate != -1 && !m21252a(format.sampleRate)) {
                return false;
            }
            return format.channelCount == -1 || m21242b(format.channelCount);
        } else if (format.width <= 0 || format.height <= 0) {
            return true;
        } else {
            if (C11599af.f38648a >= 21) {
                return m21251a(format.width, format.height, format.frameRate);
            }
            if (format.width * format.height <= MediaCodecUtil.m21295b()) {
                z = true;
            }
            if (!z) {
                m21245a("legacyFrameSize, " + format.width + "x" + format.height);
            }
            return z;
        }
    }

    /* renamed from: a */
    public final MediaCodecInfo.CodecProfileLevel[] m21253a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f36739d;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f36739d.profileLevels;
    }

    /* renamed from: b */
    public final boolean m21241b(Format format) {
        if (this.f36746k) {
            return this.f36740e;
        }
        Pair<Integer, Integer> m21306a = MediaCodecUtil.m21306a(format);
        return m21306a != null && ((Integer) m21306a.first).intValue() == 42;
    }

    public final String toString() {
        return this.f36736a;
    }
}
