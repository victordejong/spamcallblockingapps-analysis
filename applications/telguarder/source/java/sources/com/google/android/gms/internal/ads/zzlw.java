package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlw.class */
public final class zzlw {
    private final String mimeType;
    public final String name;
    public final boolean zzalq;
    public final boolean zzbcr;
    public final boolean zzbcs;
    private final MediaCodecInfo.CodecCapabilities zzbct;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzlw(java.lang.String r4, java.lang.String r5, android.media.MediaCodecInfo.CodecCapabilities r6, boolean r7, boolean r8) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzpg.checkNotNull(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.name = r1
            r0 = r3
            r1 = r5
            r0.mimeType = r1
            r0 = r3
            r1 = r6
            r0.zzbct = r1
            r0 = 1
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L4a
            r0 = r6
            if (r0 == 0) goto L4a
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r1 = 19
            if (r0 < r1) goto L3c
            r0 = r6
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L3c
            r0 = 1
            r10 = r0
            goto L3f
        L3c:
            r0 = 0
            r10 = r0
        L3f:
            r0 = r10
            if (r0 == 0) goto L4a
            r0 = 1
            r7 = r0
            goto L4d
        L4a:
            r0 = 0
            r7 = r0
        L4d:
            r0 = r3
            r1 = r7
            r0.zzbcr = r1
            r0 = r6
            if (r0 == 0) goto L7c
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r1 = 21
            if (r0 < r1) goto L6e
            r0 = r6
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L6e
            r0 = 1
            r10 = r0
            goto L71
        L6e:
            r0 = 0
            r10 = r0
        L71:
            r0 = r10
            if (r0 == 0) goto L7c
            r0 = 1
            r7 = r0
            goto L7f
        L7c:
            r0 = 0
            r7 = r0
        L7f:
            r0 = r3
            r1 = r7
            r0.zzalq = r1
            r0 = r9
            r7 = r0
            r0 = r8
            if (r0 != 0) goto Lbb
            r0 = r6
            if (r0 == 0) goto Lb8
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r1 = 21
            if (r0 < r1) goto La9
            r0 = r6
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto La9
            r0 = 1
            r10 = r0
            goto Lac
        La9:
            r0 = 0
            r10 = r0
        Lac:
            r0 = r10
            if (r0 == 0) goto Lb8
            r0 = r9
            r7 = r0
            goto Lbb
        Lb8:
            r0 = 0
            r7 = r0
        Lbb:
            r0 = r3
            r1 = r7
            r0.zzbcs = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlw.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static zzlw zza(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzlw(str, str2, codecCapabilities, z, z2);
    }

    private static boolean zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    public static zzlw zzay(String str) {
        return new zzlw(str, null, null, false, false);
    }

    private final void zzba(String str) {
        String str2 = this.name;
        String str3 = this.mimeType;
        String str4 = zzpt.zzbkn;
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

    public final boolean zza(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzba("sizeAndRate.vCaps");
            return false;
        } else if (zza(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !zza(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                zzba(sb.toString());
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
            String str = this.name;
            String str2 = this.mimeType;
            String str3 = zzpt.zzbkn;
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

    public final boolean zzaw(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzba("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            zzba(sb.toString());
            return false;
        }
    }

    public final boolean zzax(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzba("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            zzba(sb.toString());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzaz(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlw.zzaz(java.lang.String):boolean");
    }

    public final Point zzd(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzba("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzpt.zzf(i, widthAlignment) * widthAlignment, zzpt.zzf(i2, heightAlignment) * heightAlignment);
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzhi() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.zzbct.profileLevels;
    }
}
