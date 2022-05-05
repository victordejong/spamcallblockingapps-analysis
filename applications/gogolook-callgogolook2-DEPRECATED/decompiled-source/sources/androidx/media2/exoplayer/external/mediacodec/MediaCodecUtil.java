package androidx.media2.exoplayer.external.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p459j.p460a.p521j0.p522u.p523d.C12680t0;
@SuppressLint({"InlinedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {
    public static final String CODEC_ID_AVC1 = "avc1";
    public static final String CODEC_ID_AVC2 = "avc2";
    public static final String CODEC_ID_DVH1 = "dvh1";
    public static final String CODEC_ID_DVHE = "dvhe";
    public static final String CODEC_ID_HEV1 = "hev1";
    public static final String CODEC_ID_HVC1 = "hvc1";
    public static final String CODEC_ID_MP4A = "mp4a";
    public static final String CODEC_ID_VP09 = "vp09";
    public static final String TAG = "MediaCodecUtil";
    public static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");
    public static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    public static int maxH264DecodableFrameSize = -1;
    public static final SparseIntArray AVC_PROFILE_NUMBER_TO_CONST = new SparseIntArray();
    public static final SparseIntArray AVC_LEVEL_NUMBER_TO_CONST = new SparseIntArray();
    public static final SparseIntArray VP9_PROFILE_NUMBER_TO_CONST = new SparseIntArray();
    public static final SparseIntArray VP9_LEVEL_NUMBER_TO_CONST = new SparseIntArray();
    public static final Map<String, Integer> HEVC_CODEC_STRING_TO_PROFILE_LEVEL = new HashMap();
    public static final Map<String, Integer> DOLBY_VISION_STRING_TO_PROFILE = new HashMap();
    public static final Map<String, Integer> DOLBY_VISION_STRING_TO_LEVEL = new HashMap();
    public static final SparseIntArray MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE = new SparseIntArray();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey.class */
    public static final class CodecKey {
        public final String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public CodecKey(String str, boolean z, boolean z2) {
            this.mimeType = str;
            this.secure = z;
            this.tunneling = z2;
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            if (!(TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure && this.tunneling == codecKey.tunneling)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.mimeType;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.secure ? 1231 : 1237;
            if (!this.tunneling) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        public DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat.class */
    public interface MediaCodecListCompat {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16.class */
    public static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        public MediaCodecListCompatV16() {
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    @TargetApi(21)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21.class */
    public static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        public final int codecKind;
        public MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean z, boolean z2) {
            this.codecKind = (z || z2) ? 1 : 0;
        }

        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i];
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider.class */
    public interface ScoreProvider<T> {
        int getScore(T t);
    }

    static {
        AVC_PROFILE_NUMBER_TO_CONST.put(66, 1);
        AVC_PROFILE_NUMBER_TO_CONST.put(77, 2);
        AVC_PROFILE_NUMBER_TO_CONST.put(88, 4);
        AVC_PROFILE_NUMBER_TO_CONST.put(100, 8);
        AVC_PROFILE_NUMBER_TO_CONST.put(110, 16);
        AVC_PROFILE_NUMBER_TO_CONST.put(122, 32);
        AVC_PROFILE_NUMBER_TO_CONST.put(244, 64);
        AVC_LEVEL_NUMBER_TO_CONST.put(10, 1);
        AVC_LEVEL_NUMBER_TO_CONST.put(11, 4);
        AVC_LEVEL_NUMBER_TO_CONST.put(12, 8);
        AVC_LEVEL_NUMBER_TO_CONST.put(13, 16);
        AVC_LEVEL_NUMBER_TO_CONST.put(20, 32);
        AVC_LEVEL_NUMBER_TO_CONST.put(21, 64);
        AVC_LEVEL_NUMBER_TO_CONST.put(22, 128);
        AVC_LEVEL_NUMBER_TO_CONST.put(30, 256);
        AVC_LEVEL_NUMBER_TO_CONST.put(31, 512);
        AVC_LEVEL_NUMBER_TO_CONST.put(32, 1024);
        AVC_LEVEL_NUMBER_TO_CONST.put(40, 2048);
        AVC_LEVEL_NUMBER_TO_CONST.put(41, 4096);
        AVC_LEVEL_NUMBER_TO_CONST.put(42, 8192);
        AVC_LEVEL_NUMBER_TO_CONST.put(50, 16384);
        AVC_LEVEL_NUMBER_TO_CONST.put(51, 32768);
        AVC_LEVEL_NUMBER_TO_CONST.put(52, 65536);
        VP9_PROFILE_NUMBER_TO_CONST.put(0, 1);
        VP9_PROFILE_NUMBER_TO_CONST.put(1, 2);
        VP9_PROFILE_NUMBER_TO_CONST.put(2, 4);
        VP9_PROFILE_NUMBER_TO_CONST.put(3, 8);
        VP9_LEVEL_NUMBER_TO_CONST.put(10, 1);
        VP9_LEVEL_NUMBER_TO_CONST.put(11, 2);
        VP9_LEVEL_NUMBER_TO_CONST.put(20, 4);
        VP9_LEVEL_NUMBER_TO_CONST.put(21, 8);
        VP9_LEVEL_NUMBER_TO_CONST.put(30, 16);
        VP9_LEVEL_NUMBER_TO_CONST.put(31, 32);
        VP9_LEVEL_NUMBER_TO_CONST.put(40, 64);
        VP9_LEVEL_NUMBER_TO_CONST.put(41, 128);
        VP9_LEVEL_NUMBER_TO_CONST.put(50, 256);
        VP9_LEVEL_NUMBER_TO_CONST.put(51, 512);
        VP9_LEVEL_NUMBER_TO_CONST.put(60, 2048);
        VP9_LEVEL_NUMBER_TO_CONST.put(61, 4096);
        VP9_LEVEL_NUMBER_TO_CONST.put(62, 8192);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L30", 1);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L60", 4);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L63", 16);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L90", 64);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L93", 256);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L120", 1024);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L123", 4096);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L150", 16384);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L153", 65536);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L156", 262144);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L180", 1048576);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L183", 4194304);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L186", 16777216);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H30", 2);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H60", 8);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H63", 32);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H90", 128);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H93", 512);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H120", 2048);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H123", 8192);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H150", 32768);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H153", 131072);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H156", 524288);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H180", 2097152);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H183", 8388608);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H186", 33554432);
        DOLBY_VISION_STRING_TO_PROFILE.put("00", 1);
        DOLBY_VISION_STRING_TO_PROFILE.put("01", 2);
        DOLBY_VISION_STRING_TO_PROFILE.put("02", 4);
        DOLBY_VISION_STRING_TO_PROFILE.put("03", 8);
        DOLBY_VISION_STRING_TO_PROFILE.put("04", 16);
        DOLBY_VISION_STRING_TO_PROFILE.put("05", 32);
        DOLBY_VISION_STRING_TO_PROFILE.put("06", 64);
        DOLBY_VISION_STRING_TO_PROFILE.put("07", 128);
        DOLBY_VISION_STRING_TO_PROFILE.put("08", 256);
        DOLBY_VISION_STRING_TO_PROFILE.put("09", 512);
        DOLBY_VISION_STRING_TO_LEVEL.put("01", 1);
        DOLBY_VISION_STRING_TO_LEVEL.put("02", 2);
        DOLBY_VISION_STRING_TO_LEVEL.put("03", 4);
        DOLBY_VISION_STRING_TO_LEVEL.put("04", 8);
        DOLBY_VISION_STRING_TO_LEVEL.put("05", 16);
        DOLBY_VISION_STRING_TO_LEVEL.put("06", 32);
        DOLBY_VISION_STRING_TO_LEVEL.put("07", 64);
        DOLBY_VISION_STRING_TO_LEVEL.put("08", 128);
        DOLBY_VISION_STRING_TO_LEVEL.put("09", 256);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(1, 1);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(2, 2);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(3, 3);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(4, 4);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(5, 5);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(6, 6);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(17, 17);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(20, 20);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(23, 23);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(29, 29);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(39, 39);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(42, 42);
    }

    public static void applyWorkarounds(String str, List<MediaCodecInfo> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (Util.SDK_INT < 26 && Util.DEVICE.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(MediaCodecInfo.newInstance("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, null));
            }
            sortByScore(list, MediaCodecUtil$$Lambda$1.$instance);
        } else if (Util.SDK_INT < 21 && list.size() > 1) {
            String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                sortByScore(list, MediaCodecUtil$$Lambda$2.$instance);
            }
        }
    }

    public static int avcLevelToMaxFrameSize(int i) {
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
                return 2097152;
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

    public static boolean codecNeedsDisableAdaptationWorkaround(String str) {
        return Util.SDK_INT <= 22 && ("ODROID-XU3".equals(Util.MODEL) || "Nexus 10".equals(Util.MODEL)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    @Nullable
    public static Pair<Integer, Integer> getAacCodecProfileAndLevel(String str, String[] strArr) {
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            Log.m37483w(TAG, valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (!MimeTypes.AUDIO_AAC.equals(MimeTypes.getMimeTypeFromMp4ObjectType(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.get(Integer.parseInt(strArr[2]), -1);
            if (i != -1) {
                return new Pair<>(Integer.valueOf(i), 0);
            }
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.m37483w(TAG, valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
    }

    public static Pair<Integer, Integer> getAvcProfileAndLevel(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            Log.m37483w(TAG, valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            } else {
                String valueOf2 = String.valueOf(str);
                Log.m37483w(TAG, valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            int i3 = AVC_PROFILE_NUMBER_TO_CONST.get(i2, -1);
            if (i3 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i2);
                Log.m37483w(TAG, sb.toString());
                return null;
            }
            int i4 = AVC_LEVEL_NUMBER_TO_CONST.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown AVC level: ");
            sb2.append(i);
            Log.m37483w(TAG, sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf3 = String.valueOf(str);
            Log.m37483w(TAG, valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
        if (r0.equals(androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.CODEC_ID_AVC1) != false) goto L_0x00d9;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(@androidx.annotation.Nullable java.lang.String r3) {
        /*
            r0 = r3
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
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
            switch(r0) {
                case 3006243: goto L_0x00cb;
                case 3006244: goto L_0x00bd;
                case 3095771: goto L_0x00ae;
                case 3095823: goto L_0x00a0;
                case 3199032: goto L_0x0092;
                case 3214780: goto L_0x0084;
                case 3356560: goto L_0x0075;
                case 3624515: goto L_0x0067;
                default: goto L_0x0064;
            }
        L_0x0064:
            goto L_0x00d7
        L_0x0067:
            r0 = r6
            java.lang.String r1 = "vp09"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 2
            r5 = r0
            goto L_0x00d9
        L_0x0075:
            r0 = r6
            java.lang.String r1 = "mp4a"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 7
            r5 = r0
            goto L_0x00d9
        L_0x0084:
            r0 = r6
            java.lang.String r1 = "hvc1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 4
            r5 = r0
            goto L_0x00d9
        L_0x0092:
            r0 = r6
            java.lang.String r1 = "hev1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 3
            r5 = r0
            goto L_0x00d9
        L_0x00a0:
            r0 = r6
            java.lang.String r1 = "dvhe"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 5
            r5 = r0
            goto L_0x00d9
        L_0x00ae:
            r0 = r6
            java.lang.String r1 = "dvh1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 6
            r5 = r0
            goto L_0x00d9
        L_0x00bd:
            r0 = r6
            java.lang.String r1 = "avc2"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            r0 = 1
            r5 = r0
            goto L_0x00d9
        L_0x00cb:
            r0 = r6
            java.lang.String r1 = "avc1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00d7
            goto L_0x00d9
        L_0x00d7:
            r0 = -1
            r5 = r0
        L_0x00d9:
            r0 = r5
            switch(r0) {
                case 0: goto L_0x0122;
                case 1: goto L_0x0122;
                case 2: goto L_0x011c;
                case 3: goto L_0x0116;
                case 4: goto L_0x0116;
                case 5: goto L_0x0110;
                case 6: goto L_0x0110;
                case 7: goto L_0x010a;
                default: goto L_0x0108;
            }
        L_0x0108:
            r0 = 0
            return r0
        L_0x010a:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getAacCodecProfileAndLevel(r0, r1)
            return r0
        L_0x0110:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getDolbyVisionProfileAndLevel(r0, r1)
            return r0
        L_0x0116:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getHevcProfileAndLevel(r0, r1)
            return r0
        L_0x011c:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getVp9ProfileAndLevel(r0, r1)
            return r0
        L_0x0122:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = getAvcProfileAndLevel(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(java.lang.String):android.util.Pair");
    }

    @Nullable
    public static String getCodecSupportedType(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!isCodecUsableDecoder(mediaCodecInfo, str, z, str2)) {
            return null;
        }
        if (str2.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
        }
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        return null;
    }

    @Nullable
    public static MediaCodecInfo getDecoderInfo(String str, boolean z, boolean z2) throws DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(str, z, z2);
        return decoderInfos.isEmpty() ? null : decoderInfos.get(0);
    }

    public static List<MediaCodecInfo> getDecoderInfos(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                CodecKey codecKey = new CodecKey(str, z, z2);
                List<MediaCodecInfo> list = decoderInfosCache.get(codecKey);
                if (list != null) {
                    return list;
                }
                ArrayList<MediaCodecInfo> decoderInfosInternal = getDecoderInfosInternal(codecKey, Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z, z2) : new MediaCodecListCompatV16(), str);
                ArrayList<MediaCodecInfo> arrayList = decoderInfosInternal;
                if (z) {
                    arrayList = decoderInfosInternal;
                    if (decoderInfosInternal.isEmpty()) {
                        arrayList = decoderInfosInternal;
                        if (21 <= Util.SDK_INT) {
                            arrayList = decoderInfosInternal;
                            if (Util.SDK_INT <= 23) {
                                ArrayList<MediaCodecInfo> decoderInfosInternal2 = getDecoderInfosInternal(codecKey, new MediaCodecListCompatV16(), str);
                                arrayList = decoderInfosInternal2;
                                if (!decoderInfosInternal2.isEmpty()) {
                                    String str2 = decoderInfosInternal2.get(0).name;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.m37483w(TAG, sb.toString());
                                    arrayList = decoderInfosInternal2;
                                }
                            }
                        }
                    }
                }
                applyWorkarounds(str, arrayList);
                List<MediaCodecInfo> unmodifiableList = Collections.unmodifiableList(arrayList);
                decoderInfosCache.put(codecKey, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ArrayList<MediaCodecInfo> getDecoderInfosInternal(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat, String str) throws DecoderQueryException {
        try {
            ArrayList<MediaCodecInfo> arrayList = new ArrayList<>();
            String str2 = codecKey.mimeType;
            int codecCount = mediaCodecListCompat.getCodecCount();
            boolean secureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = mediaCodecListCompat.getCodecInfoAt(i);
                String name = codecInfoAt.getName();
                String codecSupportedType = getCodecSupportedType(codecInfoAt, name, secureDecodersExplicit, str);
                if (codecSupportedType != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(codecSupportedType);
                        boolean isFeatureSupported = mediaCodecListCompat.isFeatureSupported("tunneled-playback", codecSupportedType, capabilitiesForType);
                        boolean isFeatureRequired = mediaCodecListCompat.isFeatureRequired("tunneled-playback", codecSupportedType, capabilitiesForType);
                        if ((codecKey.tunneling || !isFeatureRequired) && (!codecKey.tunneling || isFeatureSupported)) {
                            boolean isFeatureSupported2 = mediaCodecListCompat.isFeatureSupported("secure-playback", codecSupportedType, capabilitiesForType);
                            boolean isFeatureRequired2 = mediaCodecListCompat.isFeatureRequired("secure-playback", codecSupportedType, capabilitiesForType);
                            if ((codecKey.secure || !isFeatureRequired2) && (!codecKey.secure || isFeatureSupported2)) {
                                boolean codecNeedsDisableAdaptationWorkaround = codecNeedsDisableAdaptationWorkaround(name);
                                if (secureDecodersExplicit) {
                                    if (codecKey.secure != isFeatureSupported2) {
                                    }
                                    arrayList.add(MediaCodecInfo.newInstance(name, str2, capabilitiesForType, codecNeedsDisableAdaptationWorkaround, false));
                                }
                                if (!secureDecodersExplicit && !codecKey.secure) {
                                    arrayList.add(MediaCodecInfo.newInstance(name, str2, capabilitiesForType, codecNeedsDisableAdaptationWorkaround, false));
                                } else if (!secureDecodersExplicit && isFeatureSupported2) {
                                    arrayList.add(MediaCodecInfo.newInstance(String.valueOf(name).concat(".secure"), str2, capabilitiesForType, codecNeedsDisableAdaptationWorkaround, true));
                                    return arrayList;
                                }
                            }
                        }
                    } catch (Exception e) {
                        if (Util.SDK_INT > 23 || arrayList.isEmpty()) {
                            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(codecSupportedType).length());
                            sb.append("Failed to query codec ");
                            sb.append(name);
                            sb.append(" (");
                            sb.append(codecSupportedType);
                            sb.append(")");
                            Log.m37487e(TAG, sb.toString());
                            throw e;
                        }
                        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 46);
                        sb2.append("Skipping codec ");
                        sb2.append(name);
                        sb2.append(" (failed to query capabilities)");
                        Log.m37487e(TAG, sb2.toString());
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new DecoderQueryException(e2);
        }
    }

    @CheckResult
    public static List<MediaCodecInfo> getDecoderInfosSortedByFormatSupport(List<MediaCodecInfo> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        sortByScore(arrayList, new ScoreProvider(format) { // from class: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$$Lambda$0
            public final Format arg$1;

            {
                this.arg$1 = format;
            }

            @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.ScoreProvider
            public int getScore(Object obj) {
                return MediaCodecUtil.lambda$getDecoderInfosSortedByFormatSupport$0$MediaCodecUtil(this.arg$1, (MediaCodecInfo) obj);
            }
        });
        return arrayList;
    }

    public static Pair<Integer, Integer> getDolbyVisionProfileAndLevel(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            Log.m37483w(TAG, valueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            Log.m37483w(TAG, valueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf2) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        String group = matcher.group(1);
        Integer num = DOLBY_VISION_STRING_TO_PROFILE.get(group);
        if (num == null) {
            String valueOf3 = String.valueOf(group);
            Log.m37483w(TAG, valueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(valueOf3) : new String("Unknown Dolby Vision profile string: "));
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = DOLBY_VISION_STRING_TO_LEVEL.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        String valueOf4 = String.valueOf(str2);
        Log.m37483w(TAG, valueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(valueOf4) : new String("Unknown Dolby Vision level string: "));
        return null;
    }

    public static Pair<Integer, Integer> getHevcProfileAndLevel(String str, String[] strArr) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            Log.m37483w(TAG, valueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i = 1;
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            Log.m37483w(TAG, valueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf2) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if ("2".equals(group)) {
                i = 2;
            } else {
                String valueOf3 = String.valueOf(group);
                Log.m37483w(TAG, valueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf3) : new String("Unknown HEVC profile string: "));
                return null;
            }
        }
        String str2 = strArr[3];
        Integer num = HEVC_CODEC_STRING_TO_PROFILE_LEVEL.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        String valueOf4 = String.valueOf(str2);
        Log.m37483w(TAG, valueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf4) : new String("Unknown HEVC level string: "));
        return null;
    }

    @Nullable
    public static MediaCodecInfo getPassthroughDecoderInfo() throws DecoderQueryException {
        MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.AUDIO_RAW, false, false);
        return decoderInfo == null ? null : MediaCodecInfo.newPassthroughInstance(decoderInfo.name);
    }

    public static Pair<Integer, Integer> getVp9ProfileAndLevel(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            Log.m37483w(TAG, valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = VP9_PROFILE_NUMBER_TO_CONST.get(parseInt, -1);
            if (i == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                Log.m37483w(TAG, sb.toString());
                return null;
            }
            int i2 = VP9_LEVEL_NUMBER_TO_CONST.get(parseInt2, -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown VP9 level: ");
            sb2.append(parseInt2);
            Log.m37483w(TAG, sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.m37483w(TAG, valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    public static boolean isCodecUsableDecoder(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        if (Util.SDK_INT < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            if ("a70".equals(Util.DEVICE)) {
                return false;
            }
            if ("Xiaomi".equals(Util.MANUFACTURER) && Util.DEVICE.startsWith("HM")) {
                return false;
            }
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(Util.DEVICE) || "protou".equals(Util.DEVICE) || "ville".equals(Util.DEVICE) || "villeplus".equals(Util.DEVICE) || "villec2".equals(Util.DEVICE) || Util.DEVICE.startsWith("gee") || "C6602".equals(Util.DEVICE) || "C6603".equals(Util.DEVICE) || "C6606".equals(Util.DEVICE) || "C6616".equals(Util.DEVICE) || "L36h".equals(Util.DEVICE) || "SO-02E".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(Util.DEVICE) || "C1505".equals(Util.DEVICE) || "C1604".equals(Util.DEVICE) || "C1605".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Util.MANUFACTURER) && (Util.DEVICE.startsWith("zeroflte") || Util.DEVICE.startsWith("zerolte") || Util.DEVICE.startsWith("zenlte") || "SC-05G".equals(Util.DEVICE) || "marinelteatt".equals(Util.DEVICE) || "404SC".equals(Util.DEVICE) || "SC-04G".equals(Util.DEVICE) || "SCV31".equals(Util.DEVICE)))) {
            return false;
        }
        if (Util.SDK_INT <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(Util.MANUFACTURER) && (Util.DEVICE.startsWith("d2") || Util.DEVICE.startsWith("serrano") || Util.DEVICE.startsWith("jflte") || Util.DEVICE.startsWith("santos") || Util.DEVICE.startsWith(C12680t0.f28596z))) {
            return false;
        }
        if (Util.SDK_INT > 19 || !Util.DEVICE.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str)) {
            return !MimeTypes.AUDIO_E_AC3_JOC.equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    public static final /* synthetic */ int lambda$applyWorkarounds$1$MediaCodecUtil(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    public static final /* synthetic */ int lambda$applyWorkarounds$2$MediaCodecUtil(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.name.startsWith("OMX.google") ? 1 : 0;
    }

    public static final /* synthetic */ int lambda$getDecoderInfosSortedByFormatSupport$0$MediaCodecUtil(Format format, MediaCodecInfo mediaCodecInfo) {
        try {
            return mediaCodecInfo.isFormatSupported(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }

    public static final /* synthetic */ int lambda$sortByScore$3$MediaCodecUtil(ScoreProvider scoreProvider, Object obj, Object obj2) {
        return scoreProvider.getScore(obj2) - scoreProvider.getScore(obj);
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        if (maxH264DecodableFrameSize == -1) {
            int i = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false, false);
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

    public static <T> void sortByScore(List<T> list, final ScoreProvider<T> scoreProvider) {
        Collections.sort(list, new Comparator(scoreProvider) { // from class: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$$Lambda$3
            public final MediaCodecUtil.ScoreProvider arg$1;

            {
                this.arg$1 = scoreProvider;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return MediaCodecUtil.lambda$sortByScore$3$MediaCodecUtil(this.arg$1, obj, obj2);
            }
        });
    }

    public static void warmDecoderInfoCache(String str, boolean z, boolean z2) {
        try {
            getDecoderInfos(str, z, z2);
        } catch (DecoderQueryException e) {
            Log.m37486e(TAG, "Codec warming failed", e);
        }
    }
}
