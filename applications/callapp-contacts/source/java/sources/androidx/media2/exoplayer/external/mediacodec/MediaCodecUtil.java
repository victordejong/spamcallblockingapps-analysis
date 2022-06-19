package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
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

    /* renamed from: c */
    private static final SparseIntArray f6631c;

    /* renamed from: d */
    private static final SparseIntArray f6632d;

    /* renamed from: e */
    private static final SparseIntArray f6633e;

    /* renamed from: f */
    private static final SparseIntArray f6634f;

    /* renamed from: g */
    private static final Map<String, Integer> f6635g;

    /* renamed from: h */
    private static final Map<String, Integer> f6636h;

    /* renamed from: i */
    private static final Map<String, Integer> f6637i;

    /* renamed from: j */
    private static final SparseIntArray f6638j;

    /* renamed from: k */
    private static final SparseIntArray f6639k;

    /* renamed from: a */
    private static final Pattern f6629a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    private static final HashMap<C1654a, List<C1659a>> f6630b = new HashMap<>();

    /* renamed from: l */
    private static int f6640l = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a.class */
    public static final class C1654a {

        /* renamed from: a */
        public final String f6641a;

        /* renamed from: b */
        public final boolean f6642b;

        /* renamed from: c */
        public final boolean f6643c;

        public C1654a(String str, boolean z, boolean z2) {
            this.f6641a = str;
            this.f6642b = z;
            this.f6643c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C1654a.class) {
                return false;
            }
            C1654a c1654a = (C1654a) obj;
            return TextUtils.equals(this.f6641a, c1654a.f6641a) && this.f6642b == c1654a.f6642b && this.f6643c == c1654a.f6643c;
        }

        public final int hashCode() {
            String str = this.f6641a;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.f6642b ? 1231 : 1237;
            if (!this.f6643c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b.class */
    public interface AbstractC1655b {
        /* renamed from: a */
        int mo42434a();

        /* renamed from: a */
        MediaCodecInfo mo42433a(int i);

        /* renamed from: a */
        boolean mo42432a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: a */
        boolean mo42431a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        boolean mo42430b();
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c.class */
    public static final class C1656c implements AbstractC1655b {
        private C1656c() {
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final int mo42434a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final MediaCodecInfo mo42433a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final boolean mo42432a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final boolean mo42431a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: b */
        public final boolean mo42430b() {
            return false;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d.class */
    public static final class C1657d implements AbstractC1655b {

        /* renamed from: a */
        private final int f6644a;

        /* renamed from: b */
        private MediaCodecInfo[] f6645b;

        public C1657d(boolean z, boolean z2) {
            this.f6644a = (z || z2) ? 1 : 0;
        }

        /* renamed from: c */
        private void m42429c() {
            if (this.f6645b == null) {
                this.f6645b = new MediaCodecList(this.f6644a).getCodecInfos();
            }
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final int mo42434a() {
            m42429c();
            return this.f6645b.length;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final MediaCodecInfo mo42433a(int i) {
            m42429c();
            return this.f6645b[i];
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final boolean mo42432a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: a */
        public final boolean mo42431a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1655b
        /* renamed from: b */
        public final boolean mo42430b() {
            return true;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e.class */
    public interface AbstractC1658e<T> {
        /* renamed from: a */
        int mo42413a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6631c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f6632d = sparseIntArray2;
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
        f6633e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f6634f = sparseIntArray4;
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
        f6635g = hashMap;
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
        f6636h = hashMap2;
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
        f6637i = hashMap3;
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
        f6638j = sparseIntArray5;
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
        f6639k = sparseIntArray6;
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

    /* renamed from: a */
    public static final /* synthetic */ int m42448a(Format format, C1659a c1659a) {
        try {
            return c1659a.m42424a(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ int m42446a(AbstractC1658e abstractC1658e, Object obj, Object obj2) {
        return abstractC1658e.mo42413a(obj2) - abstractC1658e.mo42413a(obj);
    }

    /* renamed from: a */
    public static final /* synthetic */ int m42445a(C1659a c1659a) {
        return c1659a.f6646a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0112, code lost:
        if (r0.equals("av01") == false) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m42449a(androidx.media2.exoplayer.external.Format r5) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.m42449a(androidx.media2.exoplayer.external.Format):android.util.Pair");
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m42442a(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length < 3) {
                String valueOf2 = String.valueOf(str);
                C2009j.m41584a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            } else {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            }
            int i3 = f6631c.get(i2, -1);
            if (i3 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i2);
                C2009j.m41584a("MediaCodecUtil", sb.toString());
                return null;
            }
            int i4 = f6632d.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown AVC level: ");
            sb2.append(i);
            C2009j.m41584a("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf3 = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m42441a(String str, String[] strArr, ColorInfo colorInfo) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
        int i = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AV1 profile: ");
                sb.append(parseInt);
                C2009j.m41584a("MediaCodecUtil", sb.toString());
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                StringBuilder sb2 = new StringBuilder(34);
                sb2.append("Unknown AV1 bit depth: ");
                sb2.append(parseInt3);
                C2009j.m41584a("MediaCodecUtil", sb2.toString());
                return null;
            } else {
                if (parseInt3 != 8) {
                    i = (colorInfo == null || !(colorInfo.hdrStaticInfo != null || colorInfo.colorTransfer == 7 || colorInfo.colorTransfer == 6)) ? 2 : 4096;
                }
                int i2 = f6638j.get(parseInt2, -1);
                if (i2 != -1) {
                    return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
                }
                StringBuilder sb3 = new StringBuilder(30);
                sb3.append("Unknown AV1 level: ");
                sb3.append(parseInt2);
                C2009j.m41584a("MediaCodecUtil", sb3.toString());
                return null;
            }
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf2) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
    }

    /* renamed from: a */
    public static C1659a m42452a() throws DecoderQueryException {
        C1659a m42444a = m42444a("audio/raw");
        if (m42444a == null) {
            return null;
        }
        return new C1659a(m42444a.f6646a, null, null, null, true, false, true, false, false, false);
    }

    /* renamed from: a */
    private static C1659a m42444a(String str) throws DecoderQueryException {
        List<C1659a> m42443a = m42443a(str, false, false);
        if (m42443a.isEmpty()) {
            return null;
        }
        return m42443a.get(0);
    }

    /* renamed from: a */
    private static String m42450a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!(!mediaCodecInfo.isEncoder() && (z || !str.endsWith(".secure")) && ((C1996ac.f8062a >= 21 || (!"CIPAACDecoder".equals(str) && !"CIPMP3Decoder".equals(str) && !"CIPVorbisDecoder".equals(str) && !"CIPAMRNBDecoder".equals(str) && !"AACDecoder".equals(str) && !"MP3Decoder".equals(str))) && ((C1996ac.f8062a >= 18 || !"OMX.MTK.AUDIO.DECODER.AAC".equals(str) || (!"a70".equals(C1996ac.f8063b) && (!"Xiaomi".equals(C1996ac.f8064c) || !C1996ac.f8063b.startsWith("HM")))) && ((C1996ac.f8062a != 16 || !"OMX.qcom.audio.decoder.mp3".equals(str) || (!"dlxu".equals(C1996ac.f8063b) && !"protou".equals(C1996ac.f8063b) && !"ville".equals(C1996ac.f8063b) && !"villeplus".equals(C1996ac.f8063b) && !"villec2".equals(C1996ac.f8063b) && !C1996ac.f8063b.startsWith("gee") && !"C6602".equals(C1996ac.f8063b) && !"C6603".equals(C1996ac.f8063b) && !"C6606".equals(C1996ac.f8063b) && !"C6616".equals(C1996ac.f8063b) && !"L36h".equals(C1996ac.f8063b) && !"SO-02E".equals(C1996ac.f8063b))) && ((C1996ac.f8062a != 16 || !"OMX.qcom.audio.decoder.aac".equals(str) || (!"C1504".equals(C1996ac.f8063b) && !"C1505".equals(C1996ac.f8063b) && !"C1604".equals(C1996ac.f8063b) && !"C1605".equals(C1996ac.f8063b))) && ((C1996ac.f8062a >= 24 || ((!"OMX.SEC.aac.dec".equals(str) && !"OMX.Exynos.AAC.Decoder".equals(str)) || !"samsung".equals(C1996ac.f8064c) || (!C1996ac.f8063b.startsWith("zeroflte") && !C1996ac.f8063b.startsWith("zerolte") && !C1996ac.f8063b.startsWith("zenlte") && !"SC-05G".equals(C1996ac.f8063b) && !"marinelteatt".equals(C1996ac.f8063b) && !"404SC".equals(C1996ac.f8063b) && !"SC-04G".equals(C1996ac.f8063b) && !"SCV31".equals(C1996ac.f8063b)))) && ((C1996ac.f8062a > 19 || !"OMX.SEC.vp8.dec".equals(str) || !"samsung".equals(C1996ac.f8064c) || (!C1996ac.f8063b.startsWith("d2") && !C1996ac.f8063b.startsWith("serrano") && !C1996ac.f8063b.startsWith("jflte") && !C1996ac.f8063b.startsWith("santos") && !C1996ac.f8063b.startsWith("t0"))) && ((C1996ac.f8062a > 19 || !C1996ac.f8063b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str)) && (!"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str))))))))))) {
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
            if (!"OMX.RTK.video.decoder".equals(str) && !"OMX.realtek.video.decoder.tunneled".equals(str)) {
                return null;
            }
            return "video/dv_hevc";
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            return null;
        }
    }

    /* renamed from: a */
    private static ArrayList<C1659a> m42447a(C1654a c1654a, AbstractC1655b abstractC1655b) throws DecoderQueryException {
        Exception e;
        boolean z;
        boolean z2;
        try {
            ArrayList<C1659a> arrayList = new ArrayList<>();
            String str = c1654a.f6641a;
            int mo42434a = abstractC1655b.mo42434a();
            boolean mo42430b = abstractC1655b.mo42430b();
            for (int i = 0; i < mo42434a; i++) {
                MediaCodecInfo mo42433a = abstractC1655b.mo42433a(i);
                String name = mo42433a.getName();
                String m42450a = m42450a(mo42433a, name, mo42430b, str);
                if (m42450a != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mo42433a.getCapabilitiesForType(m42450a);
                        boolean mo42431a = abstractC1655b.mo42431a("tunneled-playback", m42450a, capabilitiesForType);
                        boolean mo42432a = abstractC1655b.mo42432a("tunneled-playback", capabilitiesForType);
                        if ((c1654a.f6643c || !mo42432a) && (!c1654a.f6643c || mo42431a)) {
                            boolean mo42431a2 = abstractC1655b.mo42431a("secure-playback", m42450a, capabilitiesForType);
                            boolean mo42432a2 = abstractC1655b.mo42432a("secure-playback", capabilitiesForType);
                            if ((c1654a.f6642b || !mo42432a2) && (!c1654a.f6642b || mo42431a2)) {
                                boolean isHardwareAccelerated = C1996ac.f8062a >= 29 ? mo42433a.isHardwareAccelerated() : !m42451a(mo42433a);
                                boolean m42451a = m42451a(mo42433a);
                                if (C1996ac.f8062a >= 29) {
                                    z = mo42433a.isVendor();
                                } else {
                                    String lowerCase = mo42433a.getName().toLowerCase();
                                    z = !lowerCase.startsWith("omx.google.") && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.");
                                }
                                if (C1996ac.f8062a <= 22 && ("ODROID-XU3".equals(C1996ac.f8065d) || "Nexus 10".equals(C1996ac.f8065d))) {
                                    z2 = true;
                                    if (!"OMX.Exynos.AVC.Decoder".equals(name)) {
                                        if ("OMX.Exynos.AVC.Decoder.secure".equals(name)) {
                                            z2 = true;
                                        }
                                    }
                                    if ((!mo42430b && c1654a.f6642b == mo42431a2) || !(mo42430b || c1654a.f6642b)) {
                                        try {
                                            arrayList.add(C1659a.m42420a(name, str, m42450a, capabilitiesForType, isHardwareAccelerated, m42451a, z, z2, false));
                                        } catch (Exception e2) {
                                            e = e2;
                                            if (C1996ac.f8062a > 23 || arrayList.isEmpty()) {
                                                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(m42450a).length());
                                                sb.append("Failed to query codec ");
                                                sb.append(name);
                                                sb.append(" (");
                                                sb.append(m42450a);
                                                sb.append(")");
                                                C2009j.m41580b("MediaCodecUtil", sb.toString());
                                                throw e;
                                            }
                                            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 46);
                                            sb2.append("Skipping codec ");
                                            sb2.append(name);
                                            sb2.append(" (failed to query capabilities)");
                                            C2009j.m41580b("MediaCodecUtil", sb2.toString());
                                        }
                                    } else if (!mo42430b && mo42431a2) {
                                        arrayList.add(C1659a.m42420a(String.valueOf(name).concat(".secure"), str, m42450a, capabilitiesForType, isHardwareAccelerated, m42451a, z, z2, true));
                                        return arrayList;
                                    }
                                }
                                z2 = false;
                                if (!mo42430b) {
                                }
                                if (!mo42430b) {
                                    arrayList.add(C1659a.m42420a(String.valueOf(name).concat(".secure"), str, m42450a, capabilitiesForType, isHardwareAccelerated, m42451a, z, z2, true));
                                    return arrayList;
                                }
                                continue;
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                }
            }
            return arrayList;
        } catch (Exception e4) {
            throw new DecoderQueryException(e4);
        }
    }

    /* renamed from: a */
    public static List<C1659a> m42443a(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                C1654a c1654a = new C1654a(str, z, z2);
                HashMap<C1654a, List<C1659a>> hashMap = f6630b;
                List<C1659a> list = hashMap.get(c1654a);
                if (list != null) {
                    return list;
                }
                ArrayList<C1659a> m42447a = m42447a(c1654a, C1996ac.f8062a >= 21 ? new C1657d(z, z2) : new C1656c());
                ArrayList<C1659a> arrayList = m42447a;
                if (z) {
                    arrayList = m42447a;
                    if (m42447a.isEmpty()) {
                        arrayList = m42447a;
                        if (21 <= C1996ac.f8062a) {
                            arrayList = m42447a;
                            if (C1996ac.f8062a <= 23) {
                                ArrayList<C1659a> m42447a2 = m42447a(c1654a, new C1656c());
                                arrayList = m42447a2;
                                if (!m42447a2.isEmpty()) {
                                    String str2 = m42447a2.get(0).f6646a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    C2009j.m41584a("MediaCodecUtil", sb.toString());
                                    arrayList = m42447a2;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (C1996ac.f8062a < 26 && C1996ac.f8063b.equals("R9") && arrayList.size() == 1 && arrayList.get(0).f6646a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(C1659a.m42420a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    m42439a(arrayList, C1663d.f6660a);
                } else if (C1996ac.f8062a < 21 && arrayList.size() > 1) {
                    String str3 = arrayList.get(0).f6646a;
                    if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                        m42439a(arrayList, C1664e.f6661a);
                    }
                }
                List<C1659a> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c1654a, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static List<C1659a> m42440a(List<C1659a> list, Format format) {
        ArrayList arrayList = new ArrayList(list);
        m42439a(arrayList, new AbstractC1658e(format) { // from class: androidx.media2.exoplayer.external.mediacodec.c

            /* renamed from: a */
            private final Format f6659a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6659a = format;
            }

            @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC1658e
            /* renamed from: a */
            public final int mo42413a(Object obj) {
                return MediaCodecUtil.m42448a(this.f6659a, (C1659a) obj);
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    private static <T> void m42439a(List<T> list, AbstractC1658e<T> abstractC1658e) {
        Collections.sort(list, new Comparator(abstractC1658e) { // from class: androidx.media2.exoplayer.external.mediacodec.f

            /* renamed from: a */
            private final MediaCodecUtil.AbstractC1658e f6662a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6662a = abstractC1658e;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.m42446a(this.f6662a, obj, obj2);
            }
        });
    }

    /* renamed from: a */
    private static boolean m42451a(MediaCodecInfo mediaCodecInfo) {
        if (C1996ac.f8062a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String lowerCase = mediaCodecInfo.getName().toLowerCase();
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        if (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((lowerCase.startsWith("omx.sec.") && lowerCase.contains(".sw.")) || lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) {
            return true;
        }
        return !lowerCase.startsWith("omx.") && !lowerCase.startsWith("c2.");
    }

    /* renamed from: b */
    public static int m42438b() throws DecoderQueryException {
        int i;
        if (f6640l == -1) {
            C1659a m42444a = m42444a("video/avc");
            int i2 = 0;
            if (m42444a != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m42444a.m42428a()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                continue;
                            case 64:
                                i = 202752;
                                continue;
                            case 128:
                            case PropertyFlags.INDEX_PARTIAL_SKIP_NULL /* 256 */:
                                i = 414720;
                                continue;
                            case 512:
                                i = 921600;
                                continue;
                            case 1024:
                                i = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                continue;
                            case PropertyFlags.UNSIGNED /* 8192 */:
                                i = 2228224;
                                continue;
                            case 16384:
                                i = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, C1996ac.f8062a >= 21 ? 345600 : 172800);
            }
            f6640l = i2;
        }
        return f6640l;
    }

    /* renamed from: b */
    public static final /* synthetic */ int m42437b(C1659a c1659a) {
        String str = c1659a.f6646a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (C1996ac.f8062a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: b */
    private static Pair<Integer, Integer> m42436b(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = f6633e.get(parseInt, -1);
            if (i == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                C2009j.m41584a("MediaCodecUtil", sb.toString());
                return null;
            }
            int i2 = f6634f.get(parseInt2, -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown VP9 level: ");
            sb2.append(parseInt2);
            C2009j.m41584a("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    /* renamed from: c */
    private static Pair<Integer, Integer> m42435c(String str, String[] strArr) {
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(C2012m.m41575a(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = f6639k.get(Integer.parseInt(strArr[2]), -1);
            if (i == -1) {
                return null;
            }
            return new Pair<>(Integer.valueOf(i), 0);
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            C2009j.m41584a("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
    }
}
