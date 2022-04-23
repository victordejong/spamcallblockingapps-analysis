package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.video.ColorInfo;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {

    /* renamed from: c  reason: collision with root package name */
    private static final SparseIntArray f3429c;

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f3430d;
    private static final SparseIntArray e;
    private static final SparseIntArray f;
    private static final Map<String, Integer> g;
    private static final Map<String, Integer> h;
    private static final Map<String, Integer> i;
    private static final SparseIntArray j;
    private static final SparseIntArray k;

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3427a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<a, List<androidx.media2.exoplayer.external.mediacodec.a>> f3428b = new HashMap<>();
    private static int l = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3431a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3432b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3433c;

        public a(String str, boolean z, boolean z2) {
            this.f3431a = str;
            this.f3432b = z;
            this.f3433c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f3431a, aVar.f3431a) && this.f3432b == aVar.f3432b && this.f3433c == aVar.f3433c;
        }

        public final int hashCode() {
            String str = this.f3431a;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.f3432b ? 1231 : 1237;
            if (!this.f3433c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b.class */
    public interface b {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c.class */
    public static final class c implements b {
        private c() {
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean b() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d.class */
    public static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3434a;

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f3435b;

        public d(boolean z, boolean z2) {
            this.f3434a = (z || z2) ? 1 : 0;
        }

        private void c() {
            if (this.f3435b == null) {
                this.f3435b = new MediaCodecList(this.f3434a).getCodecInfos();
            }
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final int a() {
            c();
            return this.f3435b.length;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final MediaCodecInfo a(int i) {
            c();
            return this.f3435b[i];
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.b
        public final boolean b() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e.class */
    public interface e<T> {
        int a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f3429c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f3430d = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        Integer valueOf = Integer.valueOf((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sparseIntArray2.put(30, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, PropertyFlags.UNSIGNED);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f = sparseIntArray4;
        sparseIntArray4.put(10, 1);
        sparseIntArray4.put(11, 2);
        sparseIntArray4.put(20, 4);
        sparseIntArray4.put(21, 8);
        sparseIntArray4.put(30, 16);
        sparseIntArray4.put(31, 32);
        sparseIntArray4.put(40, 64);
        sparseIntArray4.put(41, 128);
        sparseIntArray4.put(50, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sparseIntArray4.put(51, 512);
        sparseIntArray4.put(60, 2048);
        sparseIntArray4.put(61, 4096);
        sparseIntArray4.put(62, PropertyFlags.UNSIGNED);
        HashMap hashMap = new HashMap();
        g = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", valueOf);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        hashMap.put("L150", 16384);
        hashMap.put("L153", 65536);
        hashMap.put("L156", 262144);
        hashMap.put("L180", 1048576);
        hashMap.put("L183", 4194304);
        hashMap.put("L186", Integer.valueOf((int) Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE));
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", 512);
        hashMap.put("H120", 2048);
        hashMap.put("H123", Integer.valueOf((int) PropertyFlags.UNSIGNED));
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", 524288);
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        h = hashMap2;
        hashMap2.put("00", 1);
        hashMap2.put("01", 2);
        hashMap2.put("02", 4);
        hashMap2.put("03", 8);
        hashMap2.put("04", 16);
        hashMap2.put("05", 32);
        hashMap2.put("06", 64);
        hashMap2.put("07", 128);
        hashMap2.put("08", valueOf);
        hashMap2.put("09", 512);
        HashMap hashMap3 = new HashMap();
        i = hashMap3;
        hashMap3.put("01", 1);
        hashMap3.put("02", 2);
        hashMap3.put("03", 4);
        hashMap3.put("04", 8);
        hashMap3.put("05", 16);
        hashMap3.put("06", 32);
        hashMap3.put("07", 64);
        hashMap3.put("08", 128);
        hashMap3.put("09", valueOf);
        SparseIntArray sparseIntArray5 = new SparseIntArray();
        j = sparseIntArray5;
        sparseIntArray5.put(0, 1);
        sparseIntArray5.put(1, 2);
        sparseIntArray5.put(2, 4);
        sparseIntArray5.put(3, 8);
        sparseIntArray5.put(4, 16);
        sparseIntArray5.put(5, 32);
        sparseIntArray5.put(6, 64);
        sparseIntArray5.put(7, 128);
        sparseIntArray5.put(8, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sparseIntArray5.put(9, 512);
        sparseIntArray5.put(10, 1024);
        sparseIntArray5.put(11, 2048);
        sparseIntArray5.put(12, 4096);
        sparseIntArray5.put(13, PropertyFlags.UNSIGNED);
        sparseIntArray5.put(14, 16384);
        sparseIntArray5.put(15, 32768);
        sparseIntArray5.put(16, 65536);
        sparseIntArray5.put(17, 131072);
        sparseIntArray5.put(18, 262144);
        sparseIntArray5.put(19, 524288);
        sparseIntArray5.put(20, 1048576);
        sparseIntArray5.put(21, 2097152);
        sparseIntArray5.put(22, 4194304);
        sparseIntArray5.put(23, 8388608);
        SparseIntArray sparseIntArray6 = new SparseIntArray();
        k = sparseIntArray6;
        sparseIntArray6.put(1, 1);
        sparseIntArray6.put(2, 2);
        sparseIntArray6.put(3, 3);
        sparseIntArray6.put(4, 4);
        sparseIntArray6.put(5, 5);
        sparseIntArray6.put(6, 6);
        sparseIntArray6.put(17, 17);
        sparseIntArray6.put(20, 20);
        sparseIntArray6.put(23, 23);
        sparseIntArray6.put(29, 29);
        sparseIntArray6.put(39, 39);
        sparseIntArray6.put(42, 42);
    }

    private MediaCodecUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int a(Format format, androidx.media2.exoplayer.external.mediacodec.a aVar) {
        try {
            return aVar.a(format) ? 1 : 0;
        } catch (DecoderQueryException e2) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int a(e eVar, Object obj, Object obj2) {
        return eVar.a(obj2) - eVar.a(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int a(androidx.media2.exoplayer.external.mediacodec.a aVar) {
        return aVar.f3436a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0112, code lost:
        if (r0.equals("av01") == false) goto L_0x007c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(androidx.media2.exoplayer.external.Format r5) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.a(androidx.media2.exoplayer.external.Format):android.util.Pair");
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        int i2;
        int i3;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i3 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i2 = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                i3 = Integer.parseInt(strArr[1]);
                i2 = Integer.parseInt(strArr[2]);
            } else {
                String valueOf2 = String.valueOf(str);
                j.a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            int i4 = f3429c.get(i3, -1);
            if (i4 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i3);
                j.a("MediaCodecUtil", sb.toString());
                return null;
            }
            int i5 = f3430d.get(i2, -1);
            if (i5 != -1) {
                return new Pair<>(Integer.valueOf(i4), Integer.valueOf(i5));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown AVC level: ");
            sb2.append(i2);
            j.a("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e2) {
            String valueOf3 = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr, ColorInfo colorInfo) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
        int i2 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AV1 profile: ");
                sb.append(parseInt);
                j.a("MediaCodecUtil", sb.toString());
                return null;
            } else if (parseInt3 == 8 || parseInt3 == 10) {
                if (parseInt3 != 8) {
                    i2 = (colorInfo == null || !(colorInfo.hdrStaticInfo != null || colorInfo.colorTransfer == 7 || colorInfo.colorTransfer == 6)) ? 2 : 4096;
                }
                int i3 = j.get(parseInt2, -1);
                if (i3 != -1) {
                    return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
                }
                StringBuilder sb2 = new StringBuilder(30);
                sb2.append("Unknown AV1 level: ");
                sb2.append(parseInt2);
                j.a("MediaCodecUtil", sb2.toString());
                return null;
            } else {
                StringBuilder sb3 = new StringBuilder(34);
                sb3.append("Unknown AV1 bit depth: ");
                sb3.append(parseInt3);
                j.a("MediaCodecUtil", sb3.toString());
                return null;
            }
        } catch (NumberFormatException e2) {
            String valueOf2 = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf2) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
    }

    public static androidx.media2.exoplayer.external.mediacodec.a a() throws DecoderQueryException {
        androidx.media2.exoplayer.external.mediacodec.a a2 = a("audio/raw");
        if (a2 == null) {
            return null;
        }
        return new androidx.media2.exoplayer.external.mediacodec.a(a2.f3436a, null, null, null, true, false, true, false, false, false);
    }

    private static androidx.media2.exoplayer.external.mediacodec.a a(String str) throws DecoderQueryException {
        List<androidx.media2.exoplayer.external.mediacodec.a> a2 = a(str, false, false);
        if (a2.isEmpty()) {
            return null;
        }
        return a2.get(0);
    }

    private static String a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!(!mediaCodecInfo.isEncoder() && (z || !str.endsWith(".secure")) && ((ac.f4119a >= 21 || (!"CIPAACDecoder".equals(str) && !"CIPMP3Decoder".equals(str) && !"CIPVorbisDecoder".equals(str) && !"CIPAMRNBDecoder".equals(str) && !"AACDecoder".equals(str) && !"MP3Decoder".equals(str))) && ((ac.f4119a >= 18 || !"OMX.MTK.AUDIO.DECODER.AAC".equals(str) || (!"a70".equals(ac.f4120b) && (!"Xiaomi".equals(ac.f4121c) || !ac.f4120b.startsWith("HM")))) && ((ac.f4119a != 16 || !"OMX.qcom.audio.decoder.mp3".equals(str) || (!"dlxu".equals(ac.f4120b) && !"protou".equals(ac.f4120b) && !"ville".equals(ac.f4120b) && !"villeplus".equals(ac.f4120b) && !"villec2".equals(ac.f4120b) && !ac.f4120b.startsWith("gee") && !"C6602".equals(ac.f4120b) && !"C6603".equals(ac.f4120b) && !"C6606".equals(ac.f4120b) && !"C6616".equals(ac.f4120b) && !"L36h".equals(ac.f4120b) && !"SO-02E".equals(ac.f4120b))) && ((ac.f4119a != 16 || !"OMX.qcom.audio.decoder.aac".equals(str) || (!"C1504".equals(ac.f4120b) && !"C1505".equals(ac.f4120b) && !"C1604".equals(ac.f4120b) && !"C1605".equals(ac.f4120b))) && ((ac.f4119a >= 24 || ((!"OMX.SEC.aac.dec".equals(str) && !"OMX.Exynos.AAC.Decoder".equals(str)) || !"samsung".equals(ac.f4121c) || (!ac.f4120b.startsWith("zeroflte") && !ac.f4120b.startsWith("zerolte") && !ac.f4120b.startsWith("zenlte") && !"SC-05G".equals(ac.f4120b) && !"marinelteatt".equals(ac.f4120b) && !"404SC".equals(ac.f4120b) && !"SC-04G".equals(ac.f4120b) && !"SCV31".equals(ac.f4120b)))) && ((ac.f4119a > 19 || !"OMX.SEC.vp8.dec".equals(str) || !"samsung".equals(ac.f4121c) || (!ac.f4120b.startsWith("d2") && !ac.f4120b.startsWith("serrano") && !ac.f4120b.startsWith("jflte") && !ac.f4120b.startsWith("santos") && !ac.f4120b.startsWith("t0"))) && ((ac.f4119a > 19 || !ac.f4120b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str)) && (!"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str))))))))))) {
            return null;
        }
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (!str2.equals("audio/flac") || !"OMX.lge.flac.decoder".equals(str)) {
                return null;
            }
            return "audio/x-lg-flac";
        }
    }

    private static ArrayList<androidx.media2.exoplayer.external.mediacodec.a> a(a aVar, b bVar) throws DecoderQueryException {
        Exception e2;
        boolean z;
        boolean z2;
        try {
            ArrayList<androidx.media2.exoplayer.external.mediacodec.a> arrayList = new ArrayList<>();
            String str = aVar.f3431a;
            int a2 = bVar.a();
            boolean b2 = bVar.b();
            for (int i2 = 0; i2 < a2; i2++) {
                MediaCodecInfo a3 = bVar.a(i2);
                String name = a3.getName();
                String a4 = a(a3, name, b2, str);
                if (a4 != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = a3.getCapabilitiesForType(a4);
                        boolean a5 = bVar.a("tunneled-playback", a4, capabilitiesForType);
                        boolean a6 = bVar.a("tunneled-playback", capabilitiesForType);
                        if ((aVar.f3433c || !a6) && (!aVar.f3433c || a5)) {
                            boolean a7 = bVar.a("secure-playback", a4, capabilitiesForType);
                            boolean a8 = bVar.a("secure-playback", capabilitiesForType);
                            if ((aVar.f3432b || !a8) && (!aVar.f3432b || a7)) {
                                boolean isHardwareAccelerated = ac.f4119a >= 29 ? a3.isHardwareAccelerated() : !a(a3);
                                boolean a9 = a(a3);
                                if (ac.f4119a >= 29) {
                                    z = a3.isVendor();
                                } else {
                                    String lowerCase = a3.getName().toLowerCase();
                                    z = !lowerCase.startsWith("omx.google.") && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.");
                                }
                                if (ac.f4119a <= 22 && ("ODROID-XU3".equals(ac.f4122d) || "Nexus 10".equals(ac.f4122d))) {
                                    z2 = true;
                                    if (!"OMX.Exynos.AVC.Decoder".equals(name)) {
                                        if ("OMX.Exynos.AVC.Decoder.secure".equals(name)) {
                                            z2 = true;
                                        }
                                    }
                                    if ((!b2 && aVar.f3432b == a7) || !(b2 || aVar.f3432b)) {
                                        try {
                                            arrayList.add(androidx.media2.exoplayer.external.mediacodec.a.a(name, str, a4, capabilitiesForType, isHardwareAccelerated, a9, z, z2, false));
                                        } catch (Exception e3) {
                                            e2 = e3;
                                            if (ac.f4119a > 23 || arrayList.isEmpty()) {
                                                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(a4).length());
                                                sb.append("Failed to query codec ");
                                                sb.append(name);
                                                sb.append(" (");
                                                sb.append(a4);
                                                sb.append(")");
                                                j.b("MediaCodecUtil", sb.toString());
                                                throw e2;
                                            }
                                            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 46);
                                            sb2.append("Skipping codec ");
                                            sb2.append(name);
                                            sb2.append(" (failed to query capabilities)");
                                            j.b("MediaCodecUtil", sb2.toString());
                                        }
                                    } else if (b2 && a7) {
                                        arrayList.add(androidx.media2.exoplayer.external.mediacodec.a.a(String.valueOf(name).concat(".secure"), str, a4, capabilitiesForType, isHardwareAccelerated, a9, z, z2, true));
                                        return arrayList;
                                    }
                                }
                                z2 = false;
                                if (!b2) {
                                }
                                if (b2) {
                                    continue;
                                } else {
                                    arrayList.add(androidx.media2.exoplayer.external.mediacodec.a.a(String.valueOf(name).concat(".secure"), str, a4, capabilitiesForType, isHardwareAccelerated, a9, z, z2, true));
                                    return arrayList;
                                }
                            }
                        }
                    } catch (Exception e4) {
                        e2 = e4;
                    }
                }
            }
            return arrayList;
        } catch (Exception e5) {
            throw new DecoderQueryException(e5);
        }
    }

    public static List<androidx.media2.exoplayer.external.mediacodec.a> a(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                a aVar = new a(str, z, z2);
                HashMap<a, List<androidx.media2.exoplayer.external.mediacodec.a>> hashMap = f3428b;
                List<androidx.media2.exoplayer.external.mediacodec.a> list = hashMap.get(aVar);
                if (list != null) {
                    return list;
                }
                ArrayList<androidx.media2.exoplayer.external.mediacodec.a> a2 = a(aVar, ac.f4119a >= 21 ? new d(z, z2) : new c());
                ArrayList<androidx.media2.exoplayer.external.mediacodec.a> arrayList = a2;
                if (z) {
                    arrayList = a2;
                    if (a2.isEmpty()) {
                        arrayList = a2;
                        if (21 <= ac.f4119a) {
                            arrayList = a2;
                            if (ac.f4119a <= 23) {
                                ArrayList<androidx.media2.exoplayer.external.mediacodec.a> a3 = a(aVar, new c());
                                arrayList = a3;
                                if (!a3.isEmpty()) {
                                    String str2 = a3.get(0).f3436a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    j.a("MediaCodecUtil", sb.toString());
                                    arrayList = a3;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (ac.f4119a < 26 && ac.f4120b.equals("R9") && arrayList.size() == 1 && arrayList.get(0).f3436a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(androidx.media2.exoplayer.external.mediacodec.a.a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    a(arrayList, androidx.media2.exoplayer.external.mediacodec.d.f3442a);
                } else if (ac.f4119a < 21 && arrayList.size() > 1) {
                    String str3 = arrayList.get(0).f3436a;
                    if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                        a(arrayList, androidx.media2.exoplayer.external.mediacodec.e.f3443a);
                    }
                }
                List<androidx.media2.exoplayer.external.mediacodec.a> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(aVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<androidx.media2.exoplayer.external.mediacodec.a> a(List<androidx.media2.exoplayer.external.mediacodec.a> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        a(arrayList, new e(format) { // from class: androidx.media2.exoplayer.external.mediacodec.c

            /* renamed from: a  reason: collision with root package name */
            private final Format f3441a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3441a = format;
            }

            @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.e
            public final int a(Object obj) {
                return MediaCodecUtil.a(this.f3441a, (a) obj);
            }
        });
        return arrayList;
    }

    private static <T> void a(List<T> list, final e<T> eVar) {
        Collections.sort(list, new Comparator(eVar) { // from class: androidx.media2.exoplayer.external.mediacodec.f

            /* renamed from: a  reason: collision with root package name */
            private final MediaCodecUtil.e f3444a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3444a = eVar;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.a(this.f3444a, obj, obj2);
            }
        });
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo) {
        if (ac.f4119a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String lowerCase = mediaCodecInfo.getName().toLowerCase();
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        if (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((!lowerCase.startsWith("omx.sec.") || !lowerCase.contains(".sw.")) && !lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.")) {
            return !lowerCase.startsWith("omx.") && !lowerCase.startsWith("c2.");
        }
        return true;
    }

    public static int b() throws DecoderQueryException {
        int i2;
        if (l == -1) {
            androidx.media2.exoplayer.external.mediacodec.a a2 = a("video/avc");
            int i3 = 0;
            if (a2 != null) {
                int i4 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a2.a()) {
                    int i5 = codecProfileLevel.level;
                    if (i5 == 1 || i5 == 2) {
                        i2 = 25344;
                    } else {
                        switch (i5) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                continue;
                            case 64:
                                i2 = 202752;
                                continue;
                            case 128:
                            case PropertyFlags.INDEX_PARTIAL_SKIP_NULL /* 256 */:
                                i2 = 414720;
                                continue;
                            case 512:
                                i2 = 921600;
                                continue;
                            case 1024:
                                i2 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                continue;
                            case PropertyFlags.UNSIGNED /* 8192 */:
                                i2 = 2228224;
                                continue;
                            case 16384:
                                i2 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i2 = 9437184;
                                continue;
                            default:
                                i2 = -1;
                                continue;
                        }
                    }
                    i4 = Math.max(i2, i4);
                }
                i3 = Math.max(i4, ac.f4119a >= 21 ? 345600 : 172800);
            }
            l = i3;
        }
        return l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int b(androidx.media2.exoplayer.external.mediacodec.a aVar) {
        String str = aVar.f3436a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (ac.f4119a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i2 = e.get(parseInt, -1);
            if (i2 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                j.a("MediaCodecUtil", sb.toString());
                return null;
            }
            int i3 = f.get(parseInt2, -1);
            if (i3 != -1) {
                return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown VP9 level: ");
            sb2.append(parseInt2);
            j.a("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e2) {
            String valueOf2 = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    private static Pair<Integer, Integer> c(String str, String[] strArr) {
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(m.a(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i2 = k.get(Integer.parseInt(strArr[2]), -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i2), 0);
            }
            return null;
        } catch (NumberFormatException e2) {
            String valueOf2 = String.valueOf(str);
            j.a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
    }
}
