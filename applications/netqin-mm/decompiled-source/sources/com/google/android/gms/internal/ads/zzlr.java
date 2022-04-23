package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlr.class */
public final class zzlr {

    /* renamed from: a */
    public final String f28563a;

    /* renamed from: b */
    public final boolean f28564b;

    /* renamed from: c */
    public final boolean f28565c;

    /* renamed from: d */
    public final boolean f28566d;

    /* renamed from: e */
    public final String f28567e;

    /* renamed from: f */
    public final MediaCodecInfo.CodecCapabilities f28568f;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzlr(java.lang.String r4, java.lang.String r5, android.media.MediaCodecInfo.CodecCapabilities r6, boolean r7, boolean r8) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r4
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzoz.m11698a(r0)
            r0 = r3
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
            r0.f28563a = r1
            r0 = r3
            r1 = r5
            r0.f28567e = r1
            r0 = r3
            r1 = r6
            r0.f28568f = r1
            r0 = 1
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L_0x004c
            r0 = r6
            if (r0 == 0) goto L_0x004c
            int r0 = com.google.android.gms.internal.ads.zzpq.f28786a
            r1 = 19
            if (r0 < r1) goto L_0x003e
            r0 = r6
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x003e
            r0 = 1
            r10 = r0
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r10 = r0
        L_0x0041:
            r0 = r10
            if (r0 == 0) goto L_0x004c
            r0 = 1
            r7 = r0
            goto L_0x004f
        L_0x004c:
            r0 = 0
            r7 = r0
        L_0x004f:
            r0 = r3
            r1 = r7
            r0.f28564b = r1
            r0 = r6
            if (r0 == 0) goto L_0x007e
            int r0 = com.google.android.gms.internal.ads.zzpq.f28786a
            r1 = 21
            if (r0 < r1) goto L_0x0070
            r0 = r6
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x0070
            r0 = 1
            r10 = r0
            goto L_0x0073
        L_0x0070:
            r0 = 0
            r10 = r0
        L_0x0073:
            r0 = r10
            if (r0 == 0) goto L_0x007e
            r0 = 1
            r7 = r0
            goto L_0x0081
        L_0x007e:
            r0 = 0
            r7 = r0
        L_0x0081:
            r0 = r3
            r1 = r7
            r0.f28565c = r1
            r0 = r9
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00bd
            r0 = r6
            if (r0 == 0) goto L_0x00ba
            int r0 = com.google.android.gms.internal.ads.zzpq.f28786a
            r1 = 21
            if (r0 < r1) goto L_0x00ab
            r0 = r6
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x00ab
            r0 = 1
            r10 = r0
            goto L_0x00ae
        L_0x00ab:
            r0 = 0
            r10 = r0
        L_0x00ae:
            r0 = r10
            if (r0 == 0) goto L_0x00ba
            r0 = r9
            r7 = r0
            goto L_0x00bd
        L_0x00ba:
            r0 = 0
            r7 = r0
        L_0x00bd:
            r0 = r3
            r1 = r7
            r0.f28566d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlr.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    /* renamed from: a */
    public static zzlr m11838a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzlr(str, str2, codecCapabilities, z, z2);
    }

    /* renamed from: a */
    public static boolean m11840a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* renamed from: c */
    public static zzlr m11835c(String str) {
        return new zzlr(str, null, null, false, false);
    }

    /* renamed from: a */
    public final Point m11842a(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f28568f;
        if (codecCapabilities == null) {
            m11836b("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m11836b("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzpq.m11628a(i, widthAlignment) * widthAlignment, zzpq.m11628a(i2, heightAlignment) * heightAlignment);
    }

    /* renamed from: a */
    public final boolean m11843a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f28568f;
        if (codecCapabilities == null) {
            m11836b("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m11836b("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            m11836b(sb.toString());
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m11841a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f28568f;
        if (codecCapabilities == null) {
            m11836b("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m11836b("sizeAndRate.vCaps");
            return false;
        } else if (m11840a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m11840a(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                m11836b(sb.toString());
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
            String str = this.f28563a;
            String str2 = this.f28567e;
            String str3 = zzpq.f28790e;
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
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

    /* JADX WARN: Removed duplicated region for block: B:56:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11839a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlr.m11839a(java.lang.String):boolean");
    }

    /* renamed from: a */
    public final MediaCodecInfo.CodecProfileLevel[] m11844a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f28568f;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    /* renamed from: b */
    public final void m11836b(String str) {
        String str2 = this.f28563a;
        String str3 = this.f28567e;
        String str4 = zzpq.f28790e;
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

    /* renamed from: b */
    public final boolean m11837b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f28568f;
        if (codecCapabilities == null) {
            m11836b("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m11836b("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            m11836b(sb.toString());
            return false;
        }
    }
}
