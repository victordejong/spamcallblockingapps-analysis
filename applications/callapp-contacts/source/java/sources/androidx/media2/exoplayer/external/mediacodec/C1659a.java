package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
/* renamed from: androidx.media2.exoplayer.external.mediacodec.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/a.class */
public final class C1659a {

    /* renamed from: a */
    public final String f6646a;

    /* renamed from: b */
    public final String f6647b;

    /* renamed from: c */
    public final String f6648c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f6649d;

    /* renamed from: e */
    public final boolean f6650e;

    /* renamed from: f */
    public final boolean f6651f;

    /* renamed from: g */
    public final boolean f6652g;

    /* renamed from: h */
    public final boolean f6653h;

    /* renamed from: i */
    public final boolean f6654i;

    /* renamed from: j */
    public final boolean f6655j;

    /* renamed from: k */
    public final boolean f6656k;

    /* renamed from: l */
    private final boolean f6657l;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1659a(java.lang.String r4, java.lang.String r5, java.lang.String r6, android.media.MediaCodecInfo.CodecCapabilities r7, boolean r8, boolean r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.C1659a.<init>(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: a */
    private static int m42421a(String str, String str2, int i) {
        if (i > 1 || ((C1996ac.f8062a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("AssumedMaxChannelAdjustment: ");
        sb.append(str);
        sb.append(", [");
        sb.append(i);
        sb.append(" to ");
        sb.append(i2);
        sb.append("]");
        C2009j.m41584a("MediaCodecInfo", sb.toString());
        return i2;
    }

    /* renamed from: a */
    public static C1659a m42420a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new C1659a(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    /* renamed from: a */
    private boolean m42427a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6649d;
        if (codecCapabilities == null) {
            m42422a("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m42422a("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            m42422a(sb.toString());
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m42425a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, Math.floor(d));
    }

    /* renamed from: b */
    private void m42417b(String str) {
        String str2 = this.f6646a;
        String str3 = this.f6647b;
        String str4 = C1996ac.f8066e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        C2009j.m41585a();
    }

    /* renamed from: b */
    private boolean m42419b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6649d;
        if (codecCapabilities == null) {
            m42422a("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m42422a("channelCount.aCaps");
            return false;
        } else if (m42421a(this.f6646a, this.f6647b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            m42422a(sb.toString());
            return false;
        }
    }

    /* renamed from: c */
    private boolean m42416c(Format format) {
        String m41569f;
        MediaCodecInfo.CodecProfileLevel[] m42428a;
        if (format.codecs == null || this.f6647b == null || (m41569f = C2012m.m41569f(format.codecs)) == null) {
            return true;
        }
        if (!this.f6647b.equals(m41569f)) {
            String str = format.codecs;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(m41569f).length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(m41569f);
            m42422a(sb.toString());
            return false;
        }
        Pair<Integer, Integer> m42449a = MediaCodecUtil.m42449a(format);
        if (m42449a == null) {
            return true;
        }
        int intValue = ((Integer) m42449a.first).intValue();
        int intValue2 = ((Integer) m42449a.second).intValue();
        if (!this.f6657l && intValue != 42) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m42428a()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        String str2 = format.codecs;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 22 + String.valueOf(m41569f).length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str2);
        sb2.append(", ");
        sb2.append(m41569f);
        m42422a(sb2.toString());
        return false;
    }

    /* renamed from: a */
    public final void m42422a(String str) {
        String str2 = this.f6646a;
        String str3 = this.f6647b;
        String str4 = C1996ac.f8066e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        C2009j.m41585a();
    }

    /* renamed from: a */
    public final boolean m42426a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6649d;
        if (codecCapabilities == null) {
            m42422a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m42422a("sizeAndRate.vCaps");
            return false;
        } else if (m42425a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m42425a(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                m42422a(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d);
            m42417b(sb2.toString());
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m42424a(Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z = false;
        if (!m42416c(format)) {
            return false;
        }
        if (!this.f6657l) {
            if (C1996ac.f8062a < 21) {
                return true;
            }
            if (format.sampleRate != -1 && !m42427a(format.sampleRate)) {
                return false;
            }
            return format.channelCount == -1 || m42419b(format.channelCount);
        } else if (format.width <= 0 || format.height <= 0) {
            return true;
        } else {
            if (C1996ac.f8062a >= 21) {
                return m42426a(format.width, format.height, format.frameRate);
            }
            if (format.width * format.height <= MediaCodecUtil.m42438b()) {
                z = true;
            }
            if (!z) {
                int i = format.width;
                int i2 = format.height;
                StringBuilder sb = new StringBuilder(40);
                sb.append("legacyFrameSize, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                m42422a(sb.toString());
            }
            return z;
        }
    }

    /* renamed from: a */
    public final boolean m42423a(Format format, Format format2, boolean z) {
        if (this.f6657l) {
            if (!format.sampleMimeType.equals(format2.sampleMimeType) || format.rotationDegrees != format2.rotationDegrees) {
                return false;
            }
            if (!this.f6650e && (format.width != format2.width || format.height != format2.height)) {
                return false;
            }
            return (!z && format2.colorInfo == null) || C1996ac.m41658a(format.colorInfo, format2.colorInfo);
        } else if (!"audio/mp4a-latm".equals(this.f6647b) || !format.sampleMimeType.equals(format2.sampleMimeType) || format.channelCount != format2.channelCount || format.sampleRate != format2.sampleRate) {
            return false;
        } else {
            Pair<Integer, Integer> m42449a = MediaCodecUtil.m42449a(format);
            Pair<Integer, Integer> m42449a2 = MediaCodecUtil.m42449a(format2);
            if (m42449a == null || m42449a2 == null) {
                return false;
            }
            return ((Integer) m42449a.first).intValue() == 42 && ((Integer) m42449a2.first).intValue() == 42;
        }
    }

    /* renamed from: a */
    public final MediaCodecInfo.CodecProfileLevel[] m42428a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6649d;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f6649d.profileLevels;
    }

    /* renamed from: b */
    public final boolean m42418b(Format format) {
        if (this.f6657l) {
            return this.f6650e;
        }
        Pair<Integer, Integer> m42449a = MediaCodecUtil.m42449a(format);
        return m42449a != null && ((Integer) m42449a.first).intValue() == 42;
    }

    public final String toString() {
        return this.f6646a;
    }
}
