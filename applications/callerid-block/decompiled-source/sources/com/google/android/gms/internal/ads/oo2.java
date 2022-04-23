package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oo2.class */
public final class oo2 {

    /* renamed from: a */
    public final String f7876a;

    /* renamed from: b */
    public final boolean f7877b;

    /* renamed from: c */
    public final boolean f7878c;

    /* renamed from: d */
    public final boolean f7879d;

    /* renamed from: e */
    private final String f7880e;

    /* renamed from: f */
    private final MediaCodecInfo.CodecCapabilities f7881f;

    private oo2(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        str.getClass();
        this.f7876a = str;
        this.f7880e = str2;
        this.f7881f = codecCapabilities;
        this.f7877b = !z && codecCapabilities != null && zr2.f9434a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
        this.f7878c = codecCapabilities != null && zr2.f9434a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
        this.f7879d = !z2 ? codecCapabilities != null && zr2.f9434a >= 21 && codecCapabilities.isFeatureSupported("secure-playback") : true;
    }

    /* renamed from: a */
    public static oo2 m6280a(String str) {
        return new oo2("OMX.google.raw.decoder", null, null, false, false);
    }

    /* renamed from: b */
    public static oo2 m6279b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new oo2(str, str2, codecCapabilities, z, z2);
    }

    /* renamed from: i */
    private final void m6272i(String str) {
        String str2 = this.f7876a;
        String str3 = this.f7880e;
        String str4 = zr2.f9438e;
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
        Log.d("MediaCodecInfo", sb.toString());
    }

    @TargetApi(21)
    /* renamed from: j */
    private static boolean m6271j(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L_0x0014;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] m6278c() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f7881f
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0014
            r0 = r3
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = r0.profileLevels
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0019
        L_0x0014:
            r0 = 0
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = new android.media.MediaCodecInfo.CodecProfileLevel[r0]
            r3 = r0
        L_0x0019:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.oo2.m6278c():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* renamed from: d */
    public final boolean m6277d(String str) {
        MediaCodecInfo.CodecProfileLevel[] c;
        StringBuilder sb;
        String str2;
        if (str == null || this.f7880e == null) {
            return true;
        }
        String trim = str.trim();
        String str3 = (trim.startsWith("avc1") || trim.startsWith("avc3")) ? "video/avc" : (trim.startsWith("hev1") || trim.startsWith("hvc1")) ? "video/hevc" : trim.startsWith("vp9") ? "video/x-vnd.on2.vp9" : trim.startsWith("vp8") ? "video/x-vnd.on2.vp8" : trim.startsWith("mp4a") ? "audio/mp4a-latm" : (trim.startsWith("ac-3") || trim.startsWith("dac3")) ? "audio/ac3" : (trim.startsWith("ec-3") || trim.startsWith("dec3")) ? "audio/eac3" : (trim.startsWith("dtsc") || trim.startsWith("dtse")) ? "audio/vnd.dts" : (trim.startsWith("dtsh") || trim.startsWith("dtsl")) ? "audio/vnd.dts.hd" : trim.startsWith("opus") ? "audio/opus" : trim.startsWith("vorbis") ? "audio/vorbis" : null;
        if (str3 == null) {
            return true;
        }
        if (!this.f7880e.equals(str3)) {
            sb = new StringBuilder(str.length() + 13 + str3.length());
            str2 = "codec.mime ";
        } else {
            Pair<Integer, Integer> d = xo2.m4876d(str);
            if (d == null) {
                return true;
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m6278c()) {
                if (codecProfileLevel.profile == ((Integer) d.first).intValue() && codecProfileLevel.level >= ((Integer) d.second).intValue()) {
                    return true;
                }
            }
            sb = new StringBuilder(str.length() + 22 + str3.length());
            str2 = "codec.profileLevel, ";
        }
        sb.append(str2);
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        m6272i(sb.toString());
        return false;
    }

    @TargetApi(21)
    /* renamed from: e */
    public final boolean m6276e(int i, int i2, double d) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7881f;
        if (codecCapabilities == null) {
            sb = "sizeAndRate.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                sb = "sizeAndRate.vCaps";
            } else if (m6271j(videoCapabilities, i, i2, d)) {
                return true;
            } else {
                if (i >= i2 || !m6271j(videoCapabilities, i2, i, d)) {
                    StringBuilder sb2 = new StringBuilder(69);
                    sb2.append("sizeAndRate.support, ");
                    sb2.append(i);
                    sb2.append("x");
                    sb2.append(i2);
                    sb2.append("x");
                    sb2.append(d);
                    sb = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder(69);
                    sb3.append("sizeAndRate.rotated, ");
                    sb3.append(i);
                    sb3.append("x");
                    sb3.append(i2);
                    sb3.append("x");
                    sb3.append(d);
                    String sb4 = sb3.toString();
                    String str = this.f7876a;
                    String str2 = this.f7880e;
                    String str3 = zr2.f9438e;
                    StringBuilder sb5 = new StringBuilder(String.valueOf(sb4).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
                    sb5.append("AssumedSupport [");
                    sb5.append(sb4);
                    sb5.append("] [");
                    sb5.append(str);
                    sb5.append(", ");
                    sb5.append(str2);
                    sb5.append("] [");
                    sb5.append(str3);
                    sb5.append("]");
                    Log.d("MediaCodecInfo", sb5.toString());
                    return true;
                }
            }
        }
        m6272i(sb);
        return false;
    }

    @TargetApi(21)
    /* renamed from: f */
    public final Point m6275f(int i, int i2) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7881f;
        if (codecCapabilities == null) {
            str = "align.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                str = "align.vCaps";
            } else {
                int widthAlignment = videoCapabilities.getWidthAlignment();
                int heightAlignment = videoCapabilities.getHeightAlignment();
                return new Point(zr2.m4530e(i, widthAlignment) * widthAlignment, zr2.m4530e(i2, heightAlignment) * heightAlignment);
            }
        }
        m6272i(str);
        return null;
    }

    @TargetApi(21)
    /* renamed from: g */
    public final boolean m6274g(int i) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7881f;
        if (codecCapabilities == null) {
            sb = "sampleRate.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                sb = "sampleRate.aCaps";
            } else if (audioCapabilities.isSampleRateSupported(i)) {
                return true;
            } else {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("sampleRate.support, ");
                sb2.append(i);
                sb = sb2.toString();
            }
        }
        m6272i(sb);
        return false;
    }

    @TargetApi(21)
    /* renamed from: h */
    public final boolean m6273h(int i) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7881f;
        if (codecCapabilities == null) {
            sb = "channelCount.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                sb = "channelCount.aCaps";
            } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
                return true;
            } else {
                StringBuilder sb2 = new StringBuilder(33);
                sb2.append("channelCount.support, ");
                sb2.append(i);
                sb = sb2.toString();
            }
        }
        m6272i(sb);
        return false;
    }
}
