package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import java.util.Objects;
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.hf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hf.class */
public final class C6550hf {

    /* renamed from: a */
    public final String f23881a;

    /* renamed from: b */
    public final boolean f23882b;

    /* renamed from: c */
    public final boolean f23883c;

    /* renamed from: d */
    public final boolean f23884d;

    /* renamed from: e */
    private final String f23885e;

    /* renamed from: f */
    private final MediaCodecInfo.CodecCapabilities f23886f;

    private C6550hf(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        Objects.requireNonNull(str);
        this.f23881a = str;
        this.f23885e = str2;
        this.f23886f = codecCapabilities;
        this.f23882b = !z && codecCapabilities != null && C6961si.f29514a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
        this.f23883c = codecCapabilities != null && C6961si.f29514a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
        this.f23884d = !z2 ? codecCapabilities != null && C6961si.f29514a >= 21 && codecCapabilities.isFeatureSupported("secure-playback") : true;
    }

    /* renamed from: a */
    public static C6550hf m14686a(String str) {
        return new C6550hf("OMX.google.raw.decoder", null, null, false, false);
    }

    /* renamed from: b */
    public static C6550hf m14685b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new C6550hf(str, str2, codecCapabilities, z, z2);
    }

    /* renamed from: h */
    private final void m14679h(String str) {
        String str2 = this.f23881a;
        String str3 = this.f23885e;
        String str4 = C6961si.f29518e;
        int length = String.valueOf(str2).length();
        int length2 = String.valueOf(str3).length();
        StringBuilder sb = new StringBuilder(str.length() + 20 + length + length2 + String.valueOf(str4).length());
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
    /* renamed from: i */
    private static boolean m14678i(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] m14684c() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f23886f
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6550hf.m14684c():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* renamed from: d */
    public final boolean m14683d(String str) {
        MediaCodecInfo.CodecProfileLevel[] m14684c;
        if (str == null || this.f23885e == null) {
            return true;
        }
        String trim = str.trim();
        String str2 = (trim.startsWith("avc1") || trim.startsWith("avc3")) ? "video/avc" : (trim.startsWith("hev1") || trim.startsWith("hvc1")) ? "video/hevc" : trim.startsWith("vp9") ? "video/x-vnd.on2.vp9" : trim.startsWith("vp8") ? "video/x-vnd.on2.vp8" : trim.startsWith("mp4a") ? "audio/mp4a-latm" : (trim.startsWith("ac-3") || trim.startsWith("dac3")) ? "audio/ac3" : (trim.startsWith("ec-3") || trim.startsWith("dec3")) ? "audio/eac3" : (trim.startsWith("dtsc") || trim.startsWith("dtse")) ? "audio/vnd.dts" : (trim.startsWith("dtsh") || trim.startsWith("dtsl")) ? "audio/vnd.dts.hd" : trim.startsWith("opus") ? "audio/opus" : trim.startsWith("vorbis") ? "audio/vorbis" : null;
        if (str2 == null) {
            return true;
        }
        if (!this.f23885e.equals(str2)) {
            StringBuilder sb = new StringBuilder(str.length() + 13 + str2.length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(str2);
            m14679h(sb.toString());
            return false;
        }
        Pair<Integer, Integer> m11910d = C6884qf.m11910d(str);
        if (m11910d == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m14684c()) {
            if (codecProfileLevel.profile == ((Integer) m11910d.first).intValue() && codecProfileLevel.level >= ((Integer) m11910d.second).intValue()) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 22 + str2.length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(str2);
        m14679h(sb2.toString());
        return false;
    }

    @TargetApi(21)
    /* renamed from: e */
    public final boolean m14682e(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f23886f;
        if (codecCapabilities == null) {
            m14679h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m14679h("sizeAndRate.vCaps");
            return false;
        } else if (m14678i(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m14678i(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                m14679h(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d);
            String sb3 = sb2.toString();
            String str = this.f23881a;
            String str2 = this.f23885e;
            String str3 = C6961si.f29518e;
            int length = String.valueOf(str).length();
            int length2 = String.valueOf(str2).length();
            StringBuilder sb4 = new StringBuilder(sb3.length() + 25 + length + length2 + String.valueOf(str3).length());
            sb4.append("AssumedSupport [");
            sb4.append(sb3);
            sb4.append("] [");
            sb4.append(str);
            sb4.append(", ");
            sb4.append(str2);
            sb4.append("] [");
            sb4.append(str3);
            sb4.append("]");
            Log.d("MediaCodecInfo", sb4.toString());
            return true;
        }
    }

    @TargetApi(21)
    /* renamed from: f */
    public final boolean m14681f(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f23886f;
        if (codecCapabilities == null) {
            m14679h("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m14679h("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            m14679h(sb.toString());
            return false;
        }
    }

    @TargetApi(21)
    /* renamed from: g */
    public final boolean m14680g(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f23886f;
        if (codecCapabilities == null) {
            m14679h("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m14679h("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            m14679h(sb.toString());
            return false;
        }
    }
}
