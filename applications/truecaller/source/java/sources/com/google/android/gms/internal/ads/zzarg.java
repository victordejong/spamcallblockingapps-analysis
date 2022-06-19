package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarg.class */
public final class zzarg {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;
    private final String zze;
    private final MediaCodecInfo.CodecCapabilities zzf;

    private zzarg(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        Objects.requireNonNull(str);
        this.zza = str;
        this.zze = str2;
        this.zzf = codecCapabilities;
        this.zzb = !z && codecCapabilities != null && zzave.zza >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
        this.zzc = codecCapabilities != null && zzave.zza >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
        this.zzd = !z2 ? codecCapabilities != null && zzave.zza >= 21 && codecCapabilities.isFeatureSupported("secure-playback") : true;
    }

    public static zzarg zza(String str) {
        return new zzarg("OMX.google.raw.decoder", null, null, false, false);
    }

    public static zzarg zzb(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzarg(str, str2, codecCapabilities, z, z2);
    }

    private final void zzh(String str) {
        String str2 = this.zza;
        String str3 = this.zze;
        String str4 = zzave.zze;
        String.valueOf(str2).length();
        String.valueOf(str3).length();
        String.valueOf(str4).length();
        str.length();
    }

    private static boolean zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaCodecInfo.CodecProfileLevel[] zzc() {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzarg.zzc():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    public final boolean zzd(String str) {
        MediaCodecInfo.CodecProfileLevel[] zzc;
        if (str == null || this.zze == null) {
            return true;
        }
        String trim = str.trim();
        String str2 = (trim.startsWith("avc1") || trim.startsWith("avc3")) ? "video/avc" : (trim.startsWith("hev1") || trim.startsWith("hvc1")) ? "video/hevc" : trim.startsWith("vp9") ? "video/x-vnd.on2.vp9" : trim.startsWith("vp8") ? "video/x-vnd.on2.vp8" : trim.startsWith("mp4a") ? "audio/mp4a-latm" : (trim.startsWith("ac-3") || trim.startsWith("dac3")) ? "audio/ac3" : (trim.startsWith("ec-3") || trim.startsWith("dec3")) ? "audio/eac3" : (trim.startsWith("dtsc") || trim.startsWith("dtse")) ? "audio/vnd.dts" : (trim.startsWith("dtsh") || trim.startsWith("dtsl")) ? "audio/vnd.dts.hd" : trim.startsWith("opus") ? "audio/opus" : trim.startsWith("vorbis") ? "audio/vorbis" : null;
        if (str2 == null) {
            return true;
        }
        if (!this.zze.equals(str2)) {
            zzh(C22128a.m8606k(new StringBuilder(str2.length() + str.length() + 13), "codec.mime ", str, ", ", str2));
            return false;
        }
        Pair<Integer, Integer> zzd = zzarr.zzd(str);
        if (zzd == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzc()) {
            if (codecProfileLevel.profile == ((Integer) zzd.first).intValue() && codecProfileLevel.level >= ((Integer) zzd.second).intValue()) {
                return true;
            }
        }
        zzh(C22128a.m8606k(new StringBuilder(str2.length() + str.length() + 22), "codec.profileLevel, ", str, ", ", str2));
        return false;
    }

    public final boolean zze(int i, int i2, double d) {
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
            String str2 = this.zze;
            String str3 = zzave.zze;
            String.valueOf(str).length();
            String.valueOf(str2).length();
            String.valueOf(str3).length();
            sb.length();
            return true;
        }
    }

    public final boolean zzf(int i) {
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
            zzh(C22128a.m8690L1(31, "sampleRate.support, ", i));
            return false;
        }
    }

    public final boolean zzg(int i) {
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
            zzh(C22128a.m8690L1(33, "channelCount.support, ", i));
            return false;
        }
    }
}
