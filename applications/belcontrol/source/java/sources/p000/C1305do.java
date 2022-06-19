package p000;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.Format;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.millennialmedia.internal.PlayList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import p000.C1305do;
@SuppressLint({"InlinedApi"})
/* renamed from: do */
/* loaded from: classes-dex2jar.jar:do.class */
public final class C1305do {

    /* renamed from: c */
    public static final SparseIntArray f6101c;

    /* renamed from: d */
    public static final SparseIntArray f6102d;

    /* renamed from: e */
    public static final SparseIntArray f6103e;

    /* renamed from: f */
    public static final SparseIntArray f6104f;

    /* renamed from: g */
    public static final Map<String, Integer> f6105g;

    /* renamed from: h */
    public static final Map<String, Integer> f6106h;

    /* renamed from: i */
    public static final Map<String, Integer> f6107i;

    /* renamed from: j */
    public static final SparseIntArray f6108j;

    /* renamed from: a */
    public static final Pattern f6099a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<C1307b, List<wn>> f6100b = new HashMap<>();

    /* renamed from: k */
    public static int f6109k = -1;

    /* renamed from: do$b */
    /* loaded from: classes-dex2jar.jar:do$b.class */
    public static final class C1307b {

        /* renamed from: a */
        public final String f6110a;

        /* renamed from: b */
        public final boolean f6111b;

        /* renamed from: c */
        public final boolean f6112c;

        public C1307b(String str, boolean z, boolean z2) {
            this.f6110a = str;
            this.f6111b = z;
            this.f6112c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C1307b.class) {
                return false;
            }
            C1307b c1307b = (C1307b) obj;
            if (!TextUtils.equals(this.f6110a, c1307b.f6110a) || this.f6111b != c1307b.f6111b || this.f6112c != c1307b.f6112c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f6110a;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.f6111b ? 1231 : 1237;
            if (!this.f6112c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: do$c */
    /* loaded from: classes-dex2jar.jar:do$c.class */
    public static class C1308c extends Exception {
        public C1308c(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: do$d */
    /* loaded from: classes-dex2jar.jar:do$d.class */
    public interface AbstractC1309d {
        /* renamed from: a */
        boolean m2449a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        boolean m2448b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean secureDecodersExplicit();
    }

    /* renamed from: do$g */
    /* loaded from: classes-dex2jar.jar:do$g.class */
    public interface AbstractC1310g<T> {
        /* renamed from: a */
        int m2447a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6101c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        sparseIntArray.put(110, 16);
        sparseIntArray.put(122, 32);
        sparseIntArray.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f6102d = sparseIntArray2;
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
        f6103e = sparseIntArray3;
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 2);
        sparseIntArray3.put(2, 4);
        sparseIntArray3.put(3, 8);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f6104f = sparseIntArray4;
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
        f6105g = hashMap;
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
        HashMap hashMap2 = new HashMap();
        f6106h = hashMap2;
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
        f6107i = hashMap3;
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
        f6108j = sparseIntArray5;
        sparseIntArray5.put(1, 1);
        sparseIntArray5.put(2, 2);
        sparseIntArray5.put(3, 3);
        sparseIntArray5.put(4, 4);
        sparseIntArray5.put(5, 5);
        sparseIntArray5.put(6, 6);
        sparseIntArray5.put(17, 17);
        sparseIntArray5.put(20, 20);
        sparseIntArray5.put(23, 23);
        sparseIntArray5.put(29, 29);
        sparseIntArray5.put(39, 39);
        sparseIntArray5.put(42, 42);
    }

    /* renamed from: a */
    public static void m2471a(String str, List<wn> list) {
        AbstractC1310g abstractC1310g;
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (nu.a < 26 && nu.b.equals("R9") && list.size() == 1 && list.get(0).a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(wn.t("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, (MediaCodecInfo.CodecCapabilities) null));
            }
            abstractC1310g = ao.a;
        } else if (nu.a >= 21 || list.size() <= 1) {
            return;
        } else {
            String str2 = list.get(0).a;
            if (!"OMX.SEC.mp3.dec".equals(str2) && !"OMX.SEC.MP3.Decoder".equals(str2) && !"OMX.brcm.audio.mp3.decoder".equals(str2)) {
                return;
            }
            abstractC1310g = bo.a;
        }
        m2450v(list, abstractC1310g);
    }

    /* renamed from: b */
    public static int m2470b(int i) {
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

    /* renamed from: c */
    public static boolean m2469c(String str) {
        boolean z;
        if (nu.a <= 22) {
            String str2 = nu.d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    public static Pair<Integer, Integer> m2468d(String str, String[] strArr) {
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (!MimeTypes.AUDIO_AAC.equals(vt.e(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = f6108j.get(Integer.parseInt(strArr[2]), -1);
            if (i == -1) {
                return null;
            }
            return new Pair<>(Integer.valueOf(i), 0);
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
    }

    /* renamed from: e */
    public static Pair<Integer, Integer> m2467e(String str, String[] strArr) {
        int i;
        int i2;
        String sb;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length < 3) {
                String valueOf2 = String.valueOf(str);
                st.f("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            } else {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            }
            int i3 = f6101c.get(i2, -1);
            if (i3 == -1) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown AVC profile: ");
                sb2.append(i2);
                sb = sb2.toString();
            } else {
                int i4 = f6102d.get(i, -1);
                if (i4 != -1) {
                    return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
                }
                StringBuilder sb3 = new StringBuilder(30);
                sb3.append("Unknown AVC level: ");
                sb3.append(i);
                sb = sb3.toString();
            }
            st.f("MediaCodecUtil", sb);
            return null;
        } catch (NumberFormatException e) {
            String valueOf3 = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f4, code lost:
        if (r0.equals("avc1") == false) goto L7;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m2466f(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C1305do.m2466f(java.lang.String):android.util.Pair");
    }

    /* renamed from: g */
    public static String m2465g(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (m2456p(mediaCodecInfo, str, z, str2)) {
            if (str2.equals("video/dolby-vision")) {
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
        return null;
    }

    /* renamed from: h */
    public static wn m2464h(String str, boolean z, boolean z2) {
        List<wn> m2463i = m2463i(str, z, z2);
        return m2463i.isEmpty() ? null : m2463i.get(0);
    }

    /* renamed from: i */
    public static List<wn> m2463i(String str, boolean z, boolean z2) {
        synchronized (C1305do.class) {
            try {
                C1307b c1307b = new C1307b(str, z, z2);
                HashMap<C1307b, List<wn>> hashMap = f6100b;
                List<wn> list = hashMap.get(c1307b);
                if (list != null) {
                    return list;
                }
                int i = nu.a;
                ArrayList<wn> m2462j = m2462j(c1307b, i >= 21 ? new f(z, z2) : new e((C1306a) null), str);
                ArrayList<wn> arrayList = m2462j;
                if (z) {
                    arrayList = m2462j;
                    if (m2462j.isEmpty()) {
                        arrayList = m2462j;
                        if (21 <= i) {
                            arrayList = m2462j;
                            if (i <= 23) {
                                ArrayList<wn> m2462j2 = m2462j(c1307b, new e((C1306a) null), str);
                                arrayList = m2462j2;
                                if (!m2462j2.isEmpty()) {
                                    String str2 = m2462j2.get(0).a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    st.f("MediaCodecUtil", sb.toString());
                                    arrayList = m2462j2;
                                }
                            }
                        }
                    }
                }
                m2471a(str, arrayList);
                List<wn> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c1307b, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static ArrayList<wn> m2462j(C1307b c1307b, AbstractC1309d abstractC1309d, String str) {
        try {
            ArrayList<wn> arrayList = new ArrayList<>();
            String str2 = c1307b.f6110a;
            int codecCount = abstractC1309d.getCodecCount();
            boolean secureDecodersExplicit = abstractC1309d.secureDecodersExplicit();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = abstractC1309d.getCodecInfoAt(i);
                String name = codecInfoAt.getName();
                String m2465g = m2465g(codecInfoAt, name, secureDecodersExplicit, str);
                if (m2465g != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(m2465g);
                        boolean m2449a = abstractC1309d.m2449a("tunneled-playback", m2465g, capabilitiesForType);
                        boolean m2448b = abstractC1309d.m2448b("tunneled-playback", m2465g, capabilitiesForType);
                        boolean z = c1307b.f6112c;
                        if ((z || !m2448b) && (!z || m2449a)) {
                            boolean m2449a2 = abstractC1309d.m2449a("secure-playback", m2465g, capabilitiesForType);
                            boolean m2448b2 = abstractC1309d.m2448b("secure-playback", m2465g, capabilitiesForType);
                            boolean z2 = c1307b.f6111b;
                            if ((z2 || !m2448b2) && (!z2 || m2449a2)) {
                                boolean m2469c = m2469c(name);
                                if (secureDecodersExplicit) {
                                    if (c1307b.f6111b != m2449a2) {
                                    }
                                    arrayList.add(wn.u(name, str2, capabilitiesForType, m2469c, false));
                                }
                                if (!secureDecodersExplicit && !c1307b.f6111b) {
                                    arrayList.add(wn.u(name, str2, capabilitiesForType, m2469c, false));
                                } else if (!secureDecodersExplicit && m2449a2) {
                                    arrayList.add(wn.u(String.valueOf(name).concat(".secure"), str2, capabilitiesForType, m2469c, true));
                                    return arrayList;
                                }
                            }
                        }
                    } catch (Exception e) {
                        if (nu.a > 23 || arrayList.isEmpty()) {
                            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(m2465g).length());
                            sb.append("Failed to query codec ");
                            sb.append(name);
                            sb.append(" (");
                            sb.append(m2465g);
                            sb.append(")");
                            st.c("MediaCodecUtil", sb.toString());
                            throw e;
                        }
                        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 46);
                        sb2.append("Skipping codec ");
                        sb2.append(name);
                        sb2.append(" (failed to query capabilities)");
                        st.c("MediaCodecUtil", sb2.toString());
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new C1308c(e2);
        }
    }

    /* renamed from: k */
    public static List<wn> m2461k(List<wn> list, Format format) {
        ArrayList arrayList = new ArrayList(list);
        m2450v(arrayList, new zn(format));
        return arrayList;
    }

    /* renamed from: l */
    public static Pair<Integer, Integer> m2460l(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        Matcher matcher = f6099a.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf2) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        String group = matcher.group(1);
        Integer num = f6106h.get(group);
        if (num == null) {
            String valueOf3 = String.valueOf(group);
            st.f("MediaCodecUtil", valueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(valueOf3) : new String("Unknown Dolby Vision profile string: "));
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = f6107i.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        String valueOf4 = String.valueOf(str2);
        st.f("MediaCodecUtil", valueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(valueOf4) : new String("Unknown Dolby Vision level string: "));
        return null;
    }

    /* renamed from: m */
    public static Pair<Integer, Integer> m2459m(String str, String[] strArr) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i = 1;
        Matcher matcher = f6099a.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf2) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (!PlayList.VERSION.equals(group)) {
                String valueOf3 = String.valueOf(group);
                st.f("MediaCodecUtil", valueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf3) : new String("Unknown HEVC profile string: "));
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer num = f6105g.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        String valueOf4 = String.valueOf(str2);
        st.f("MediaCodecUtil", valueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf4) : new String("Unknown HEVC level string: "));
        return null;
    }

    /* renamed from: n */
    public static wn m2458n() {
        wn m2464h = m2464h(MimeTypes.AUDIO_RAW, false, false);
        return m2464h == null ? null : wn.v(m2464h.a);
    }

    /* renamed from: o */
    public static Pair<Integer, Integer> m2457o(String str, String[] strArr) {
        String sb;
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = f6103e.get(parseInt, -1);
            if (i == -1) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown VP9 profile: ");
                sb2.append(parseInt);
                sb = sb2.toString();
            } else {
                int i2 = f6104f.get(parseInt2, -1);
                if (i2 != -1) {
                    return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
                }
                StringBuilder sb3 = new StringBuilder(30);
                sb3.append("Unknown VP9 level: ");
                sb3.append(parseInt2);
                sb = sb3.toString();
            }
            st.f("MediaCodecUtil", sb);
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            st.f("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    /* renamed from: p */
    public static boolean m2456p(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (!mediaCodecInfo.isEncoder()) {
            if (!z && str.endsWith(".secure")) {
                return false;
            }
            int i = nu.a;
            if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
                return false;
            }
            if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = nu.b;
                if ("a70".equals(str3)) {
                    return false;
                }
                if ("Xiaomi".equals(nu.c) && str3.startsWith("HM")) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = nu.b;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = nu.b;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(nu.c))) {
                String str6 = nu.b;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(nu.c)) {
                String str7 = nu.b;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i <= 19 && nu.b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return !MimeTypes.AUDIO_E_AC3_JOC.equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    /* renamed from: q */
    public static final /* synthetic */ int m2455q(wn wnVar) {
        String str = wnVar.a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (nu.a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: r */
    public static final /* synthetic */ int m2454r(wn wnVar) {
        return wnVar.a.startsWith("OMX.google") ? 1 : 0;
    }

    /* renamed from: s */
    public static final /* synthetic */ int m2453s(Format format, wn wnVar) {
        try {
            return wnVar.j(format) ? 1 : 0;
        } catch (C1308c e) {
            return -1;
        }
    }

    /* renamed from: t */
    public static final /* synthetic */ int m2452t(AbstractC1310g abstractC1310g, Object obj, Object obj2) {
        return abstractC1310g.m2447a(obj2) - abstractC1310g.m2447a(obj);
    }

    /* renamed from: u */
    public static int m2451u() {
        if (f6109k == -1) {
            int i = 0;
            wn m2464h = m2464h(MimeTypes.VIDEO_H264, false, false);
            if (m2464h != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m2464h.d()) {
                    i2 = Math.max(m2470b(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, nu.a >= 21 ? 345600 : 172800);
            }
            f6109k = i;
        }
        return f6109k;
    }

    /* renamed from: v */
    public static <T> void m2450v(List<T> list, AbstractC1310g<T> abstractC1310g) {
        Collections.sort(list, new Comparator(abstractC1310g) { // from class: co

            /* renamed from: a */
            public final C1305do.AbstractC1310g f2400a;

            {
                this.f2400a = abstractC1310g;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return C1305do.m2452t(this.f2400a, obj, obj2);
            }
        });
    }
}
