package p193e.p1577m.p1578a.p1596c.p1612h1;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24451h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.h1.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h.class */
public final class C24451h {

    /* renamed from: c */
    public static final SparseIntArray f68285c;

    /* renamed from: d */
    public static final SparseIntArray f68286d;

    /* renamed from: e */
    public static final SparseIntArray f68287e;

    /* renamed from: f */
    public static final SparseIntArray f68288f;

    /* renamed from: g */
    public static final Map<String, Integer> f68289g;

    /* renamed from: h */
    public static final Map<String, Integer> f68290h;

    /* renamed from: i */
    public static final Map<String, Integer> f68291i;

    /* renamed from: j */
    public static final SparseIntArray f68292j;

    /* renamed from: k */
    public static final SparseIntArray f68293k;

    /* renamed from: a */
    public static final Pattern f68283a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<C24453b, List<C24446e>> f68284b = new HashMap<>();

    /* renamed from: l */
    public static int f68294l = -1;

    /* renamed from: e.m.a.c.h1.h$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$b.class */
    public static final class C24453b {

        /* renamed from: a */
        public final String f68295a;

        /* renamed from: b */
        public final boolean f68296b;

        /* renamed from: c */
        public final boolean f68297c;

        public C24453b(String str, boolean z, boolean z2) {
            this.f68295a = str;
            this.f68296b = z;
            this.f68297c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C24453b.class) {
                return false;
            }
            C24453b c24453b = (C24453b) obj;
            if (!TextUtils.equals(this.f68295a, c24453b.f68295a) || this.f68296b != c24453b.f68296b || this.f68297c != c24453b.f68297c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int m8579q2 = C22128a.m8579q2(this.f68295a, 31, 31);
            int i = 1231;
            int i2 = this.f68296b ? 1231 : 1237;
            if (!this.f68297c) {
                i = 1237;
            }
            return ((m8579q2 + i2) * 31) + i;
        }
    }

    /* renamed from: e.m.a.c.h1.h$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$c.class */
    public static class C24454c extends Exception {
        public C24454c(Throwable th, C24452a c24452a) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: e.m.a.c.h1.h$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$d.class */
    public interface AbstractC24455d {
        /* renamed from: a */
        boolean mo5081a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        MediaCodecInfo mo5080b(int i);

        /* renamed from: c */
        boolean mo5079c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: d */
        int mo5078d();

        /* renamed from: e */
        boolean mo5077e();
    }

    /* renamed from: e.m.a.c.h1.h$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$e.class */
    public static final class C24456e implements AbstractC24455d {
        public C24456e(C24452a c24452a) {
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: a */
        public boolean mo5081a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: b */
        public MediaCodecInfo mo5080b(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: c */
        public boolean mo5079c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: d */
        public int mo5078d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: e */
        public boolean mo5077e() {
            return false;
        }
    }

    /* renamed from: e.m.a.c.h1.h$f */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$f.class */
    public static final class C24457f implements AbstractC24455d {

        /* renamed from: a */
        public final int f68298a;

        /* renamed from: b */
        public MediaCodecInfo[] f68299b;

        public C24457f(boolean z, boolean z2) {
            this.f68298a = (z || z2) ? 1 : 0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: a */
        public boolean mo5081a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: b */
        public MediaCodecInfo mo5080b(int i) {
            if (this.f68299b == null) {
                this.f68299b = new MediaCodecList(this.f68298a).getCodecInfos();
            }
            return this.f68299b[i];
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: c */
        public boolean mo5079c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: d */
        public int mo5078d() {
            if (this.f68299b == null) {
                this.f68299b = new MediaCodecList(this.f68298a).getCodecInfos();
            }
            return this.f68299b.length;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24455d
        /* renamed from: e */
        public boolean mo5077e() {
            return true;
        }
    }

    /* renamed from: e.m.a.c.h1.h$g */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/h$g.class */
    public interface AbstractC24458g<T> {
        /* renamed from: a */
        int mo5076a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f68285c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f68286d = sparseIntArray2;
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
        f68287e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f68288f = sparseIntArray4;
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
        f68289g = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", 256);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        C22128a.m8609j0(16384, hashMap, "L150", 65536, "L153", 262144, "L156", 1048576, "L180");
        hashMap.put("L183", 4194304);
        hashMap.put("L186", 16777216);
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", 512);
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        C22128a.m8609j0(32768, hashMap, "H150", 131072, "H153", 524288, "H156", 2097152, "H180");
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        f68290h = hashMap2;
        hashMap2.put("00", 1);
        hashMap2.put(HiAnalyticsConstant.KeyAndValue.NUMBER_01, 2);
        hashMap2.put("02", 4);
        hashMap2.put("03", 8);
        hashMap2.put("04", 16);
        hashMap2.put("05", 32);
        hashMap2.put("06", 64);
        hashMap2.put("07", 128);
        hashMap2.put("08", 256);
        hashMap2.put("09", 512);
        HashMap hashMap3 = new HashMap();
        f68291i = hashMap3;
        hashMap3.put(HiAnalyticsConstant.KeyAndValue.NUMBER_01, 1);
        hashMap3.put("02", 2);
        hashMap3.put("03", 4);
        hashMap3.put("04", 8);
        hashMap3.put("05", 16);
        hashMap3.put("06", 32);
        hashMap3.put("07", 64);
        hashMap3.put("08", 128);
        hashMap3.put("09", 256);
        SparseIntArray sparseIntArray5 = new SparseIntArray();
        f68292j = sparseIntArray5;
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
        f68293k = sparseIntArray6;
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

    /* renamed from: a */
    public static void m5091a(String str, List<C24446e> list) {
        if ("audio/raw".equals(str)) {
            if (C24773d0.f69427a < 26 && C24773d0.f69428b.equals("R9") && list.size() == 1 && list.get(0).f68209a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(C24446e.m5112h("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            m5082j(list, C24442a.f68205a);
        }
        int i = C24773d0.f69427a;
        if (i < 21 && list.size() > 1) {
            String str2 = list.get(0).f68209a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                m5082j(list, C24443b.f68206a);
            }
        }
        if (i >= 30 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f68209a)) {
            return;
        }
        list.add(list.remove(0));
    }

    /* renamed from: b */
    public static String m5090b(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
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
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03e0, code lost:
        if (r0 == 6) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02a2, code lost:
        if ("2".equals(r0) != false) goto L85;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m5089c(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.m5089c(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    /* renamed from: d */
    public static C24446e m5088d(String str, boolean z, boolean z2) throws C24454c {
        List<C24446e> m5087e = m5087e(str, z, z2);
        return m5087e.isEmpty() ? null : m5087e.get(0);
    }

    /* renamed from: e */
    public static List<C24446e> m5087e(String str, boolean z, boolean z2) throws C24454c {
        synchronized (C24451h.class) {
            try {
                C24453b c24453b = new C24453b(str, z, z2);
                HashMap<C24453b, List<C24446e>> hashMap = f68284b;
                List<C24446e> list = hashMap.get(c24453b);
                if (list != null) {
                    return list;
                }
                int i = C24773d0.f69427a;
                ArrayList<C24446e> m5086f = m5086f(c24453b, i >= 21 ? new C24457f(z, z2) : new C24456e(null));
                ArrayList<C24446e> arrayList = m5086f;
                if (z) {
                    arrayList = m5086f;
                    if (m5086f.isEmpty()) {
                        arrayList = m5086f;
                        if (21 <= i) {
                            arrayList = m5086f;
                            if (i <= 23) {
                                ArrayList<C24446e> m5086f2 = m5086f(c24453b, new C24456e(null));
                                arrayList = m5086f2;
                                if (!m5086f2.isEmpty()) {
                                    String str2 = m5086f2.get(0).f68209a;
                                    arrayList = m5086f2;
                                }
                            }
                        }
                    }
                }
                m5091a(str, arrayList);
                List<C24446e> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c24453b, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static ArrayList<C24446e> m5086f(C24453b c24453b, AbstractC24455d abstractC24455d) throws C24454c {
        String m5090b;
        Exception e;
        boolean z;
        boolean z2;
        try {
            ArrayList<C24446e> arrayList = new ArrayList<>();
            String str = c24453b.f68295a;
            int mo5078d = abstractC24455d.mo5078d();
            boolean mo5077e = abstractC24455d.mo5077e();
            for (int i = 0; i < mo5078d; i++) {
                MediaCodecInfo mo5080b = abstractC24455d.mo5080b(i);
                int i2 = C24773d0.f69427a;
                if (!(i2 >= 29 && mo5080b.isAlias())) {
                    String name = mo5080b.getName();
                    if (m5085g(mo5080b, name, mo5077e, str) && (m5090b = m5090b(mo5080b, name, str)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mo5080b.getCapabilitiesForType(m5090b);
                            boolean mo5079c = abstractC24455d.mo5079c("tunneled-playback", m5090b, capabilitiesForType);
                            boolean mo5081a = abstractC24455d.mo5081a("tunneled-playback", m5090b, capabilitiesForType);
                            boolean z3 = c24453b.f68297c;
                            if ((z3 || !mo5081a) && (!z3 || mo5079c)) {
                                boolean mo5079c2 = abstractC24455d.mo5079c("secure-playback", m5090b, capabilitiesForType);
                                boolean mo5081a2 = abstractC24455d.mo5081a("secure-playback", m5090b, capabilitiesForType);
                                boolean z4 = c24453b.f68296b;
                                if ((z4 || !mo5081a2) && (!z4 || mo5079c2)) {
                                    boolean isHardwareAccelerated = i2 >= 29 ? mo5080b.isHardwareAccelerated() : !m5084h(mo5080b);
                                    boolean m5084h = m5084h(mo5080b);
                                    if (i2 >= 29) {
                                        z = mo5080b.isVendor();
                                    } else {
                                        String m4626D = C24773d0.m4626D(mo5080b.getName());
                                        z = !m4626D.startsWith("omx.google.") && !m4626D.startsWith("c2.android.") && !m4626D.startsWith("c2.google.");
                                    }
                                    if (i2 <= 22) {
                                        String str2 = C24773d0.f69430d;
                                        if ("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) {
                                            z2 = true;
                                            if (!"OMX.Exynos.AVC.Decoder".equals(name)) {
                                                if ("OMX.Exynos.AVC.Decoder.secure".equals(name)) {
                                                    z2 = true;
                                                }
                                            }
                                            if ((!mo5077e && c24453b.f68296b == mo5079c2) || !(mo5077e || c24453b.f68296b)) {
                                                try {
                                                    arrayList.add(C24446e.m5112h(name, str, m5090b, capabilitiesForType, isHardwareAccelerated, m5084h, z, z2, false));
                                                } catch (Exception e2) {
                                                    e = e2;
                                                    if (C24773d0.f69427a > 23 || arrayList.isEmpty()) {
                                                        throw e;
                                                    }
                                                }
                                            } else if (!mo5077e && mo5079c2) {
                                                arrayList.add(C24446e.m5112h(name + ".secure", str, m5090b, capabilitiesForType, isHardwareAccelerated, m5084h, z, z2, true));
                                                return arrayList;
                                            }
                                        }
                                    }
                                    z2 = false;
                                    if (!mo5077e) {
                                    }
                                    if (!mo5077e) {
                                        arrayList.add(C24446e.m5112h(name + ".secure", str, m5090b, capabilitiesForType, isHardwareAccelerated, m5084h, z, z2, true));
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
            }
            return arrayList;
        } catch (Exception e4) {
            throw new C24454c(e4, null);
        }
    }

    /* renamed from: g */
    public static boolean m5085g(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (!mediaCodecInfo.isEncoder()) {
            if (!z && str.endsWith(".secure")) {
                return false;
            }
            int i = C24773d0.f69427a;
            if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
                return false;
            }
            if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = C24773d0.f69428b;
                if ("a70".equals(str3)) {
                    return false;
                }
                if ("Xiaomi".equals(C24773d0.f69429c) && str3.startsWith("HM")) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = C24773d0.f69428b;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = C24773d0.f69428b;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(C24773d0.f69429c))) {
                String str6 = C24773d0.f69428b;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(C24773d0.f69429c)) {
                String str7 = C24773d0.f69428b;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i <= 19 && C24773d0.f69428b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return !"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r0.startsWith("c2.") == false) goto L27;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5084h(android.media.MediaCodecInfo r3) {
        /*
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r1 = 29
            if (r0 < r1) goto Ld
            r0 = r3
            boolean r0 = r0.isSoftwareOnly()
            return r0
        Ld:
            r0 = r3
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.m4626D(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.m5084h(android.media.MediaCodecInfo):boolean");
    }

    /* renamed from: i */
    public static int m5083i() throws C24454c {
        int i;
        if (f68294l == -1) {
            int i2 = 0;
            C24446e m5088d = m5088d("video/avc", false, false);
            if (m5088d != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m5088d.m5117c()) {
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
                            case 256:
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
                            case 8192:
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
                i2 = Math.max(i3, C24773d0.f69427a >= 21 ? 345600 : 172800);
            }
            f68294l = i2;
        }
        return f68294l;
    }

    /* renamed from: j */
    public static <T> void m5082j(List<T> list, final AbstractC24458g<T> abstractC24458g) {
        Collections.sort(list, new Comparator() { // from class: e.m.a.c.h1.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                C24451h.AbstractC24458g abstractC24458g2 = C24451h.AbstractC24458g.this;
                return abstractC24458g2.mo5076a(obj2) - abstractC24458g2.mo5076a(obj);
            }
        });
    }
}
