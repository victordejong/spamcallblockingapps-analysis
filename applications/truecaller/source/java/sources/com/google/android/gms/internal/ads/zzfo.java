package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfo.class */
public final class zzfo {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    private final boolean zzg;

    public zzfo(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        Objects.requireNonNull(str);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zze = z4;
        this.zzf = z6;
        this.zzg = zzalt.zzb(str2);
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
    public static com.google.android.gms.internal.ads.zzfo zza(java.lang.String r13, java.lang.String r14, java.lang.String r15, android.media.MediaCodecInfo.CodecCapabilities r16, boolean r17, boolean r18, boolean r19, boolean r20, boolean r21) {
        /*
            r0 = r16
            if (r0 == 0) goto L54
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
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
            java.lang.String r0 = com.google.android.gms.internal.ads.zzamq.zzd
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
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
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
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
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
            com.google.android.gms.internal.ads.zzfo r0 = new com.google.android.gms.internal.ads.zzfo
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfo.zza(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.ads.zzfo");
    }

    private final void zzh(String str) {
        String str2 = this.zza;
        String str3 = this.zzb;
        String str4 = zzamq.zze;
        String.valueOf(str2).length();
        String.valueOf(str4).length();
        str.length();
        str3.length();
    }

    private static boolean zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point zzj = zzj(videoCapabilities, i, i2);
        int i3 = zzj.x;
        int i4 = zzj.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    private static Point zzj(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzamq.zzw(i, widthAlignment) * widthAlignment, zzamq.zzw(i2, heightAlignment) * heightAlignment);
    }

    public final String toString() {
        return this.zza;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] zzb() {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfo.zzb():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    public final boolean zzc(zzafv zzafvVar) throws zzfy {
        boolean z;
        int i;
        String zzd;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        String str = zzafvVar.zzi;
        boolean z2 = false;
        if (str != null && (zzd = zzalt.zzd(str)) != null) {
            if (!this.zzb.equals(zzd)) {
                String str2 = zzafvVar.zzi;
                zzh(C22128a.m8606k(new StringBuilder(zzd.length() + String.valueOf(str2).length() + 13), "codec.mime ", str2, ", ", zzd));
                return false;
            }
            Pair<Integer, Integer> zzf = zzge.zzf(zzafvVar);
            if (zzf != null) {
                int intValue = ((Integer) zzf.first).intValue();
                int intValue2 = ((Integer) zzf.second).intValue();
                int i2 = intValue;
                if (!this.zzg) {
                    if (intValue == 42) {
                        i2 = 42;
                    }
                }
                MediaCodecInfo.CodecProfileLevel[] zzb = zzb();
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = zzb;
                if (zzamq.zza <= 23) {
                    codecProfileLevelArr = zzb;
                    if ("video/x-vnd.on2.vp9".equals(this.zzb)) {
                        codecProfileLevelArr = zzb;
                        if (zzb.length == 0) {
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
                String str3 = zzafvVar.zzi;
                zzh(C22128a.m8606k(new StringBuilder(zzd.length() + String.valueOf(str3).length() + 22), "codec.profileLevel, ", str3, ", ", zzd));
                return false;
            }
        }
        if (this.zzg) {
            int i4 = zzafvVar.zzq;
            if (i4 <= 0 || (i = zzafvVar.zzr) <= 0) {
                return true;
            }
            if (zzamq.zza >= 21) {
                return zzf(i4, i, zzafvVar.zzs);
            }
            if (i4 * i <= zzge.zze()) {
                z2 = true;
            }
            if (!z2) {
                zzh(C22128a.m8683N1(40, "legacyFrameSize, ", zzafvVar.zzq, "x", zzafvVar.zzr));
            }
            return z2;
        }
        int i5 = zzamq.zza;
        if (i5 >= 21) {
            int i6 = zzafvVar.zzz;
            if (i6 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
                if (codecCapabilities2 == null) {
                    zzh("sampleRate.caps");
                    z = false;
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities2.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        zzh("sampleRate.aCaps");
                        z = false;
                    } else if (!audioCapabilities.isSampleRateSupported(i6)) {
                        zzh(C22128a.m8690L1(31, "sampleRate.support, ", i6));
                        z = false;
                    }
                }
                return z;
            }
            int i7 = zzafvVar.zzy;
            if (i7 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.zzd;
                if (codecCapabilities3 == null) {
                    zzh("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities3.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    zzh("channelCount.aCaps");
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
                                                                    String.valueOf(str4).length();
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
                    zzh(C22128a.m8690L1(33, "channelCount.support, ", i7));
                    return false;
                }
            }
        }
        z = true;
        return z;
    }

    public final boolean zzd(zzafv zzafvVar) {
        if (this.zzg) {
            return this.zze;
        }
        Pair<Integer, Integer> zzf = zzge.zzf(zzafvVar);
        return zzf != null && ((Integer) zzf.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        if (r9.zzr != r10.zzr) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzba zze(com.google.android.gms.internal.ads.zzafv r9, com.google.android.gms.internal.ads.zzafv r10) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfo.zze(com.google.android.gms.internal.ads.zzafv, com.google.android.gms.internal.ads.zzafv):com.google.android.gms.internal.ads.zzba");
    }

    public final boolean zzf(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzh("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzh("sizeAndRate.vCaps");
            return false;
        } else if (zzi(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.zza) && "mcv5a".equals(zzamq.zzb)) || !zzi(videoCapabilities, i2, i, d))) {
                StringBuilder m8546z = C22128a.m8546z(69, "sizeAndRate.support, ", i, "x", i2);
                m8546z.append("x");
                m8546z.append(d);
                zzh(m8546z.toString());
                return false;
            }
            StringBuilder m8546z2 = C22128a.m8546z(69, "sizeAndRate.rotated, ", i, "x", i2);
            m8546z2.append("x");
            m8546z2.append(d);
            String sb = m8546z2.toString();
            String str = this.zza;
            String str2 = this.zzb;
            String str3 = zzamq.zze;
            String.valueOf(str).length();
            String.valueOf(str3).length();
            sb.length();
            str2.length();
            return true;
        }
    }

    public final Point zzg(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return zzj(videoCapabilities, i, i2);
    }
}
