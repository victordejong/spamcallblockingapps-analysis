package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.util.Pair;
import java.util.Objects;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoh.class */
public final class zzoh {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    private final boolean zzg;

    public zzoh(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        Objects.requireNonNull(str);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zze = z4;
        this.zzf = z6;
        this.zzg = zzbi.zzh(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if ("Nexus 10".equals(r0) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
        if ("OMX.Exynos.AVC.Decoder.secure".equals(r13) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzoh zzc(java.lang.String r13, java.lang.String r14, java.lang.String r15, android.media.MediaCodecInfo.CodecCapabilities r16, boolean r17, boolean r18, boolean r19, boolean r20, boolean r21) {
        /*
            r0 = r16
            if (r0 == 0) goto L54
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
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
            java.lang.String r0 = com.google.android.gms.internal.ads.zzfn.zzd
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
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
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
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
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
            com.google.android.gms.internal.ads.zzoh r0 = new com.google.android.gms.internal.ads.zzoh
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoh.zzc(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.ads.zzoh");
    }

    private static Point zzh(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzfn.zze(i, widthAlignment) * widthAlignment, zzfn.zze(i2, heightAlignment) * heightAlignment);
    }

    private final void zzi(String str) {
        String str2 = this.zza;
        String str3 = this.zzb;
        String str4 = zzfn.zze;
        int length = String.valueOf(str2).length();
        new StringBuilder(C0033h.m8889h(str3, C0033h.m8889h(str, 20, length), String.valueOf(str4).length()));
    }

    private static boolean zzj(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point zzh = zzh(videoCapabilities, i, i2);
        int i3 = zzh.x;
        int i4 = zzh.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    public final String toString() {
        return this.zza;
    }

    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return zzh(videoCapabilities, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        if (r9.zzs != r10.zzs) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfz zzb(com.google.android.gms.internal.ads.zzab r9, com.google.android.gms.internal.ads.zzab r10) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoh.zzb(com.google.android.gms.internal.ads.zzab, com.google.android.gms.internal.ads.zzab):com.google.android.gms.internal.ads.zzfz");
    }

    public final boolean zzd(zzab zzabVar) throws zzos {
        boolean z;
        int i;
        String zzc;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        String str = zzabVar.zzj;
        boolean z2 = false;
        if (str != null && (zzc = zzbi.zzc(str)) != null) {
            if (!this.zzb.equals(zzc)) {
                String str2 = zzabVar.zzj;
                zzi(C1676a.m4788i(new StringBuilder(zzc.length() + String.valueOf(str2).length() + 13), "codec.mime ", str2, ", ", zzc));
                return false;
            }
            Pair<Integer, Integer> zzb = zzoy.zzb(zzabVar);
            if (zzb != null) {
                int intValue = ((Integer) zzb.first).intValue();
                int intValue2 = ((Integer) zzb.second).intValue();
                int i2 = intValue;
                if (!this.zzg) {
                    if (intValue == 42) {
                        i2 = 42;
                    }
                }
                MediaCodecInfo.CodecProfileLevel[] zzg = zzg();
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = zzg;
                if (zzfn.zza <= 23) {
                    codecProfileLevelArr = zzg;
                    if ("video/x-vnd.on2.vp9".equals(this.zzb)) {
                        codecProfileLevelArr = zzg;
                        if (zzg.length == 0) {
                            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
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
                String str3 = zzabVar.zzj;
                zzi(C1676a.m4788i(new StringBuilder(zzc.length() + String.valueOf(str3).length() + 22), "codec.profileLevel, ", str3, ", ", zzc));
                return false;
            }
        }
        if (this.zzg) {
            int i4 = zzabVar.zzr;
            if (i4 <= 0 || (i = zzabVar.zzs) <= 0) {
                return true;
            }
            if (zzfn.zza >= 21) {
                return zzf(i4, i, zzabVar.zzt);
            }
            if (i4 * i <= zzoy.zza()) {
                z2 = true;
            }
            if (!z2) {
                zzi(C0082b.m8757e(40, "legacyFrameSize, ", zzabVar.zzr, "x", zzabVar.zzs));
            }
            return z2;
        }
        int i5 = zzfn.zza;
        if (i5 >= 21) {
            int i6 = zzabVar.zzA;
            if (i6 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
                if (codecCapabilities2 == null) {
                    zzi("sampleRate.caps");
                    z = false;
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities2.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        zzi("sampleRate.aCaps");
                        z = false;
                    } else if (!audioCapabilities.isSampleRateSupported(i6)) {
                        zzi(C0082b.m8758d(31, "sampleRate.support, ", i6));
                        z = false;
                    }
                }
                return z;
            }
            int i7 = zzabVar.zzz;
            if (i7 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.zzd;
                if (codecCapabilities3 == null) {
                    zzi("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities3.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    zzi("channelCount.aCaps");
                    return false;
                }
                String str4 = this.zza;
                String str5 = this.zzb;
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                int i8 = maxInputChannelCount;
                if (maxInputChannelCount <= 1) {
                    if (i5 < 26 || maxInputChannelCount <= 0) {
                        i8 = maxInputChannelCount;
                        if (!"audio/mpeg".equals(str5)) {
                            i8 = maxInputChannelCount;
                            if (!"audio/3gpp".equals(str5)) {
                                i8 = maxInputChannelCount;
                                if (!"audio/amr-wb".equals(str5)) {
                                    i8 = maxInputChannelCount;
                                    if (!"audio/mp4a-latm".equals(str5)) {
                                        i8 = maxInputChannelCount;
                                        if (!"audio/vorbis".equals(str5)) {
                                            i8 = maxInputChannelCount;
                                            if (!"audio/opus".equals(str5)) {
                                                i8 = maxInputChannelCount;
                                                if (!"audio/raw".equals(str5)) {
                                                    i8 = maxInputChannelCount;
                                                    if (!"audio/flac".equals(str5)) {
                                                        i8 = maxInputChannelCount;
                                                        if (!"audio/g711-alaw".equals(str5)) {
                                                            i8 = maxInputChannelCount;
                                                            if (!"audio/g711-mlaw".equals(str5)) {
                                                                if ("audio/gsm".equals(str5)) {
                                                                    i8 = maxInputChannelCount;
                                                                } else {
                                                                    i8 = "audio/ac3".equals(str5) ? 6 : "audio/eac3".equals(str5) ? 16 : 30;
                                                                    StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 59);
                                                                    sb.append("AssumedMaxChannelAdjustment: ");
                                                                    sb.append(str4);
                                                                    sb.append(", [");
                                                                    sb.append(maxInputChannelCount);
                                                                    sb.append(" to ");
                                                                    sb.append(i8);
                                                                    sb.append("]");
                                                                    Log.w("MediaCodecInfo", sb.toString());
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
                        i8 = maxInputChannelCount;
                    }
                }
                if (i8 < i7) {
                    zzi(C0082b.m8758d(33, "channelCount.support, ", i7));
                    return false;
                }
            }
        }
        z = true;
        return z;
    }

    public final boolean zze(zzab zzabVar) {
        if (this.zzg) {
            return this.zze;
        }
        Pair<Integer, Integer> zzb = zzoy.zzb(zzabVar);
        return zzb != null && ((Integer) zzb.first).intValue() == 42;
    }

    public final boolean zzf(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzi("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzi("sizeAndRate.vCaps");
            return false;
        } else if (zzj(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.zza) && "mcv5a".equals(zzfn.zzb)) || !zzj(videoCapabilities, i2, i, d))) {
                StringBuilder m8753i = C0082b.m8753i(69, "sizeAndRate.support, ", i, "x", i2);
                m8753i.append("x");
                m8753i.append(d);
                zzi(m8753i.toString());
                return false;
            }
            StringBuilder m8753i2 = C0082b.m8753i(69, "sizeAndRate.rotated, ", i, "x", i2);
            m8753i2.append("x");
            m8753i2.append(d);
            String sb = m8753i2.toString();
            String str = this.zza;
            String str2 = this.zzb;
            String str3 = zzfn.zze;
            int length = String.valueOf(str).length();
            new StringBuilder(C0033h.m8889h(str2, C0033h.m8889h(sb, 25, length), String.valueOf(str3).length()));
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] zzg() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.zzd
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoh.zzg():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }
}
