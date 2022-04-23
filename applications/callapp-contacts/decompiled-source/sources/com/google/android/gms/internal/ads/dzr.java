package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzr.class */
public final class dzr {

    /* renamed from: a  reason: collision with root package name */
    public final String f27497a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f27498b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f27499c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f27500d;
    final String e;
    final MediaCodecInfo.CodecCapabilities f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dzr(java.lang.String r4, java.lang.String r5, android.media.MediaCodecInfo.CodecCapabilities r6, boolean r7, boolean r8) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            java.lang.Object r1 = com.google.android.gms.internal.ads.ecr.a(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f27497a = r1
            r0 = r3
            r1 = r5
            r0.e = r1
            r0 = r3
            r1 = r6
            r0.f = r1
            r0 = 1
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L_0x004a
            r0 = r6
            if (r0 == 0) goto L_0x004a
            int r0 = com.google.android.gms.internal.ads.ede.f27664a
            r1 = 19
            if (r0 < r1) goto L_0x003c
            r0 = r6
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r10 = r0
            goto L_0x003f
        L_0x003c:
            r0 = 0
            r10 = r0
        L_0x003f:
            r0 = r10
            if (r0 == 0) goto L_0x004a
            r0 = 1
            r7 = r0
            goto L_0x004d
        L_0x004a:
            r0 = 0
            r7 = r0
        L_0x004d:
            r0 = r3
            r1 = r7
            r0.f27498b = r1
            r0 = r6
            if (r0 == 0) goto L_0x007c
            int r0 = com.google.android.gms.internal.ads.ede.f27664a
            r1 = 21
            if (r0 < r1) goto L_0x006e
            r0 = r6
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x006e
            r0 = 1
            r10 = r0
            goto L_0x0071
        L_0x006e:
            r0 = 0
            r10 = r0
        L_0x0071:
            r0 = r10
            if (r0 == 0) goto L_0x007c
            r0 = 1
            r7 = r0
            goto L_0x007f
        L_0x007c:
            r0 = 0
            r7 = r0
        L_0x007f:
            r0 = r3
            r1 = r7
            r0.f27499c = r1
            r0 = r9
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00bb
            r0 = r6
            if (r0 == 0) goto L_0x00b8
            int r0 = com.google.android.gms.internal.ads.ede.f27664a
            r1 = 21
            if (r0 < r1) goto L_0x00a9
            r0 = r6
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x00a9
            r0 = 1
            r10 = r0
            goto L_0x00ac
        L_0x00a9:
            r0 = 0
            r10 = r0
        L_0x00ac:
            r0 = r10
            if (r0 == 0) goto L_0x00b8
            r0 = r9
            r7 = r0
            goto L_0x00bb
        L_0x00b8:
            r0 = 0
            r7 = r0
        L_0x00bb:
            r0 = r3
            r1 = r7
            r0.f27500d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzr.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static dzr a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new dzr(str, str2, codecCapabilities, z, z2);
    }

    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        return (d2 == -1.0d || d2 <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        String str2 = this.f27497a;
        String str3 = this.e;
        String str4 = ede.e;
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
    }

    public final boolean a(int i, int i2, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f;
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
            String sb3 = sb2.toString();
            String str = this.f27497a;
            String str2 = this.e;
            String str3 = ede.e;
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
            return true;
        }
    }

    public final MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f.profileLevels;
    }
}
