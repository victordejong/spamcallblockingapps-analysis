package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.millennialmedia.internal.PlayList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {
    private static final SparseIntArray AVC_LEVEL_NUMBER_TO_CONST;
    private static final SparseIntArray AVC_PROFILE_NUMBER_TO_CONST;
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final Map<String, Integer> HEVC_CODEC_STRING_TO_PROFILE_LEVEL;
    private static final String MTK_RAW_DECODER_NAME = "OMX.MTK.AUDIO.DECODER.RAW";
    private static final String TAG = "MediaCodecUtil";
    private static final String GOOGLE_RAW_DECODER_NAME = "OMX.google.raw.decoder";
    private static final MediaCodecInfo PASSTHROUGH_DECODER_INFO = MediaCodecInfo.newPassthroughInstance(GOOGLE_RAW_DECODER_NAME);
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey.class */
    public static final class CodecKey {
        public final String mimeType;
        public final boolean secure;

        public CodecKey(String str, boolean z) {
            this.mimeType = str;
            this.secure = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            if (!TextUtils.equals(this.mimeType, codecKey.mimeType) || this.secure != codecKey.secure) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.secure ? 1231 : 1237);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat.class */
    public interface MediaCodecListCompat {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        AVC_PROFILE_NUMBER_TO_CONST = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        AVC_LEVEL_NUMBER_TO_CONST = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap hashMap = new HashMap();
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", 256);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        hashMap.put("L150", 16384);
        hashMap.put("L153", 65536);
        hashMap.put("L156", Integer.valueOf((int) PKIFailureInfo.transactionIdInUse));
        hashMap.put("L180", Integer.valueOf((int) PKIFailureInfo.badCertTemplate));
        hashMap.put("L183", 4194304);
        hashMap.put("L186", Integer.valueOf((int) C0515C.DEFAULT_MUXED_BUFFER_SIZE));
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", 512);
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", Integer.valueOf((int) PKIFailureInfo.signerNotTrusted));
        hashMap.put("H180", Integer.valueOf((int) PKIFailureInfo.badSenderNonce));
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    private MediaCodecUtil() {
    }

    private static void applyWorkarounds(List<MediaCodecInfo> list) {
        if (Util.SDK_INT < 26) {
            if (list.size() <= 1 || !MTK_RAW_DECODER_NAME.equals(list.get(0).name)) {
                return;
            }
            for (int i = 1; i < list.size(); i++) {
                MediaCodecInfo mediaCodecInfo = list.get(i);
                if (GOOGLE_RAW_DECODER_NAME.equals(mediaCodecInfo.name)) {
                    list.remove(i);
                    list.add(0, mediaCodecInfo);
                    return;
                }
            }
        }
    }

    private static int avcLevelToMaxFrameSize(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return PKIFailureInfo.badSenderNonce;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            default:
                return -1;
        }
    }

    private static boolean codecNeedsDisableAdaptationWorkaround(String str) {
        boolean z;
        if (Util.SDK_INT <= 22) {
            String str2 = Util.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    private static Pair<Integer, Integer> getAvcProfileAndLevel(String str, String[] strArr) {
        StringBuilder sb;
        Integer num;
        Integer num2;
        int i;
        String str2;
        if (strArr.length >= 2) {
            try {
                if (strArr[1].length() == 6) {
                    Integer valueOf = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                    Integer valueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                    num = valueOf;
                    num2 = valueOf2;
                } else if (strArr.length < 3) {
                    Log.w(TAG, "Ignoring malformed AVC codec string: " + str);
                    return null;
                } else {
                    int parseInt = Integer.parseInt(strArr[1]);
                    Integer valueOf3 = Integer.valueOf(Integer.parseInt(strArr[2]));
                    num = Integer.valueOf(parseInt);
                    num2 = valueOf3;
                }
                i = AVC_PROFILE_NUMBER_TO_CONST.get(num.intValue(), -1);
            } catch (NumberFormatException e) {
                sb = new StringBuilder();
            }
            if (i == -1) {
                str2 = "Unknown AVC profile: " + num;
                Log.w(TAG, str2);
                return null;
            }
            int i2 = AVC_LEVEL_NUMBER_TO_CONST.get(num2.intValue(), -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            sb = new StringBuilder();
            sb.append("Unknown AVC level: ");
            sb.append(num2);
            str2 = sb.toString();
            Log.w(TAG, str2);
            return null;
        }
        sb = new StringBuilder();
        sb.append("Ignoring malformed AVC codec string: ");
        sb.append(str);
        str2 = sb.toString();
        Log.w(TAG, str2);
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0086, code lost:
        if (r0.equals(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CODEC_ID_AVC1) == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(java.lang.String r3) {
        /*
            r0 = r3
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r3
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            int r0 = r0.hashCode()
            r0 = r6
            int r0 = r0.hashCode()
            switch(r0) {
                case 3006243: goto L80;
                case 3006244: goto L6f;
                case 3199032: goto L5e;
                case 3214780: goto L4d;
                default: goto L48;
            }
        L48:
            r0 = -1
            r5 = r0
            goto L8c
        L4d:
            r0 = r6
            java.lang.String r1 = "hvc1"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L59
            goto L48
        L59:
            r0 = 3
            r5 = r0
            goto L8c
        L5e:
            r0 = r6
            java.lang.String r1 = "hev1"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6a
            goto L48
        L6a:
            r0 = 2
            r5 = r0
            goto L8c
        L6f:
            r0 = r6
            java.lang.String r1 = "avc2"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L7b
            goto L48
        L7b:
            r0 = 1
            r5 = r0
            goto L8c
        L80:
            r0 = r6
            java.lang.String r1 = "avc1"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L8c
            goto L48
        L8c:
            r0 = r5
            switch(r0) {
                case 0: goto Lb4;
                case 1: goto Lb4;
                case 2: goto Lae;
                case 3: goto Lae;
                default: goto Lac;
            }
        Lac:
            r0 = 0
            return r0
        Lae:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getHevcProfileAndLevel(r0, r1)
            return r0
        Lb4:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getAvcProfileAndLevel(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(java.lang.String):android.util.Pair");
    }

    public static MediaCodecInfo getDecoderInfo(String str, boolean z) {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(str, z);
        return decoderInfos.isEmpty() ? null : decoderInfos.get(0);
    }

    public static List<MediaCodecInfo> getDecoderInfos(String str, boolean z) {
        synchronized (MediaCodecUtil.class) {
            try {
                CodecKey codecKey = new CodecKey(str, z);
                HashMap<CodecKey, List<MediaCodecInfo>> hashMap = decoderInfosCache;
                List<MediaCodecInfo> list = hashMap.get(codecKey);
                if (list != null) {
                    return list;
                }
                int i = Util.SDK_INT;
                MediaCodecListCompat mediaCodecListCompatV21 = i >= 21 ? new MediaCodecListCompatV21(z) : new MediaCodecListCompatV16((C05411) null);
                ArrayList<MediaCodecInfo> decoderInfosInternal = getDecoderInfosInternal(codecKey, mediaCodecListCompatV21, str);
                MediaCodecListCompat mediaCodecListCompat = mediaCodecListCompatV21;
                ArrayList<MediaCodecInfo> arrayList = decoderInfosInternal;
                if (z) {
                    mediaCodecListCompat = mediaCodecListCompatV21;
                    arrayList = decoderInfosInternal;
                    if (decoderInfosInternal.isEmpty()) {
                        mediaCodecListCompat = mediaCodecListCompatV21;
                        arrayList = decoderInfosInternal;
                        if (21 <= i) {
                            mediaCodecListCompat = mediaCodecListCompatV21;
                            arrayList = decoderInfosInternal;
                            if (i <= 23) {
                                MediaCodecListCompat mediaCodecListCompatV16 = new MediaCodecListCompatV16((C05411) null);
                                ArrayList<MediaCodecInfo> decoderInfosInternal2 = getDecoderInfosInternal(codecKey, mediaCodecListCompatV16, str);
                                mediaCodecListCompat = mediaCodecListCompatV16;
                                arrayList = decoderInfosInternal2;
                                if (!decoderInfosInternal2.isEmpty()) {
                                    Log.w(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + decoderInfosInternal2.get(0).name);
                                    arrayList = decoderInfosInternal2;
                                    mediaCodecListCompat = mediaCodecListCompatV16;
                                }
                            }
                        }
                    }
                }
                if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
                    arrayList.addAll(getDecoderInfosInternal(new CodecKey(MimeTypes.AUDIO_E_AC3, codecKey.secure), mediaCodecListCompat, str));
                }
                applyWorkarounds(arrayList);
                List<MediaCodecInfo> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(codecKey, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0194, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey r7, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$CodecKey, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$MediaCodecListCompat, java.lang.String):java.util.ArrayList");
    }

    private static Pair<Integer, Integer> getHevcProfileAndLevel(String str, String[] strArr) {
        int i;
        String str2;
        StringBuilder sb;
        if (strArr.length < 4) {
            sb = new StringBuilder();
        } else {
            Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
            if (matcher.matches()) {
                str = matcher.group(1);
                if ("1".equals(str)) {
                    i = 1;
                } else if (!PlayList.VERSION.equals(str)) {
                    sb = new StringBuilder();
                    sb.append("Unknown HEVC profile string: ");
                    sb.append(str);
                    str2 = sb.toString();
                    Log.w(TAG, str2);
                    return null;
                } else {
                    i = 2;
                }
                Integer num = HEVC_CODEC_STRING_TO_PROFILE_LEVEL.get(strArr[3]);
                if (num != null) {
                    return new Pair<>(Integer.valueOf(i), num);
                }
                str2 = "Unknown HEVC level string: " + matcher.group(1);
                Log.w(TAG, str2);
                return null;
            }
            sb = new StringBuilder();
        }
        sb.append("Ignoring malformed HEVC codec string: ");
        sb.append(str);
        str2 = sb.toString();
        Log.w(TAG, str2);
        return null;
    }

    public static MediaCodecInfo getPassthroughDecoderInfo() {
        return PASSTHROUGH_DECODER_INFO;
    }

    private static boolean isCodecUsableDecoder(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (!mediaCodecInfo.isEncoder()) {
            if (!z && str.endsWith(".secure")) {
                return false;
            }
            int i = Util.SDK_INT;
            if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
                return false;
            }
            if (i < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
                return false;
            }
            if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = Util.DEVICE;
                if ("a70".equals(str3)) {
                    return false;
                }
                if ("Xiaomi".equals(Util.MANUFACTURER) && str3.startsWith("HM")) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = Util.DEVICE;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = Util.DEVICE;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Util.MANUFACTURER))) {
                String str6 = Util.DEVICE;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(Util.MANUFACTURER)) {
                String str7 = Util.DEVICE;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i <= 19 && Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return !MimeTypes.AUDIO_E_AC3_JOC.equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    public static int maxH264DecodableFrameSize() {
        if (maxH264DecodableFrameSize == -1) {
            int i = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false);
            if (decoderInfo != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : decoderInfo.getProfileLevels()) {
                    i2 = Math.max(avcLevelToMaxFrameSize(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = i;
        }
        return maxH264DecodableFrameSize;
    }

    public static void warmDecoderInfoCache(String str, boolean z) {
        try {
            getDecoderInfos(str, z);
        } catch (DecoderQueryException e) {
            Log.e(TAG, "Codec warming failed", e);
        }
    }
}
