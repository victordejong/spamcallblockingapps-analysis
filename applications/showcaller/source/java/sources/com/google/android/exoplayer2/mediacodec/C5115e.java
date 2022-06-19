package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
/* renamed from: com.google.android.exoplayer2.mediacodec.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/e.class */
public final class C5115e {

    /* renamed from: a */
    public final String f16072a;

    /* renamed from: b */
    public final String f16073b;

    /* renamed from: c */
    public final String f16074c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f16075d;

    /* renamed from: e */
    public final boolean f16076e;

    /* renamed from: f */
    public final boolean f16077f;

    /* renamed from: g */
    public final boolean f16078g;

    /* renamed from: h */
    public final boolean f16079h;

    /* renamed from: i */
    public final boolean f16080i;

    /* renamed from: j */
    public final boolean f16081j;

    /* renamed from: k */
    public final boolean f16082k;

    /* renamed from: l */
    private final boolean f16083l;

    private C5115e(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f16072a = (String) C5508e.m18911e(str);
        this.f16073b = str2;
        this.f16074c = str3;
        this.f16075d = codecCapabilities;
        this.f16079h = z;
        this.f16080i = z2;
        this.f16081j = z3;
        this.f16082k = z4;
        this.f16076e = !z5 && codecCapabilities != null && m20420g(codecCapabilities);
        this.f16077f = codecCapabilities != null && m20409r(codecCapabilities);
        this.f16078g = !z6 ? codecCapabilities != null && m20411p(codecCapabilities) : true;
        this.f16083l = C5529r.m18723n(str2);
    }

    /* renamed from: a */
    private static int m20426a(String str, String str2, int i) {
        if (i > 1 || ((C5515h0.f17876a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        C5526o.m18742f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    @TargetApi(21)
    /* renamed from: c */
    private static Point m20424c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C5515h0.m18829i(i, widthAlignment) * widthAlignment, C5515h0.m18829i(i2, heightAlignment) * heightAlignment);
    }

    @TargetApi(21)
    /* renamed from: d */
    private static boolean m20423d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point m20424c = m20424c(videoCapabilities, i, i2);
        int i3 = m20424c.x;
        int i4 = m20424c.y;
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* renamed from: e */
    private static final boolean m20422e(String str) {
        return !"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(C5515h0.f17877b);
    }

    /* renamed from: g */
    private static boolean m20420g(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C5515h0.f17876a >= 19 && m20419h(codecCapabilities);
    }

    @TargetApi(19)
    /* renamed from: h */
    private static boolean m20419h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* renamed from: p */
    private static boolean m20411p(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C5515h0.f17876a >= 21 && m20410q(codecCapabilities);
    }

    @TargetApi(21)
    /* renamed from: q */
    private static boolean m20410q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    /* renamed from: r */
    private static boolean m20409r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C5515h0.f17876a >= 21 && m20408s(codecCapabilities);
    }

    @TargetApi(21)
    /* renamed from: s */
    private static boolean m20408s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    /* renamed from: u */
    private void m20406u(String str) {
        C5526o.m18746b("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f16072a + ", " + this.f16073b + "] [" + C5515h0.f17880e + "]");
    }

    /* renamed from: v */
    private void m20405v(String str) {
        C5526o.m18746b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f16072a + ", " + this.f16073b + "] [" + C5515h0.f17880e + "]");
    }

    /* renamed from: w */
    public static C5115e m20404w(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new C5115e(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    /* renamed from: x */
    public static C5115e m20403x(String str) {
        return new C5115e(str, null, null, null, true, false, true, false, false, false);
    }

    @TargetApi(21)
    /* renamed from: b */
    public Point m20425b(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f16075d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return m20424c(videoCapabilities, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] m20421f() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f16075d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L14
            r0 = r3
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = r0.profileLevels
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L19
        L14:
            r0 = 0
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = new android.media.MediaCodecInfo.CodecProfileLevel[r0]
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C5115e.m20421f():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    @TargetApi(21)
    /* renamed from: i */
    public boolean m20418i(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f16075d;
        if (codecCapabilities == null) {
            m20405v("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m20405v("channelCount.aCaps");
            return false;
        } else if (m20426a(this.f16072a, this.f16073b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            m20405v("channelCount.support, " + i);
            return false;
        }
    }

    @TargetApi(21)
    /* renamed from: j */
    public boolean m20417j(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f16075d;
        if (codecCapabilities == null) {
            m20405v("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m20405v("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            m20405v("sampleRate.support, " + i);
            return false;
        }
    }

    /* renamed from: k */
    public boolean m20416k(Format format) {
        String m18732e;
        MediaCodecInfo.CodecProfileLevel[] m20421f;
        String str = format.f14458i;
        if (str == null || this.f16073b == null || (m18732e = C5529r.m18732e(str)) == null) {
            return true;
        }
        if (!this.f16073b.equals(m18732e)) {
            m20405v("codec.mime " + format.f14458i + ", " + m18732e);
            return false;
        }
        Pair<Integer, Integer> m20452h = MediaCodecUtil.m20452h(format);
        if (m20452h == null) {
            return true;
        }
        int intValue = ((Integer) m20452h.first).intValue();
        int intValue2 = ((Integer) m20452h.second).intValue();
        if (!this.f16083l && intValue != 42) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m20421f()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        m20405v("codec.profileLevel, " + format.f14458i + ", " + m18732e);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b4, code lost:
        if (m20417j(r0) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cc, code lost:
        if (m20418i(r0) != false) goto L34;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20415l(com.google.android.exoplayer2.Format r7) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C5115e.m20415l(com.google.android.exoplayer2.Format):boolean");
    }

    /* renamed from: m */
    public boolean m20414m() {
        if (C5515h0.f17876a < 29 || !"video/x-vnd.on2.vp9".equals(this.f16073b)) {
            return false;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m20421f()) {
            if (codecProfileLevel.profile == 16384) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public boolean m20413n(Format format) {
        if (this.f16083l) {
            return this.f16076e;
        }
        Pair<Integer, Integer> m20452h = MediaCodecUtil.m20452h(format);
        return m20452h != null && ((Integer) m20452h.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.f14473x != null) goto L18;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20412o(com.google.android.exoplayer2.Format r4, com.google.android.exoplayer2.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C5115e.m20412o(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format, boolean):boolean");
    }

    @TargetApi(21)
    /* renamed from: t */
    public boolean m20407t(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f16075d;
        if (codecCapabilities == null) {
            m20405v("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m20405v("sizeAndRate.vCaps");
            return false;
        } else if (m20423d(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m20422e(this.f16072a) || !m20423d(videoCapabilities, i2, i, d)) {
                m20405v("sizeAndRate.support, " + i + "x" + i2 + "x" + d);
                return false;
            }
            m20406u("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d);
            return true;
        }
    }

    public String toString() {
        return this.f16072a;
    }
}
