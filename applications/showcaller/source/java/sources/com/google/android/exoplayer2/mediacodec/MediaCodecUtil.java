package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
@SuppressLint({"InlinedApi"})
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {

    /* renamed from: c */
    private static final SparseIntArray f16053c;

    /* renamed from: d */
    private static final SparseIntArray f16054d;

    /* renamed from: e */
    private static final SparseIntArray f16055e;

    /* renamed from: f */
    private static final SparseIntArray f16056f;

    /* renamed from: g */
    private static final Map<String, Integer> f16057g;

    /* renamed from: h */
    private static final Map<String, Integer> f16058h;

    /* renamed from: i */
    private static final Map<String, Integer> f16059i;

    /* renamed from: j */
    private static final SparseIntArray f16060j;

    /* renamed from: k */
    private static final SparseIntArray f16061k;

    /* renamed from: a */
    private static final Pattern f16051a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    private static final HashMap<C5106b, List<C5115e>> f16052b = new HashMap<>();

    /* renamed from: l */
    private static int f16062l = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$b.class */
    public static final class C5106b {

        /* renamed from: a */
        public final String f16063a;

        /* renamed from: b */
        public final boolean f16064b;

        /* renamed from: c */
        public final boolean f16065c;

        public C5106b(String str, boolean z, boolean z2) {
            this.f16063a = str;
            this.f16064b = z;
            this.f16065c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C5106b.class) {
                return false;
            }
            C5106b c5106b = (C5106b) obj;
            if (!TextUtils.equals(this.f16063a, c5106b.f16063a) || this.f16064b != c5106b.f16064b || this.f16065c != c5106b.f16065c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f16063a.hashCode();
            int i = 1231;
            int i2 = this.f16064b ? 1231 : 1237;
            if (!this.f16065c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$c.class */
    public interface AbstractC5107c {
        /* renamed from: a */
        MediaCodecInfo mo20433a(int i);

        /* renamed from: b */
        boolean mo20432b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: c */
        boolean mo20431c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: d */
        int mo20430d();

        /* renamed from: e */
        boolean mo20429e();
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$d.class */
    public static final class C5108d implements AbstractC5107c {
        private C5108d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: a */
        public MediaCodecInfo mo20433a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: b */
        public boolean mo20432b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: c */
        public boolean mo20431c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: d */
        public int mo20430d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: e */
        public boolean mo20429e() {
            return false;
        }
    }

    @TargetApi(21)
    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$e.class */
    public static final class C5109e implements AbstractC5107c {

        /* renamed from: a */
        private final int f16066a;

        /* renamed from: b */
        private MediaCodecInfo[] f16067b;

        public C5109e(boolean z, boolean z2) {
            this.f16066a = (z || z2) ? 1 : 0;
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        /* renamed from: f */
        private void m20428f() {
            if (this.f16067b == null) {
                this.f16067b = new MediaCodecList(this.f16066a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: a */
        public MediaCodecInfo mo20433a(int i) {
            m20428f();
            return this.f16067b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: b */
        public boolean mo20432b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: c */
        public boolean mo20431c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: d */
        public int mo20430d() {
            m20428f();
            return this.f16067b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c
        /* renamed from: e */
        public boolean mo20429e() {
            return true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$f.class */
    public interface AbstractC5110f<T> {
        /* renamed from: a */
        int mo20427a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f16053c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f16054d = sparseIntArray2;
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
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        f16055e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f16056f = sparseIntArray4;
        sparseIntArray4.put(10, 1);
        sparseIntArray4.put(11, 2);
        sparseIntArray4.put(20, 4);
        sparseIntArray4.put(21, 8);
        sparseIntArray4.put(30, 16);
        sparseIntArray4.put(31, 32);
        sparseIntArray4.put(40, 64);
        sparseIntArray4.put(41, 128);
        sparseIntArray4.put(50, 256);
        sparseIntArray4.put(51, 512);
        sparseIntArray4.put(60, 2048);
        sparseIntArray4.put(61, 4096);
        sparseIntArray4.put(62, 8192);
        HashMap hashMap = new HashMap();
        f16057g = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", 256);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        hashMap.put("L150", 16384);
        hashMap.put("L153", 65536);
        hashMap.put("L156", 262144);
        hashMap.put("L180", 1048576);
        hashMap.put("L183", 4194304);
        hashMap.put("L186", 16777216);
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", 512);
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", 524288);
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        f16058h = hashMap2;
        hashMap2.put("00", 1);
        hashMap2.put("01", 2);
        hashMap2.put("02", 4);
        hashMap2.put("03", 8);
        hashMap2.put("04", 16);
        hashMap2.put("05", 32);
        hashMap2.put("06", 64);
        hashMap2.put("07", 128);
        hashMap2.put("08", 256);
        hashMap2.put("09", 512);
        HashMap hashMap3 = new HashMap();
        f16059i = hashMap3;
        hashMap3.put("01", 1);
        hashMap3.put("02", 2);
        hashMap3.put("03", 4);
        hashMap3.put("04", 8);
        hashMap3.put("05", 16);
        hashMap3.put("06", 32);
        hashMap3.put("07", 64);
        hashMap3.put("08", 128);
        hashMap3.put("09", 256);
        SparseIntArray sparseIntArray5 = new SparseIntArray();
        f16060j = sparseIntArray5;
        sparseIntArray5.put(0, 1);
        sparseIntArray5.put(1, 2);
        sparseIntArray5.put(2, 4);
        sparseIntArray5.put(3, 8);
        sparseIntArray5.put(4, 16);
        sparseIntArray5.put(5, 32);
        sparseIntArray5.put(6, 64);
        sparseIntArray5.put(7, 128);
        sparseIntArray5.put(8, 256);
        sparseIntArray5.put(9, 512);
        sparseIntArray5.put(10, 1024);
        sparseIntArray5.put(11, 2048);
        sparseIntArray5.put(12, 4096);
        sparseIntArray5.put(13, 8192);
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
        f16061k = sparseIntArray6;
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

    /* renamed from: A */
    public static /* synthetic */ int m20462A(AbstractC5110f abstractC5110f, Object obj, Object obj2) {
        return abstractC5110f.mo20427a(obj2) - abstractC5110f.mo20427a(obj);
    }

    /* renamed from: B */
    public static int m20461B() {
        if (f16062l == -1) {
            int i = 0;
            C5115e m20451i = m20451i("video/avc", false, false);
            if (m20451i != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m20451i.m20421f()) {
                    i2 = Math.max(m20458b(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, C5515h0.f17876a >= 21 ? 345600 : 172800);
            }
            f16062l = i;
        }
        return f16062l;
    }

    /* renamed from: C */
    private static <T> void m20460C(List<T> list, final AbstractC5110f<T> abstractC5110f) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.m20462A(MediaCodecUtil.AbstractC5110f.this, obj, obj2);
            }
        });
    }

    /* renamed from: a */
    private static void m20459a(String str, List<C5115e> list) {
        if ("audio/raw".equals(str)) {
            if (C5515h0.f17876a < 26 && C5515h0.f17877b.equals("R9") && list.size() == 1 && list.get(0).f16072a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(C5115e.m20404w("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            m20460C(list, C5111a.f16068a);
        }
        int i = C5515h0.f17876a;
        if (i < 21 && list.size() > 1) {
            String str2 = list.get(0).f16072a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                m20460C(list, C5112b.f16069a);
            }
        }
        if (i >= 30 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f16072a)) {
            return;
        }
        list.add(list.remove(0));
    }

    /* renamed from: b */
    private static int m20458b(int i) {
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

    /* renamed from: c */
    private static boolean m20457c(String str) {
        boolean z;
        if (C5515h0.f17876a <= 22) {
            String str2 = C5515h0.f17879d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    private static Pair<Integer, Integer> m20456d(String str, String[] strArr) {
        if (strArr.length != 3) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(C5529r.m18731f(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = f16061k.get(Integer.parseInt(strArr[2]), -1);
            if (i == -1) {
                return null;
            }
            return new Pair<>(Integer.valueOf(i), 0);
        } catch (NumberFormatException e) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
    }

    /* renamed from: e */
    private static Pair<Integer, Integer> m20455e(String str, String[] strArr, ColorInfo colorInfo) {
        int i;
        if (strArr.length < 4) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i2 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                C5526o.m18742f("MediaCodecUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                C5526o.m18742f("MediaCodecUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            } else {
                if (parseInt3 != 8) {
                    i2 = (colorInfo == null || !(colorInfo.f17968g != null || (i = colorInfo.f17967f) == 7 || i == 6)) ? 2 : 4096;
                }
                int i3 = f16060j.get(parseInt2, -1);
                if (i3 != -1) {
                    return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
                }
                C5526o.m18742f("MediaCodecUtil", "Unknown AV1 level: " + parseInt2);
                return null;
            }
        } catch (NumberFormatException e) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    /* renamed from: f */
    private static Pair<Integer, Integer> m20454f(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length < 3) {
                C5526o.m18742f("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            } else {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            }
            int i3 = f16053c.get(i2, -1);
            if (i3 == -1) {
                C5526o.m18742f("MediaCodecUtil", "Unknown AVC profile: " + i2);
                return null;
            }
            int i4 = f16054d.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            C5526o.m18742f("MediaCodecUtil", "Unknown AVC level: " + i);
            return null;
        } catch (NumberFormatException e) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    /* renamed from: g */
    private static String m20453g(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!m20443q(mediaCodecInfo, str, z, str2)) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f5, code lost:
        if (r0.equals("av01") == false) goto L11;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m20452h(com.google.android.exoplayer2.Format r4) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m20452h(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    /* renamed from: i */
    public static C5115e m20451i(String str, boolean z, boolean z2) {
        List<C5115e> m20450j = m20450j(str, z, z2);
        return m20450j.isEmpty() ? null : m20450j.get(0);
    }

    /* renamed from: j */
    public static List<C5115e> m20450j(String str, boolean z, boolean z2) {
        synchronized (MediaCodecUtil.class) {
            try {
                C5106b c5106b = new C5106b(str, z, z2);
                HashMap<C5106b, List<C5115e>> hashMap = f16052b;
                List<C5115e> list = hashMap.get(c5106b);
                if (list != null) {
                    return list;
                }
                int i = C5515h0.f17876a;
                ArrayList<C5115e> m20449k = m20449k(c5106b, i >= 21 ? new C5109e(z, z2) : new C5108d());
                ArrayList<C5115e> arrayList = m20449k;
                if (z) {
                    arrayList = m20449k;
                    if (m20449k.isEmpty()) {
                        arrayList = m20449k;
                        if (21 <= i) {
                            arrayList = m20449k;
                            if (i <= 23) {
                                ArrayList<C5115e> m20449k2 = m20449k(c5106b, new C5108d());
                                arrayList = m20449k2;
                                if (!m20449k2.isEmpty()) {
                                    C5526o.m18742f("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + m20449k2.get(0).f16072a);
                                    arrayList = m20449k2;
                                }
                            }
                        }
                    }
                }
                m20459a(str, arrayList);
                List<C5115e> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c5106b, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x010d, code lost:
        if (r11.f16064b == false) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01ae A[Catch: Exception -> 0x0227, TRY_ENTER, TryCatch #4 {Exception -> 0x0227, blocks: (B:2:0x0000, B:6:0x002a, B:52:0x01a2, B:55:0x01ae, B:57:0x01b5, B:58:0x01e4, B:59:0x01ea, B:60:0x0224), top: B:74:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ea A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.C5115e> m20449k(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.C5106b r11, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5107c r12) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m20449k(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c):java.util.ArrayList");
    }

    /* renamed from: l */
    public static List<C5115e> m20448l(List<C5115e> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        m20460C(arrayList, new AbstractC5110f() { // from class: com.google.android.exoplayer2.mediacodec.c
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC5110f
            /* renamed from: a */
            public final int mo20427a(Object obj) {
                return MediaCodecUtil.m20434z(Format.this, (C5115e) obj);
            }
        });
        return arrayList;
    }

    /* renamed from: m */
    private static Pair<Integer, Integer> m20447m(String str, String[] strArr) {
        if (strArr.length < 3) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f16051a.matcher(strArr[1]);
        if (!matcher.matches()) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer num = f16058h.get(group);
        if (num == null) {
            C5526o.m18742f("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = f16059i.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        C5526o.m18742f("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    /* renamed from: n */
    private static Pair<Integer, Integer> m20446n(String str, String[] strArr) {
        if (strArr.length < 4) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i = 1;
        Matcher matcher = f16051a.matcher(strArr[1]);
        if (!matcher.matches()) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (!"2".equals(group)) {
                C5526o.m18742f("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer num = f16057g.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        C5526o.m18742f("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    /* renamed from: o */
    public static C5115e m20445o() {
        C5115e m20451i = m20451i("audio/raw", false, false);
        return m20451i == null ? null : C5115e.m20403x(m20451i.f16072a);
    }

    /* renamed from: p */
    private static Pair<Integer, Integer> m20444p(String str, String[] strArr) {
        if (strArr.length < 3) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = f16055e.get(parseInt, -1);
            if (i == -1) {
                C5526o.m18742f("MediaCodecUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int i2 = f16056f.get(parseInt2, -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            C5526o.m18742f("MediaCodecUtil", "Unknown VP9 level: " + parseInt2);
            return null;
        } catch (NumberFormatException e) {
            C5526o.m18742f("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    /* renamed from: q */
    private static boolean m20443q(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (!mediaCodecInfo.isEncoder()) {
            if (!z && str.endsWith(".secure")) {
                return false;
            }
            int i = C5515h0.f17876a;
            if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
                return false;
            }
            if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = C5515h0.f17877b;
                if ("a70".equals(str3)) {
                    return false;
                }
                if ("Xiaomi".equals(C5515h0.f17878c) && str3.startsWith("HM")) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = C5515h0.f17877b;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = C5515h0.f17877b;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(C5515h0.f17878c))) {
                String str6 = C5515h0.f17877b;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(C5515h0.f17878c)) {
                String str7 = C5515h0.f17877b;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i <= 19 && C5515h0.f17877b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return !"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    /* renamed from: r */
    private static boolean m20442r(MediaCodecInfo mediaCodecInfo) {
        return C5515h0.f17876a >= 29 ? m20441s(mediaCodecInfo) : !m20440t(mediaCodecInfo);
    }

    @TargetApi(29)
    /* renamed from: s */
    private static boolean m20441s(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r0.startsWith("c2.") == false) goto L27;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m20440t(android.media.MediaCodecInfo r3) {
        /*
            int r0 = com.google.android.exoplayer2.util.C5515h0.f17876a
            r1 = 29
            if (r0 < r1) goto Ld
            r0 = r3
            boolean r0 = m20439u(r0)
            return r0
        Ld:
            r0 = r3
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = com.google.android.exoplayer2.util.C5515h0.m18804u0(r0)
            r3 = r0
            r0 = r3
            java.lang.String r1 = "arc."
            boolean r0 = r0.startsWith(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L25
            r0 = 0
            return r0
        L25:
            r0 = r3
            java.lang.String r1 = "omx.google."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L83
            r0 = r3
            java.lang.String r1 = "omx.ffmpeg."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L83
            r0 = r3
            java.lang.String r1 = "omx.sec."
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L4d
            r0 = r3
            java.lang.String r1 = ".sw."
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L83
        L4d:
            r0 = r3
            java.lang.String r1 = "omx.qcom.video.decoder.hevcswvdec"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L83
            r0 = r3
            java.lang.String r1 = "c2.android."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L83
            r0 = r3
            java.lang.String r1 = "c2.google."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L83
            r0 = r5
            r4 = r0
            r0 = r3
            java.lang.String r1 = "omx."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L85
            r0 = r5
            r4 = r0
            r0 = r3
            java.lang.String r1 = "c2."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L85
        L83:
            r0 = 1
            r4 = r0
        L85:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m20440t(android.media.MediaCodecInfo):boolean");
    }

    @TargetApi(29)
    /* renamed from: u */
    private static boolean m20439u(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    /* renamed from: v */
    private static boolean m20438v(MediaCodecInfo mediaCodecInfo) {
        if (C5515h0.f17876a >= 29) {
            return m20437w(mediaCodecInfo);
        }
        String m18804u0 = C5515h0.m18804u0(mediaCodecInfo.getName());
        return !m18804u0.startsWith("omx.google.") && !m18804u0.startsWith("c2.android.") && !m18804u0.startsWith("c2.google.");
    }

    @TargetApi(29)
    /* renamed from: w */
    private static boolean m20437w(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* renamed from: x */
    public static /* synthetic */ int m20436x(C5115e c5115e) {
        String str = c5115e.f16072a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (C5515h0.f17876a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: y */
    public static /* synthetic */ int m20435y(C5115e c5115e) {
        return c5115e.f16072a.startsWith("OMX.google") ? 1 : 0;
    }

    /* renamed from: z */
    public static /* synthetic */ int m20434z(Format format, C5115e c5115e) {
        try {
            return c5115e.m20415l(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }
}
