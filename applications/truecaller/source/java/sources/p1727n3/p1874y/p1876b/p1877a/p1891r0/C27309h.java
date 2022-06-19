package p1727n3.p1874y.p1876b.p1877a.p1891r0;

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
import p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.r0.h */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h.class */
public final class C27309h {

    /* renamed from: c */
    public static final SparseIntArray f76827c;

    /* renamed from: d */
    public static final SparseIntArray f76828d;

    /* renamed from: e */
    public static final SparseIntArray f76829e;

    /* renamed from: f */
    public static final SparseIntArray f76830f;

    /* renamed from: g */
    public static final Map<String, Integer> f76831g;

    /* renamed from: h */
    public static final Map<String, Integer> f76832h;

    /* renamed from: i */
    public static final Map<String, Integer> f76833i;

    /* renamed from: j */
    public static final SparseIntArray f76834j;

    /* renamed from: k */
    public static final SparseIntArray f76835k;

    /* renamed from: a */
    public static final Pattern f76825a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<C27311b, List<C27302a>> f76826b = new HashMap<>();

    /* renamed from: l */
    public static int f76836l = -1;

    /* renamed from: n3.y.b.a.r0.h$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$b.class */
    public static final class C27311b {

        /* renamed from: a */
        public final String f76837a;

        /* renamed from: b */
        public final boolean f76838b;

        /* renamed from: c */
        public final boolean f76839c;

        public C27311b(String str, boolean z, boolean z2) {
            this.f76837a = str;
            this.f76838b = z;
            this.f76839c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C27311b.class) {
                return false;
            }
            C27311b c27311b = (C27311b) obj;
            if (!TextUtils.equals(this.f76837a, c27311b.f76837a) || this.f76838b != c27311b.f76838b || this.f76839c != c27311b.f76839c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f76837a;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.f76838b ? 1231 : 1237;
            if (!this.f76839c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: n3.y.b.a.r0.h$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$c.class */
    public static class C27312c extends Exception {
        public C27312c(Throwable th, C27310a c27310a) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: n3.y.b.a.r0.h$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$d.class */
    public interface AbstractC27313d {
        /* renamed from: a */
        boolean mo578a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        MediaCodecInfo mo577b(int i);

        /* renamed from: c */
        boolean mo576c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: d */
        int mo575d();

        /* renamed from: e */
        boolean mo574e();
    }

    /* renamed from: n3.y.b.a.r0.h$e */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$e.class */
    public static final class C27314e implements AbstractC27313d {
        public C27314e(C27310a c27310a) {
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: a */
        public boolean mo578a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: b */
        public MediaCodecInfo mo577b(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: c */
        public boolean mo576c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: d */
        public int mo575d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: e */
        public boolean mo574e() {
            return false;
        }
    }

    /* renamed from: n3.y.b.a.r0.h$f */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$f.class */
    public static final class C27315f implements AbstractC27313d {

        /* renamed from: a */
        public final int f76840a;

        /* renamed from: b */
        public MediaCodecInfo[] f76841b;

        public C27315f(boolean z, boolean z2) {
            this.f76840a = (z || z2) ? 1 : 0;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: a */
        public boolean mo578a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: b */
        public MediaCodecInfo mo577b(int i) {
            if (this.f76841b == null) {
                this.f76841b = new MediaCodecList(this.f76840a).getCodecInfos();
            }
            return this.f76841b[i];
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: c */
        public boolean mo576c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: d */
        public int mo575d() {
            if (this.f76841b == null) {
                this.f76841b = new MediaCodecList(this.f76840a).getCodecInfos();
            }
            return this.f76841b.length;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27313d
        /* renamed from: e */
        public boolean mo574e() {
            return true;
        }
    }

    /* renamed from: n3.y.b.a.r0.h$g */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/h$g.class */
    public interface AbstractC27316g<T> {
        /* renamed from: a */
        int mo573a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f76827c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f76828d = sparseIntArray2;
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
        f76829e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f76830f = sparseIntArray4;
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
        f76831g = hashMap;
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
        f76832h = hashMap2;
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
        f76833i = hashMap3;
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
        f76834j = sparseIntArray5;
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
        f76835k = sparseIntArray6;
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
    public static void m587a(String str, List<C27302a> list) {
        if ("audio/raw".equals(str)) {
            if (C27445x.f77229a < 26 && C27445x.f77230b.equals("R9") && list.size() == 1 && list.get(0).f76808a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(C27302a.m590h("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            m579i(list, C27306e.f76822a);
        } else if (C27445x.f77229a >= 21 || list.size() <= 1) {
        } else {
            String str2 = list.get(0).f76808a;
            if (!"OMX.SEC.mp3.dec".equals(str2) && !"OMX.SEC.MP3.Decoder".equals(str2) && !"OMX.brcm.audio.mp3.decoder".equals(str2)) {
                return;
            }
            m579i(list, C27307f.f76823a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0263, code lost:
        if (r0.startsWith("t0") == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
        if (r0.startsWith("HM") == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x013b, code lost:
        if ("SO-02E".equals(r0) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0180, code lost:
        if ("C1605".equals(r0) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0207, code lost:
        if ("SCV31".equals(r0) == false) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b0  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m586b(android.media.MediaCodecInfo r3, java.lang.String r4, boolean r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 830
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.m586b(android.media.MediaCodecInfo, java.lang.String, boolean, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x06a1, code lost:
        if (r0 == 6) goto L194;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m585c(androidx.media2.exoplayer.external.Format r5) {
        /*
            Method dump skipped, instructions count: 1793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.m585c(androidx.media2.exoplayer.external.Format):android.util.Pair");
    }

    /* renamed from: d */
    public static C27302a m584d(String str, boolean z, boolean z2) throws C27312c {
        List<C27302a> m583e = m583e(str, z, z2);
        return m583e.isEmpty() ? null : m583e.get(0);
    }

    /* renamed from: e */
    public static List<C27302a> m583e(String str, boolean z, boolean z2) throws C27312c {
        synchronized (C27309h.class) {
            try {
                C27311b c27311b = new C27311b(str, z, z2);
                HashMap<C27311b, List<C27302a>> hashMap = f76826b;
                List<C27302a> list = hashMap.get(c27311b);
                if (list != null) {
                    return list;
                }
                int i = C27445x.f77229a;
                ArrayList<C27302a> m582f = m582f(c27311b, i >= 21 ? new C27315f(z, z2) : new C27314e(null));
                ArrayList<C27302a> arrayList = m582f;
                if (z) {
                    arrayList = m582f;
                    if (m582f.isEmpty()) {
                        arrayList = m582f;
                        if (21 <= i) {
                            arrayList = m582f;
                            if (i <= 23) {
                                ArrayList<C27302a> m582f2 = m582f(c27311b, new C27314e(null));
                                arrayList = m582f2;
                                if (!m582f2.isEmpty()) {
                                    String str2 = m582f2.get(0).f76808a;
                                    String.valueOf(str).length();
                                    String.valueOf(str2).length();
                                    arrayList = m582f2;
                                }
                            }
                        }
                    }
                }
                m587a(str, arrayList);
                List<C27302a> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c27311b, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static ArrayList<C27302a> m582f(C27311b c27311b, AbstractC27313d abstractC27313d) throws C27312c {
        Exception e;
        boolean z;
        boolean z2;
        try {
            ArrayList<C27302a> arrayList = new ArrayList<>();
            String str = c27311b.f76837a;
            int mo575d = abstractC27313d.mo575d();
            boolean mo574e = abstractC27313d.mo574e();
            for (int i = 0; i < mo575d; i++) {
                MediaCodecInfo mo577b = abstractC27313d.mo577b(i);
                String name = mo577b.getName();
                String m586b = m586b(mo577b, name, mo574e, str);
                if (m586b != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mo577b.getCapabilitiesForType(m586b);
                        boolean mo576c = abstractC27313d.mo576c("tunneled-playback", m586b, capabilitiesForType);
                        boolean mo578a = abstractC27313d.mo578a("tunneled-playback", m586b, capabilitiesForType);
                        boolean z3 = c27311b.f76839c;
                        if ((z3 || !mo578a) && (!z3 || mo576c)) {
                            boolean mo576c2 = abstractC27313d.mo576c("secure-playback", m586b, capabilitiesForType);
                            boolean mo578a2 = abstractC27313d.mo578a("secure-playback", m586b, capabilitiesForType);
                            boolean z4 = c27311b.f76838b;
                            if ((z4 || !mo578a2) && (!z4 || mo576c2)) {
                                int i2 = C27445x.f77229a;
                                boolean isHardwareAccelerated = i2 >= 29 ? mo577b.isHardwareAccelerated() : !m581g(mo577b);
                                boolean m581g = m581g(mo577b);
                                if (i2 >= 29) {
                                    z = mo577b.isVendor();
                                } else {
                                    String lowerCase = mo577b.getName().toLowerCase();
                                    z = !lowerCase.startsWith("omx.google.") && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.");
                                }
                                if (i2 <= 22) {
                                    String str2 = C27445x.f77232d;
                                    if ("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) {
                                        z2 = true;
                                        if (!"OMX.Exynos.AVC.Decoder".equals(name)) {
                                            if ("OMX.Exynos.AVC.Decoder.secure".equals(name)) {
                                                z2 = true;
                                            }
                                        }
                                        if ((!mo574e && c27311b.f76838b == mo576c2) || !(mo574e || c27311b.f76838b)) {
                                            try {
                                                arrayList.add(C27302a.m590h(name, str, m586b, capabilitiesForType, isHardwareAccelerated, m581g, z, z2, false));
                                            } catch (Exception e2) {
                                                e = e2;
                                                if (C27445x.f77229a > 23 || arrayList.isEmpty()) {
                                                    String.valueOf(name).length();
                                                    m586b.length();
                                                    throw e;
                                                }
                                                String.valueOf(name).length();
                                            }
                                        } else if (!mo574e && mo576c2) {
                                            arrayList.add(C27302a.m590h(String.valueOf(name).concat(".secure"), str, m586b, capabilitiesForType, isHardwareAccelerated, m581g, z, z2, true));
                                            return arrayList;
                                        }
                                    }
                                }
                                z2 = false;
                                if (!mo574e) {
                                }
                                if (!mo574e) {
                                    arrayList.add(C27302a.m590h(String.valueOf(name).concat(".secure"), str, m586b, capabilitiesForType, isHardwareAccelerated, m581g, z, z2, true));
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
            throw new C27312c(e4, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r0.startsWith("c2.") == false) goto L27;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m581g(android.media.MediaCodecInfo r3) {
        /*
            int r0 = p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x.f77229a
            r1 = 29
            if (r0 < r1) goto Ld
            r0 = r3
            boolean r0 = r0.isSoftwareOnly()
            return r0
        Ld:
            r0 = r3
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = r0.toLowerCase()
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.m581g(android.media.MediaCodecInfo):boolean");
    }

    /* renamed from: h */
    public static int m580h() throws C27312c {
        int i;
        if (f76836l == -1) {
            int i2 = 0;
            C27302a m584d = m584d("video/avc", false, false);
            if (m584d != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m584d.m596b()) {
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
                i2 = Math.max(i3, C27445x.f77229a >= 21 ? 345600 : 172800);
            }
            f76836l = i2;
        }
        return f76836l;
    }

    /* renamed from: i */
    public static <T> void m579i(List<T> list, AbstractC27316g<T> abstractC27316g) {
        Collections.sort(list, new Comparator(abstractC27316g) { // from class: n3.y.b.a.r0.g

            /* renamed from: a */
            public final C27309h.AbstractC27316g f76824a;

            {
                this.f76824a = abstractC27316g;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                C27309h.AbstractC27316g abstractC27316g2 = this.f76824a;
                return abstractC27316g2.mo573a(obj2) - abstractC27316g2.mo573a(obj);
            }
        });
    }
}
