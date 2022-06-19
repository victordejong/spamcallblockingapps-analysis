package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vw2.class */
public final class vw2 {

    /* renamed from: a */
    public final String f31383a;

    /* renamed from: b */
    public final String f31384b;

    /* renamed from: c */
    public final String f31385c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f31386d;

    /* renamed from: e */
    public final boolean f31387e;

    /* renamed from: f */
    public final boolean f31388f;

    /* renamed from: g */
    private final boolean f31389g;

    vw2(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        Objects.requireNonNull(str);
        this.f31383a = str;
        this.f31384b = str2;
        this.f31385c = str3;
        this.f31386d = codecCapabilities;
        this.f31387e = z4;
        this.f31388f = z6;
        this.f31389g = C7174y9.m8891b(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if ("Nexus 10".equals(r0) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
        if ("OMX.Exynos.AVC.Decoder.secure".equals(r13) == false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.vw2 m9858a(java.lang.String r13, java.lang.String r14, java.lang.String r15, android.media.MediaCodecInfo.CodecCapabilities r16, boolean r17, boolean r18, boolean r19, boolean r20, boolean r21) {
        /*
            r0 = r16
            if (r0 == 0) goto L54
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r22 = r0
            r0 = r22
            r1 = 19
            if (r0 < r1) goto L54
            r0 = r16
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L54
            r0 = r22
            r1 = 22
            if (r0 > r1) goto L4e
            java.lang.String r0 = com.google.android.gms.internal.ads.C7101wa.f31478d
            r23 = r0
            java.lang.String r0 = "ODROID-XU3"
            r1 = r23
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L39
            java.lang.String r0 = "Nexus 10"
            r1 = r23
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4e
        L39:
            java.lang.String r0 = "OMX.Exynos.AVC.Decoder"
            r1 = r13
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L54
            java.lang.String r0 = "OMX.Exynos.AVC.Decoder.secure"
            r1 = r13
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4e
            goto L54
        L4e:
            r0 = 1
            r20 = r0
            goto L57
        L54:
            r0 = 0
            r20 = r0
        L57:
            r0 = r16
            if (r0 == 0) goto L72
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r1 = 21
            if (r0 < r1) goto L72
            r0 = r16
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L72
            r0 = 1
            r24 = r0
            goto L75
        L72:
            r0 = 0
            r24 = r0
        L75:
            r0 = r21
            if (r0 != 0) goto L98
            r0 = r16
            if (r0 == 0) goto L92
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r1 = 21
            if (r0 < r1) goto L92
            r0 = r16
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L92
            goto L98
        L92:
            r0 = 0
            r21 = r0
            goto L9b
        L98:
            r0 = 1
            r21 = r0
        L9b:
            com.google.android.gms.internal.ads.vw2 r0 = new com.google.android.gms.internal.ads.vw2
            r1 = r0
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r8 = r19
            r9 = r20
            r10 = r24
            r11 = r21
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vw2.m9858a(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.ads.vw2");
    }

    /* renamed from: h */
    private final void m9851h(String str) {
        String str2 = this.f31383a;
        String str3 = this.f31384b;
        String str4 = C7101wa.f31479e;
        int length = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(str.length() + 20 + length + str3.length() + String.valueOf(str4).length());
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

    /* renamed from: i */
    private static boolean m9850i(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point m9849j = m9849j(videoCapabilities, i, i2);
        int i3 = m9849j.x;
        int i4 = m9849j.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* renamed from: j */
    private static Point m9849j(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C7101wa.m9698b0(i, widthAlignment) * widthAlignment, C7101wa.m9698b0(i2, heightAlignment) * heightAlignment);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] m9857b() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f31386d
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vw2.m9857b():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* renamed from: c */
    public final boolean m9856c(C7021u4 c7021u4) {
        boolean z;
        int i;
        String m8889d;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        String str = c7021u4.f30508k;
        boolean z2 = false;
        if (str != null && (m8889d = C7174y9.m8889d(str)) != null) {
            if (!this.f31384b.equals(m8889d)) {
                String str2 = c7021u4.f30508k;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 13 + m8889d.length());
                sb.append("codec.mime ");
                sb.append(str2);
                sb.append(", ");
                sb.append(m8889d);
                m9851h(sb.toString());
                return false;
            }
            Pair<Integer, Integer> m13300f = mc3.m13300f(c7021u4);
            if (m13300f != null) {
                int intValue = ((Integer) m13300f.first).intValue();
                int intValue2 = ((Integer) m13300f.second).intValue();
                int i2 = intValue;
                if (!this.f31389g) {
                    if (intValue == 42) {
                        i2 = 42;
                    }
                }
                MediaCodecInfo.CodecProfileLevel[] m9857b = m9857b();
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = m9857b;
                if (C7101wa.f31475a <= 23) {
                    codecProfileLevelArr = m9857b;
                    if ("video/x-vnd.on2.vp9".equals(this.f31384b)) {
                        codecProfileLevelArr = m9857b;
                        if (m9857b.length == 0) {
                            MediaCodecInfo.CodecCapabilities codecCapabilities = this.f31386d;
                            int intValue3 = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
                            int i3 = intValue3 >= 180000000 ? 1024 : intValue3 >= 120000000 ? 512 : intValue3 >= 60000000 ? 256 : intValue3 >= 30000000 ? 128 : intValue3 >= 18000000 ? 64 : intValue3 >= 12000000 ? 32 : intValue3 >= 7200000 ? 16 : intValue3 >= 3600000 ? 8 : intValue3 >= 1800000 ? 4 : intValue3 >= 800000 ? 2 : 1;
                            MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                            codecProfileLevel.profile = 1;
                            codecProfileLevel.level = i3;
                            codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
                        }
                    }
                }
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : codecProfileLevelArr) {
                    if (codecProfileLevel2.profile != i2 || codecProfileLevel2.level < intValue2) {
                    }
                }
                String str3 = c7021u4.f30508k;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 22 + m8889d.length());
                sb2.append("codec.profileLevel, ");
                sb2.append(str3);
                sb2.append(", ");
                sb2.append(m8889d);
                m9851h(sb2.toString());
                return false;
            }
        }
        if (this.f31389g) {
            int i4 = c7021u4.f30516s;
            if (i4 <= 0 || (i = c7021u4.f30517t) <= 0) {
                return true;
            }
            if (C7101wa.f31475a >= 21) {
                return m9853f(i4, i, c7021u4.f30518u);
            }
            if (i4 * i <= mc3.m13301e()) {
                z2 = true;
            }
            if (!z2) {
                int i5 = c7021u4.f30516s;
                int i6 = c7021u4.f30517t;
                StringBuilder sb3 = new StringBuilder(40);
                sb3.append("legacyFrameSize, ");
                sb3.append(i5);
                sb3.append("x");
                sb3.append(i6);
                m9851h(sb3.toString());
            }
            return z2;
        }
        int i7 = C7101wa.f31475a;
        if (i7 >= 21) {
            int i8 = c7021u4.f30493B;
            if (i8 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.f31386d;
                if (codecCapabilities2 == null) {
                    m9851h("sampleRate.caps");
                    z = false;
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities2.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        m9851h("sampleRate.aCaps");
                        z = false;
                    } else if (!audioCapabilities.isSampleRateSupported(i8)) {
                        StringBuilder sb4 = new StringBuilder(31);
                        sb4.append("sampleRate.support, ");
                        sb4.append(i8);
                        m9851h(sb4.toString());
                        z = false;
                    }
                }
                return z;
            }
            int i9 = c7021u4.f30492A;
            if (i9 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.f31386d;
                if (codecCapabilities3 == null) {
                    m9851h("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities3.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    m9851h("channelCount.aCaps");
                    return false;
                }
                String str4 = this.f31383a;
                String str5 = this.f31384b;
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                int i10 = maxInputChannelCount;
                if (maxInputChannelCount <= 1) {
                    if (i7 < 26 || maxInputChannelCount <= 0) {
                        i10 = maxInputChannelCount;
                        if (!"audio/mpeg".equals(str5)) {
                            i10 = maxInputChannelCount;
                            if (!"audio/3gpp".equals(str5)) {
                                i10 = maxInputChannelCount;
                                if (!"audio/amr-wb".equals(str5)) {
                                    i10 = maxInputChannelCount;
                                    if (!"audio/mp4a-latm".equals(str5)) {
                                        i10 = maxInputChannelCount;
                                        if (!"audio/vorbis".equals(str5)) {
                                            i10 = maxInputChannelCount;
                                            if (!"audio/opus".equals(str5)) {
                                                i10 = maxInputChannelCount;
                                                if (!"audio/raw".equals(str5)) {
                                                    i10 = maxInputChannelCount;
                                                    if (!"audio/flac".equals(str5)) {
                                                        i10 = maxInputChannelCount;
                                                        if (!"audio/g711-alaw".equals(str5)) {
                                                            i10 = maxInputChannelCount;
                                                            if (!"audio/g711-mlaw".equals(str5)) {
                                                                if ("audio/gsm".equals(str5)) {
                                                                    i10 = maxInputChannelCount;
                                                                } else {
                                                                    i10 = "audio/ac3".equals(str5) ? 6 : "audio/eac3".equals(str5) ? 16 : 30;
                                                                    StringBuilder sb5 = new StringBuilder(String.valueOf(str4).length() + 59);
                                                                    sb5.append("AssumedMaxChannelAdjustment: ");
                                                                    sb5.append(str4);
                                                                    sb5.append(", [");
                                                                    sb5.append(maxInputChannelCount);
                                                                    sb5.append(" to ");
                                                                    sb5.append(i10);
                                                                    sb5.append("]");
                                                                    Log.w("MediaCodecInfo", sb5.toString());
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        i10 = maxInputChannelCount;
                    }
                }
                if (i10 < i9) {
                    StringBuilder sb6 = new StringBuilder(33);
                    sb6.append("channelCount.support, ");
                    sb6.append(i9);
                    m9851h(sb6.toString());
                    return false;
                }
            }
        }
        z = true;
        return z;
    }

    /* renamed from: d */
    public final boolean m9855d(C7021u4 c7021u4) {
        if (this.f31389g) {
            return this.f31387e;
        }
        Pair<Integer, Integer> m13300f = mc3.m13300f(c7021u4);
        return m13300f != null && ((Integer) m13300f.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        if (r9.f30517t != r10.f30517t) goto L17;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.C6781nn m9854e(com.google.android.gms.internal.ads.C7021u4 r9, com.google.android.gms.internal.ads.C7021u4 r10) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vw2.m9854e(com.google.android.gms.internal.ads.u4, com.google.android.gms.internal.ads.u4):com.google.android.gms.internal.ads.nn");
    }

    /* renamed from: f */
    public final boolean m9853f(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f31386d;
        if (codecCapabilities == null) {
            m9851h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m9851h("sizeAndRate.vCaps");
            return false;
        } else if (m9850i(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.f31383a) && "mcv5a".equals(C7101wa.f31476b)) || !m9850i(videoCapabilities, i2, i, d))) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                m9851h(sb.toString());
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
            String str = this.f31383a;
            String str2 = this.f31384b;
            String str3 = C7101wa.f31479e;
            int length = String.valueOf(str).length();
            StringBuilder sb4 = new StringBuilder(sb3.length() + 25 + length + str2.length() + String.valueOf(str3).length());
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

    /* renamed from: g */
    public final Point m9852g(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f31386d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return m9849j(videoCapabilities, i, i2);
    }

    public final String toString() {
        return this.f31383a;
    }
}
