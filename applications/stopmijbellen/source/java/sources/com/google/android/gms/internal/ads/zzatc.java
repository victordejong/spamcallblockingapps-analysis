package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.support.p012v4.media.C0082b;
import android.util.Pair;
import java.util.Objects;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatc.class */
public final class zzatc {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;
    private final String zze;
    private final MediaCodecInfo.CodecCapabilities zzf;

    private zzatc(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        Objects.requireNonNull(str);
        this.zza = str;
        this.zze = str2;
        this.zzf = codecCapabilities;
        this.zzb = !z && codecCapabilities != null && zzaxb.zza >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
        this.zzc = codecCapabilities != null && zzaxb.zza >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
        this.zzd = !z2 ? codecCapabilities != null && zzaxb.zza >= 21 && codecCapabilities.isFeatureSupported("secure-playback") : true;
    }

    public static zzatc zza(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzatc(str, str2, codecCapabilities, z, z2);
    }

    public static zzatc zzb(String str) {
        return new zzatc("OMX.google.raw.decoder", null, null, false, false);
    }

    private final void zzh(String str) {
        String str2 = this.zza;
        String str3 = this.zze;
        String str4 = zzaxb.zze;
        int length = String.valueOf(str2).length();
        int length2 = String.valueOf(str3).length();
        new StringBuilder(str.length() + 20 + length + length2 + String.valueOf(str4).length());
    }

    @TargetApi(21)
    private static boolean zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    @TargetApi(21)
    public final boolean zzc(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzf;
        if (codecCapabilities == null) {
            zzh("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzh("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
            return true;
        } else {
            zzh(C0082b.m8758d(33, "channelCount.support, ", i));
            return false;
        }
    }

    @TargetApi(21)
    public final boolean zzd(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzf;
        if (codecCapabilities == null) {
            zzh("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzh("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            zzh(C0082b.m8758d(31, "sampleRate.support, ", i));
            return false;
        }
    }

    public final boolean zze(String str) {
        MediaCodecInfo.CodecProfileLevel[] zzg;
        if (str == null || this.zze == null) {
            return true;
        }
        String trim = str.trim();
        String str2 = (trim.startsWith("avc1") || trim.startsWith("avc3")) ? "video/avc" : (trim.startsWith("hev1") || trim.startsWith("hvc1")) ? "video/hevc" : trim.startsWith("vp9") ? "video/x-vnd.on2.vp9" : trim.startsWith("vp8") ? "video/x-vnd.on2.vp8" : trim.startsWith("mp4a") ? "audio/mp4a-latm" : (trim.startsWith("ac-3") || trim.startsWith("dac3")) ? "audio/ac3" : (trim.startsWith("ec-3") || trim.startsWith("dec3")) ? "audio/eac3" : (trim.startsWith("dtsc") || trim.startsWith("dtse")) ? "audio/vnd.dts" : (trim.startsWith("dtsh") || trim.startsWith("dtsl")) ? "audio/vnd.dts.hd" : trim.startsWith("opus") ? "audio/opus" : trim.startsWith("vorbis") ? "audio/vorbis" : null;
        if (str2 == null) {
            return true;
        }
        if (!this.zze.equals(str2)) {
            zzh(C1676a.m4788i(new StringBuilder(str2.length() + str.length() + 13), "codec.mime ", str, ", ", str2));
            return false;
        }
        Pair<Integer, Integer> zzb = zzato.zzb(str);
        if (zzb == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzg()) {
            if (codecProfileLevel.profile == ((Integer) zzb.first).intValue() && codecProfileLevel.level >= ((Integer) zzb.second).intValue()) {
                return true;
            }
        }
        zzh(C1676a.m4788i(new StringBuilder(str2.length() + str.length() + 22), "codec.profileLevel, ", str, ", ", str2));
        return false;
    }

    @TargetApi(21)
    public final boolean zzf(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzf;
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
            if (i >= i2 || !zzi(videoCapabilities, i2, i, d)) {
                StringBuilder m8753i = C0082b.m8753i(69, "sizeAndRate.support, ", i, "x", i2);
                m8753i.append("x");
                m8753i.append(d);
                zzh(m8753i.toString());
                return false;
            }
            StringBuilder m8753i2 = C0082b.m8753i(69, "sizeAndRate.rotated, ", i, "x", i2);
            m8753i2.append("x");
            m8753i2.append(d);
            String sb = m8753i2.toString();
            String str = this.zza;
            String str2 = this.zze;
            String str3 = zzaxb.zze;
            int length = String.valueOf(str).length();
            int length2 = String.valueOf(str2).length();
            new StringBuilder(sb.length() + 25 + length + length2 + String.valueOf(str3).length());
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
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.zzf
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatc.zzg():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }
}
