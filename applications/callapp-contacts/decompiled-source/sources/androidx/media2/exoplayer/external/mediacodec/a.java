package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.m;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f3436a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3437b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3438c;

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f3439d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    private final boolean l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.String r4, java.lang.String r5, java.lang.String r6, android.media.MediaCodecInfo.CodecCapabilities r7, boolean r8, boolean r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.a.<init>(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean, boolean):void");
    }

    private static int a(String str, String str2, int i) {
        if (i > 1 || ((ac.f4119a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
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
        j.a("MediaCodecInfo", sb.toString());
        return i2;
    }

    public static a a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new a(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    private boolean a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f3439d;
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
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            a(sb.toString());
            return false;
        }
    }

    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        return (d2 == -1.0d || d2 <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, Math.floor(d2));
    }

    private void b(String str) {
        String str2 = this.f3436a;
        String str3 = this.f3437b;
        String str4 = ac.e;
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
        j.a();
    }

    private boolean b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f3439d;
        if (codecCapabilities == null) {
            a("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            a("channelCount.aCaps");
            return false;
        } else if (a(this.f3436a, this.f3437b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            a(sb.toString());
            return false;
        }
    }

    private boolean c(Format format) {
        String f;
        MediaCodecInfo.CodecProfileLevel[] a2;
        if (format.codecs == null || this.f3437b == null || (f = m.f(format.codecs)) == null) {
            return true;
        }
        if (!this.f3437b.equals(f)) {
            String str = format.codecs;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(f).length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(f);
            a(sb.toString());
            return false;
        }
        Pair<Integer, Integer> a3 = MediaCodecUtil.a(format);
        if (a3 == null) {
            return true;
        }
        int intValue = ((Integer) a3.first).intValue();
        int intValue2 = ((Integer) a3.second).intValue();
        if (!(this.l || intValue == 42)) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        String str2 = format.codecs;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 22 + String.valueOf(f).length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str2);
        sb2.append(", ");
        sb2.append(f);
        a(sb2.toString());
        return false;
    }

    public final void a(String str) {
        String str2 = this.f3436a;
        String str3 = this.f3437b;
        String str4 = ac.e;
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
        j.a();
    }

    public final boolean a(int i, int i2, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f3439d;
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
            if (i >= i2 || !a(videoCapabilities, i2, i, d2)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d2);
                a(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d2);
            b(sb2.toString());
            return true;
        }
    }

    public final boolean a(Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z = false;
        if (!c(format)) {
            return false;
        }
        if (this.l) {
            if (format.width <= 0 || format.height <= 0) {
                return true;
            }
            if (ac.f4119a >= 21) {
                return a(format.width, format.height, format.frameRate);
            }
            if (format.width * format.height <= MediaCodecUtil.b()) {
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
                a(sb.toString());
            }
            return z;
        } else if (ac.f4119a < 21) {
            return true;
        } else {
            if (format.sampleRate == -1 || a(format.sampleRate)) {
                return format.channelCount == -1 || b(format.channelCount);
            }
            return false;
        }
    }

    public final boolean a(Format format, Format format2, boolean z) {
        if (this.l) {
            if (!format.sampleMimeType.equals(format2.sampleMimeType) || format.rotationDegrees != format2.rotationDegrees) {
                return false;
            }
            if (this.e || (format.width == format2.width && format.height == format2.height)) {
                return (!z && format2.colorInfo == null) || ac.a(format.colorInfo, format2.colorInfo);
            }
            return false;
        } else if (!"audio/mp4a-latm".equals(this.f3437b) || !format.sampleMimeType.equals(format2.sampleMimeType) || format.channelCount != format2.channelCount || format.sampleRate != format2.sampleRate) {
            return false;
        } else {
            Pair<Integer, Integer> a2 = MediaCodecUtil.a(format);
            Pair<Integer, Integer> a3 = MediaCodecUtil.a(format2);
            if (a2 == null || a3 == null) {
                return false;
            }
            return ((Integer) a2.first).intValue() == 42 && ((Integer) a3.first).intValue() == 42;
        }
    }

    public final MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f3439d;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f3439d.profileLevels;
    }

    public final boolean b(Format format) {
        if (this.l) {
            return this.e;
        }
        Pair<Integer, Integer> a2 = MediaCodecUtil.a(format);
        return a2 != null && ((Integer) a2.first).intValue() == 42;
    }

    public final String toString() {
        return this.f3436a;
    }
}
