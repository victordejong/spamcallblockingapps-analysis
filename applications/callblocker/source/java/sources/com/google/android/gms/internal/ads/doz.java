package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doz.class */
public final class doz {

    /* renamed from: a */
    public final String f15268a;

    /* renamed from: b */
    public final boolean f15269b;

    /* renamed from: c */
    public final boolean f15270c;

    /* renamed from: d */
    public final boolean f15271d;

    /* renamed from: e */
    private final String f15272e;

    /* renamed from: f */
    private final MediaCodecInfo.CodecCapabilities f15273f;

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
        if ((com.google.android.gms.internal.ads.dsn.f15576a >= 21 && r6.isFeatureSupported("secure-playback")) != false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private doz(java.lang.String r4, java.lang.String r5, android.media.MediaCodecInfo.CodecCapabilities r6, boolean r7, boolean r8) {
        /*
            r3 = this;
            r0 = 0
            r9 = r0
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            java.lang.Object r1 = com.google.android.gms.internal.ads.drz.m8774a(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f15268a = r1
            r0 = r3
            r1 = r5
            r0.f15272e = r1
            r0 = r3
            r1 = r6
            r0.f15273f = r1
            r0 = r7
            if (r0 != 0) goto La7
            r0 = r6
            if (r0 == 0) goto La7
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 19
            if (r0 < r1) goto La1
            r0 = r6
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto La1
            r0 = 1
            r10 = r0
        L39:
            r0 = r10
            if (r0 == 0) goto La7
            r0 = 1
            r7 = r0
        L41:
            r0 = r3
            r1 = r7
            r0.f15269b = r1
            r0 = r6
            if (r0 == 0) goto Lb3
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 21
            if (r0 < r1) goto Lad
            r0 = r6
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto Lad
            r0 = 1
            r10 = r0
        L5f:
            r0 = r10
            if (r0 == 0) goto Lb3
            r0 = 1
            r7 = r0
        L67:
            r0 = r3
            r1 = r7
            r0.f15270c = r1
            r0 = r8
            if (r0 != 0) goto L97
            r0 = r9
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L9a
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 21
            if (r0 < r1) goto Lb9
            r0 = r6
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto Lb9
            r0 = 1
            r10 = r0
        L8e:
            r0 = r9
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L9a
        L97:
            r0 = 1
            r7 = r0
        L9a:
            r0 = r3
            r1 = r7
            r0.f15271d = r1
            return
        La1:
            r0 = 0
            r10 = r0
            goto L39
        La7:
            r0 = 0
            r7 = r0
            goto L41
        Lad:
            r0 = 0
            r10 = r0
            goto L5f
        Lb3:
            r0 = 0
            r7 = r0
            goto L67
        Lb9:
            r0 = 0
            r10 = r0
            goto L8e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doz.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    /* renamed from: a */
    public static doz m8952a(String str) {
        return new doz(str, null, null, false, false);
    }

    /* renamed from: a */
    public static doz m8951a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new doz(str, str2, codecCapabilities, z, z2);
    }

    @TargetApi(21)
    /* renamed from: a */
    private static boolean m8953a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* renamed from: c */
    private final void m8948c(String str) {
        String str2 = this.f15268a;
        String str3 = this.f15272e;
        String str4 = dsn.f15580e;
        Log.d("MediaCodecInfo", new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length()).append("NoSupport [").append(str).append("] [").append(str2).append(", ").append(str3).append("] [").append(str4).append("]").toString());
    }

    @TargetApi(21)
    /* renamed from: a */
    public final Point m8955a(int i, int i2) {
        Point point = null;
        if (this.f15273f == null) {
            m8948c("align.caps");
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = this.f15273f.getVideoCapabilities();
            if (videoCapabilities == null) {
                m8948c("align.vCaps");
            } else {
                int widthAlignment = videoCapabilities.getWidthAlignment();
                int heightAlignment = videoCapabilities.getHeightAlignment();
                point = new Point(widthAlignment * dsn.m8708a(i, widthAlignment), heightAlignment * dsn.m8708a(i2, heightAlignment));
            }
        }
        return point;
    }

    @TargetApi(21)
    /* renamed from: a */
    public final boolean m8956a(int i) {
        boolean z = false;
        if (this.f15273f == null) {
            m8948c("sampleRate.caps");
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = this.f15273f.getAudioCapabilities();
            if (audioCapabilities == null) {
                m8948c("sampleRate.aCaps");
            } else if (!audioCapabilities.isSampleRateSupported(i)) {
                m8948c(new StringBuilder(31).append("sampleRate.support, ").append(i).toString());
            } else {
                z = true;
            }
        }
        return z;
    }

    @TargetApi(21)
    /* renamed from: a */
    public final boolean m8954a(int i, int i2, double d) {
        boolean z = false;
        if (this.f15273f == null) {
            m8948c("sizeAndRate.caps");
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = this.f15273f.getVideoCapabilities();
            if (videoCapabilities == null) {
                m8948c("sizeAndRate.vCaps");
            } else {
                if (!m8953a(videoCapabilities, i, i2, d)) {
                    if (i >= i2 || !m8953a(videoCapabilities, i2, i, d)) {
                        m8948c(new StringBuilder(69).append("sizeAndRate.support, ").append(i).append("x").append(i2).append("x").append(d).toString());
                    } else {
                        String sb = new StringBuilder(69).append("sizeAndRate.rotated, ").append(i).append("x").append(i2).append("x").append(d).toString();
                        String str = this.f15268a;
                        String str2 = this.f15272e;
                        String str3 = dsn.f15580e;
                        Log.d("MediaCodecInfo", new StringBuilder(String.valueOf(sb).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append("AssumedSupport [").append(sb).append("] [").append(str).append(", ").append(str2).append("] [").append(str3).append("]").toString());
                    }
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public final MediaCodecInfo.CodecProfileLevel[] m8957a() {
        return (this.f15273f == null || this.f15273f.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f15273f.profileLevels;
    }

    @TargetApi(21)
    /* renamed from: b */
    public final boolean m8950b(int i) {
        boolean z = false;
        if (this.f15273f == null) {
            m8948c("channelCount.caps");
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = this.f15273f.getAudioCapabilities();
            if (audioCapabilities == null) {
                m8948c("channelCount.aCaps");
            } else if (audioCapabilities.getMaxInputChannelCount() < i) {
                m8948c(new StringBuilder(33).append("channelCount.support, ").append(i).toString());
            } else {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fe  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8949b(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doz.m8949b(java.lang.String):boolean");
    }
}
