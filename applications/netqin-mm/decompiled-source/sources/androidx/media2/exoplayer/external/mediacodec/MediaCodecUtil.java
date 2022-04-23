package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.RegularImmutableMap;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p095t0.C1501a;
import p012b.p076s.p078b.p079a.p095t0.C1505d;
import p012b.p076s.p078b.p079a.p095t0.C1506e;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {

    /* renamed from: c */
    public static final SparseIntArray f1733c;

    /* renamed from: d */
    public static final SparseIntArray f1734d;

    /* renamed from: e */
    public static final SparseIntArray f1735e;

    /* renamed from: f */
    public static final SparseIntArray f1736f;

    /* renamed from: g */
    public static final Map<String, Integer> f1737g;

    /* renamed from: h */
    public static final Map<String, Integer> f1738h;

    /* renamed from: i */
    public static final Map<String, Integer> f1739i;

    /* renamed from: j */
    public static final SparseIntArray f1740j;

    /* renamed from: a */
    public static final Pattern f1731a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<C0295b, List<C1501a>> f1732b = new HashMap<>();

    /* renamed from: k */
    public static int f1741k = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        public DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b.class */
    public static final class C0295b {

        /* renamed from: a */
        public final String f1742a;

        /* renamed from: b */
        public final boolean f1743b;

        /* renamed from: c */
        public final boolean f1744c;

        public C0295b(String str, boolean z, boolean z2) {
            this.f1742a = str;
            this.f1743b = z;
            this.f1744c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C0295b.class) {
                return false;
            }
            C0295b bVar = (C0295b) obj;
            if (!(TextUtils.equals(this.f1742a, bVar.f1742a) && this.f1743b == bVar.f1743b && this.f1744c == bVar.f1744c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f1742a;
            int hashCode = str == null ? 0 : str.hashCode();
            int i = 1231;
            int i2 = this.f1743b ? 1231 : 1237;
            if (!this.f1744c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c.class */
    public interface AbstractC0296c {
        /* renamed from: a */
        int mo38024a();

        /* renamed from: a */
        MediaCodecInfo mo38023a(int i);

        /* renamed from: a */
        boolean mo38022a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        boolean mo38021b();

        /* renamed from: b */
        boolean mo38020b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d.class */
    public static final class C0297d implements AbstractC0296c {
        public C0297d() {
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public int mo38024a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public MediaCodecInfo mo38023a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public boolean mo38022a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: b */
        public boolean mo38021b() {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: b */
        public boolean mo38020b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e.class */
    public static final class C0298e implements AbstractC0296c {

        /* renamed from: a */
        public final int f1745a;

        /* renamed from: b */
        public MediaCodecInfo[] f1746b;

        public C0298e(boolean z, boolean z2) {
            this.f1745a = (z || z2) ? 1 : 0;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public int mo38024a() {
            m38019c();
            return this.f1746b.length;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public MediaCodecInfo mo38023a(int i) {
            m38019c();
            return this.f1746b[i];
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: a */
        public boolean mo38022a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: b */
        public boolean mo38021b() {
            return true;
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0296c
        /* renamed from: b */
        public boolean mo38020b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        /* renamed from: c */
        public final void m38019c() {
            if (this.f1746b == null) {
                this.f1746b = new MediaCodecList(this.f1745a).getCodecInfos();
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$f.class */
    public interface AbstractC0299f<T> {
        /* renamed from: a */
        int mo33083a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1733c = sparseIntArray;
        sparseIntArray.put(66, 1);
        f1733c.put(77, 2);
        f1733c.put(88, 4);
        f1733c.put(100, 8);
        f1733c.put(110, 16);
        f1733c.put(122, 32);
        f1733c.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f1734d = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f1734d.put(11, 4);
        f1734d.put(12, 8);
        f1734d.put(13, 16);
        f1734d.put(20, 32);
        f1734d.put(21, 64);
        f1734d.put(22, 128);
        f1734d.put(30, 256);
        SparseIntArray sparseIntArray3 = f1734d;
        Integer valueOf = Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        sparseIntArray3.put(31, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f1734d.put(32, 1024);
        f1734d.put(40, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f1734d.put(41, 4096);
        f1734d.put(42, 8192);
        f1734d.put(50, 16384);
        f1734d.put(51, RegularImmutableMap.SHORT_MAX_SIZE);
        f1734d.put(52, MapMakerInternalMap.MAX_SEGMENTS);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f1735e = sparseIntArray4;
        sparseIntArray4.put(0, 1);
        f1735e.put(1, 2);
        f1735e.put(2, 4);
        f1735e.put(3, 8);
        SparseIntArray sparseIntArray5 = new SparseIntArray();
        f1736f = sparseIntArray5;
        sparseIntArray5.put(10, 1);
        f1736f.put(11, 2);
        f1736f.put(20, 4);
        f1736f.put(21, 8);
        f1736f.put(30, 16);
        f1736f.put(31, 32);
        f1736f.put(40, 64);
        f1736f.put(41, 128);
        f1736f.put(50, 256);
        f1736f.put(51, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f1736f.put(60, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f1736f.put(61, 4096);
        f1736f.put(62, 8192);
        HashMap hashMap = new HashMap();
        f1737g = hashMap;
        hashMap.put("L30", 1);
        f1737g.put("L60", 4);
        f1737g.put("L63", 16);
        f1737g.put("L90", 64);
        f1737g.put("L93", 256);
        f1737g.put("L120", 1024);
        f1737g.put("L123", 4096);
        f1737g.put("L150", 16384);
        f1737g.put("L153", Integer.valueOf((int) MapMakerInternalMap.MAX_SEGMENTS));
        f1737g.put("L156", 262144);
        f1737g.put("L180", 1048576);
        f1737g.put("L183", 4194304);
        f1737g.put("L186", 16777216);
        f1737g.put("H30", 2);
        f1737g.put("H60", 8);
        f1737g.put("H63", 32);
        f1737g.put("H90", 128);
        f1737g.put("H93", valueOf);
        f1737g.put("H120", Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_MOVED));
        f1737g.put("H123", 8192);
        f1737g.put("H150", Integer.valueOf((int) RegularImmutableMap.SHORT_MAX_SIZE));
        f1737g.put("H153", 131072);
        f1737g.put("H156", 524288);
        f1737g.put("H180", 2097152);
        f1737g.put("H183", 8388608);
        f1737g.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        f1738h = hashMap2;
        hashMap2.put("00", 1);
        f1738h.put("01", 2);
        f1738h.put("02", 4);
        f1738h.put("03", 8);
        f1738h.put("04", 16);
        f1738h.put("05", 32);
        f1738h.put("06", 64);
        f1738h.put("07", 128);
        f1738h.put("08", 256);
        f1738h.put("09", valueOf);
        HashMap hashMap3 = new HashMap();
        f1739i = hashMap3;
        hashMap3.put("01", 1);
        f1739i.put("02", 2);
        f1739i.put("03", 4);
        f1739i.put("04", 8);
        f1739i.put("05", 16);
        f1739i.put("06", 32);
        f1739i.put("07", 64);
        f1739i.put("08", 128);
        f1739i.put("09", 256);
        SparseIntArray sparseIntArray6 = new SparseIntArray();
        f1740j = sparseIntArray6;
        sparseIntArray6.put(1, 1);
        f1740j.put(2, 2);
        f1740j.put(3, 3);
        f1740j.put(4, 4);
        f1740j.put(5, 5);
        f1740j.put(6, 6);
        f1740j.put(17, 17);
        f1740j.put(20, 20);
        f1740j.put(23, 23);
        f1740j.put(29, 29);
        f1740j.put(39, 39);
        f1740j.put(42, 42);
    }

    /* renamed from: a */
    public static int m38045a(int i) {
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
            case RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN /* 512 */:
                return 921600;
            case 1024:
                return 1310720;
            case RecyclerView.AbstractC0495b0.FLAG_MOVED /* 2048 */:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case RegularImmutableMap.SHORT_MAX_SIZE /* 32768 */:
            case MapMakerInternalMap.MAX_SEGMENTS /* 65536 */:
                return 9437184;
            default:
                return -1;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ int m38043a(Format format, C1501a aVar) {
        try {
            return aVar.m33101a(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ int m38041a(AbstractC0299f fVar, Object obj, Object obj2) {
        return fVar.mo33083a(obj2) - fVar.mo33083a(obj);
    }

    /* renamed from: a */
    public static final /* synthetic */ int m38040a(C1501a aVar) {
        String str = aVar.f6160a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (C1167d0.f4688a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m38036a(String str, String[] strArr) {
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(C1178m.m34410a(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = f1740j.get(Integer.parseInt(strArr[2]), -1);
            if (i != -1) {
                return new Pair<>(Integer.valueOf(i), 0);
            }
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
    }

    /* renamed from: a */
    public static C1501a m38046a() throws DecoderQueryException {
        C1501a a = m38037a("audio/raw", false, false);
        return a == null ? null : C1501a.m33088d(a.f6160a);
    }

    /* renamed from: a */
    public static C1501a m38037a(String str, boolean z, boolean z2) throws DecoderQueryException {
        List<C1501a> b = m38029b(str, z, z2);
        return b.isEmpty() ? null : b.get(0);
    }

    /* renamed from: a */
    public static String m38044a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!m38032b(mediaCodecInfo, str, z, str2)) {
            return null;
        }
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

    /* renamed from: a */
    public static ArrayList<C1501a> m38042a(C0295b bVar, AbstractC0296c cVar, String str) throws DecoderQueryException {
        try {
            ArrayList<C1501a> arrayList = new ArrayList<>();
            String str2 = bVar.f1742a;
            int a = cVar.mo38024a();
            boolean b = cVar.mo38021b();
            for (int i = 0; i < a; i++) {
                MediaCodecInfo a2 = cVar.mo38023a(i);
                String name = a2.getName();
                String a3 = m38044a(a2, name, b, str);
                if (a3 != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = a2.getCapabilitiesForType(a3);
                        boolean a4 = cVar.mo38022a("tunneled-playback", a3, capabilitiesForType);
                        boolean b2 = cVar.mo38020b("tunneled-playback", a3, capabilitiesForType);
                        if ((bVar.f1744c || !b2) && (!bVar.f1744c || a4)) {
                            boolean a5 = cVar.mo38022a("secure-playback", a3, capabilitiesForType);
                            boolean b3 = cVar.mo38020b("secure-playback", a3, capabilitiesForType);
                            if ((bVar.f1743b || !b3) && (!bVar.f1743b || a5)) {
                                boolean a6 = m38039a(name);
                                if (b) {
                                    if (bVar.f1743b != a5) {
                                    }
                                    arrayList.add(C1501a.m33096a(name, str2, capabilitiesForType, a6, false));
                                }
                                if (!b && !bVar.f1743b) {
                                    arrayList.add(C1501a.m33096a(name, str2, capabilitiesForType, a6, false));
                                } else if (!b && a5) {
                                    arrayList.add(C1501a.m33096a(String.valueOf(name).concat(".secure"), str2, capabilitiesForType, a6, true));
                                    return arrayList;
                                }
                            }
                        }
                    } catch (Exception e) {
                        if (C1167d0.f4688a > 23 || arrayList.isEmpty()) {
                            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(a3).length());
                            sb.append("Failed to query codec ");
                            sb.append(name);
                            sb.append(" (");
                            sb.append(a3);
                            sb.append(")");
                            C1175j.m34417b("MediaCodecUtil", sb.toString());
                            throw e;
                        }
                        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 46);
                        sb2.append("Skipping codec ");
                        sb2.append(name);
                        sb2.append(" (failed to query capabilities)");
                        C1175j.m34417b("MediaCodecUtil", sb2.toString());
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new DecoderQueryException(e2);
        }
    }

    /* renamed from: a */
    public static List<C1501a> m38035a(List<C1501a> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        m38034a(arrayList, new AbstractC0299f(format) { // from class: b.s.b.a.t0.c

            /* renamed from: a */
            public final Format f6168a;

            {
                this.f6168a = format;
            }

            @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.AbstractC0299f
            /* renamed from: a */
            public int mo33083a(Object obj) {
                return MediaCodecUtil.m38043a(this.f6168a, (C1501a) obj);
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    public static void m38038a(String str, List<C1501a> list) {
        if ("audio/raw".equals(str)) {
            if (C1167d0.f4688a < 26 && C1167d0.f4689b.equals("R9") && list.size() == 1 && list.get(0).f6160a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(C1501a.m33097a("OMX.google.raw.decoder", "audio/raw", (MediaCodecInfo.CodecCapabilities) null));
            }
            m38034a(list, C1505d.f6169a);
        } else if (C1167d0.f4688a < 21 && list.size() > 1) {
            String str2 = list.get(0).f6160a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                m38034a(list, C1506e.f6170a);
            }
        }
    }

    /* renamed from: a */
    public static <T> void m38034a(List<T> list, final AbstractC0299f<T> fVar) {
        Collections.sort(list, new Comparator(fVar) { // from class: b.s.b.a.t0.f

            /* renamed from: a */
            public final MediaCodecUtil.AbstractC0299f f6171a;

            {
                this.f6171a = fVar;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return MediaCodecUtil.m38041a(this.f6171a, obj, obj2);
            }
        });
    }

    /* renamed from: a */
    public static boolean m38039a(String str) {
        return C1167d0.f4688a <= 22 && ("ODROID-XU3".equals(C1167d0.f4691d) || "Nexus 10".equals(C1167d0.f4691d)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    /* renamed from: b */
    public static int m38033b() throws DecoderQueryException {
        if (f1741k == -1) {
            int i = 0;
            C1501a a = m38037a("video/avc", false, false);
            if (a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a.m33107a()) {
                    i2 = Math.max(m38045a(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, C1167d0.f4688a >= 21 ? 345600 : 172800);
            }
            f1741k = i;
        }
        return f1741k;
    }

    /* renamed from: b */
    public static final /* synthetic */ int m38031b(C1501a aVar) {
        return aVar.f6160a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d9, code lost:
        if (r0.equals("avc1") != false) goto L_0x00e1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m38030b(java.lang.String r3) {
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
                case 3006243: goto L_0x00d2;
                case 3006244: goto L_0x00c3;
                case 3095771: goto L_0x00b3;
                case 3095823: goto L_0x00a4;
                case 3199032: goto L_0x0095;
                case 3214780: goto L_0x0086;
                case 3356560: goto L_0x0076;
                case 3624515: goto L_0x0067;
                default: goto L_0x0064;
            }
        L_0x0064:
            goto L_0x00df
        L_0x0067:
            r0 = r6
            java.lang.String r1 = "vp09"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 2
            r5 = r0
            goto L_0x00e1
        L_0x0076:
            r0 = r6
            java.lang.String r1 = "mp4a"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 7
            r5 = r0
            goto L_0x00e1
        L_0x0086:
            r0 = r6
            java.lang.String r1 = "hvc1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 4
            r5 = r0
            goto L_0x00e1
        L_0x0095:
            r0 = r6
            java.lang.String r1 = "hev1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 3
            r5 = r0
            goto L_0x00e1
        L_0x00a4:
            r0 = r6
            java.lang.String r1 = "dvhe"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 5
            r5 = r0
            goto L_0x00e1
        L_0x00b3:
            r0 = r6
            java.lang.String r1 = "dvh1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 6
            r5 = r0
            goto L_0x00e1
        L_0x00c3:
            r0 = r6
            java.lang.String r1 = "avc2"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            r0 = 1
            r5 = r0
            goto L_0x00e1
        L_0x00d2:
            r0 = r6
            java.lang.String r1 = "avc1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00df
            goto L_0x00e1
        L_0x00df:
            r0 = -1
            r5 = r0
        L_0x00e1:
            r0 = r5
            switch(r0) {
                case 0: goto L_0x012a;
                case 1: goto L_0x012a;
                case 2: goto L_0x0124;
                case 3: goto L_0x011e;
                case 4: goto L_0x011e;
                case 5: goto L_0x0118;
                case 6: goto L_0x0118;
                case 7: goto L_0x0112;
                default: goto L_0x0110;
            }
        L_0x0110:
            r0 = 0
            return r0
        L_0x0112:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = m38036a(r0, r1)
            return r0
        L_0x0118:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = m38027c(r0, r1)
            return r0
        L_0x011e:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = m38026d(r0, r1)
            return r0
        L_0x0124:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = m38025e(r0, r1)
            return r0
        L_0x012a:
            r0 = r3
            r1 = r4
            android.util.Pair r0 = m38028b(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.m38030b(java.lang.String):android.util.Pair");
    }

    /* renamed from: b */
    public static Pair<Integer, Integer> m38028b(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
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
                C1175j.m34414d("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            int i3 = f1733c.get(i2, -1);
            if (i3 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i2);
                C1175j.m34414d("MediaCodecUtil", sb.toString());
                return null;
            }
            int i4 = f1734d.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown AVC level: ");
            sb2.append(i);
            C1175j.m34414d("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf3 = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* renamed from: b */
    public static List<C1501a> m38029b(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                C0295b bVar = new C0295b(str, z, z2);
                List<C1501a> list = f1732b.get(bVar);
                if (list != null) {
                    return list;
                }
                ArrayList<C1501a> a = m38042a(bVar, C1167d0.f4688a >= 21 ? new C0298e(z, z2) : new C0297d(), str);
                ArrayList<C1501a> arrayList = a;
                if (z) {
                    arrayList = a;
                    if (a.isEmpty()) {
                        arrayList = a;
                        if (21 <= C1167d0.f4688a) {
                            arrayList = a;
                            if (C1167d0.f4688a <= 23) {
                                ArrayList<C1501a> a2 = m38042a(bVar, new C0297d(), str);
                                arrayList = a2;
                                if (!a2.isEmpty()) {
                                    String str2 = a2.get(0).f6160a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    C1175j.m34414d("MediaCodecUtil", sb.toString());
                                    arrayList = a2;
                                }
                            }
                        }
                    }
                }
                m38038a(str, arrayList);
                List<C1501a> unmodifiableList = Collections.unmodifiableList(arrayList);
                f1732b.put(bVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m38032b(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        if (C1167d0.f4688a < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (C1167d0.f4688a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            if ("a70".equals(C1167d0.f4689b)) {
                return false;
            }
            if ("Xiaomi".equals(C1167d0.f4690c) && C1167d0.f4689b.startsWith("HM")) {
                return false;
            }
        }
        if (C1167d0.f4688a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(C1167d0.f4689b) || "protou".equals(C1167d0.f4689b) || "ville".equals(C1167d0.f4689b) || "villeplus".equals(C1167d0.f4689b) || "villec2".equals(C1167d0.f4689b) || C1167d0.f4689b.startsWith("gee") || "C6602".equals(C1167d0.f4689b) || "C6603".equals(C1167d0.f4689b) || "C6606".equals(C1167d0.f4689b) || "C6616".equals(C1167d0.f4689b) || "L36h".equals(C1167d0.f4689b) || "SO-02E".equals(C1167d0.f4689b))) {
            return false;
        }
        if (C1167d0.f4688a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(C1167d0.f4689b) || "C1505".equals(C1167d0.f4689b) || "C1604".equals(C1167d0.f4689b) || "C1605".equals(C1167d0.f4689b))) {
            return false;
        }
        if (C1167d0.f4688a < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(C1167d0.f4690c) && (C1167d0.f4689b.startsWith("zeroflte") || C1167d0.f4689b.startsWith("zerolte") || C1167d0.f4689b.startsWith("zenlte") || "SC-05G".equals(C1167d0.f4689b) || "marinelteatt".equals(C1167d0.f4689b) || "404SC".equals(C1167d0.f4689b) || "SC-04G".equals(C1167d0.f4689b) || "SCV31".equals(C1167d0.f4689b)))) {
            return false;
        }
        if (C1167d0.f4688a <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(C1167d0.f4690c) && (C1167d0.f4689b.startsWith("d2") || C1167d0.f4689b.startsWith("serrano") || C1167d0.f4689b.startsWith("jflte") || C1167d0.f4689b.startsWith("santos") || C1167d0.f4689b.startsWith("t0"))) {
            return false;
        }
        if (C1167d0.f4688a > 19 || !C1167d0.f4689b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str)) {
            return !"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    /* renamed from: c */
    public static Pair<Integer, Integer> m38027c(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        Matcher matcher = f1731a.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf2) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        String group = matcher.group(1);
        Integer num = f1738h.get(group);
        if (num == null) {
            String valueOf3 = String.valueOf(group);
            C1175j.m34414d("MediaCodecUtil", valueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(valueOf3) : new String("Unknown Dolby Vision profile string: "));
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = f1739i.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        String valueOf4 = String.valueOf(str2);
        C1175j.m34414d("MediaCodecUtil", valueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(valueOf4) : new String("Unknown Dolby Vision level string: "));
        return null;
    }

    /* renamed from: d */
    public static Pair<Integer, Integer> m38026d(String str, String[] strArr) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i = 1;
        Matcher matcher = f1731a.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf2) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (InternalAvidAdSessionContext.AVID_API_LEVEL.equals(group)) {
                i = 2;
            } else {
                String valueOf3 = String.valueOf(group);
                C1175j.m34414d("MediaCodecUtil", valueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf3) : new String("Unknown HEVC profile string: "));
                return null;
            }
        }
        String str2 = strArr[3];
        Integer num = f1737g.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        String valueOf4 = String.valueOf(str2);
        C1175j.m34414d("MediaCodecUtil", valueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf4) : new String("Unknown HEVC level string: "));
        return null;
    }

    /* renamed from: e */
    public static Pair<Integer, Integer> m38025e(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = f1735e.get(parseInt, -1);
            if (i == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                C1175j.m34414d("MediaCodecUtil", sb.toString());
                return null;
            }
            int i2 = f1736f.get(parseInt2, -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown VP9 level: ");
            sb2.append(parseInt2);
            C1175j.m34414d("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            C1175j.m34414d("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }
}
