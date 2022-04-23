package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.video.ColorInfo;
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
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p219x0.C3194a;
import p131c.p161d.p170b.p188c.p219x0.C3196c;
import p131c.p161d.p170b.p188c.p219x0.C3198e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {

    /* renamed from: c */
    public static final SparseIntArray f22117c;

    /* renamed from: d */
    public static final SparseIntArray f22118d;

    /* renamed from: e */
    public static final SparseIntArray f22119e;

    /* renamed from: f */
    public static final SparseIntArray f22120f;

    /* renamed from: g */
    public static final Map<String, Integer> f22121g;

    /* renamed from: h */
    public static final Map<String, Integer> f22122h;

    /* renamed from: i */
    public static final Map<String, Integer> f22123i;

    /* renamed from: j */
    public static final SparseIntArray f22124j;

    /* renamed from: k */
    public static final SparseIntArray f22125k;

    /* renamed from: a */
    public static final Pattern f22115a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<C7135b, List<C3198e>> f22116b = new HashMap<>();

    /* renamed from: l */
    public static int f22126l = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        public DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$b.class */
    public static final class C7135b {

        /* renamed from: a */
        public final String f22127a;

        /* renamed from: b */
        public final boolean f22128b;

        /* renamed from: c */
        public final boolean f22129c;

        public C7135b(String str, boolean z, boolean z2) {
            this.f22127a = str;
            this.f22128b = z;
            this.f22129c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C7135b.class) {
                return false;
            }
            C7135b bVar = (C7135b) obj;
            if (!(TextUtils.equals(this.f22127a, bVar.f22127a) && this.f22128b == bVar.f22128b && this.f22129c == bVar.f22129c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f22127a.hashCode();
            int i = 1231;
            int i2 = this.f22128b ? 1231 : 1237;
            if (!this.f22129c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$c.class */
    public interface AbstractC7136c {
        /* renamed from: a */
        int mo18527a();

        /* renamed from: a */
        MediaCodecInfo mo18526a(int i);

        /* renamed from: a */
        boolean mo18525a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        boolean mo18524b();

        /* renamed from: b */
        boolean mo18523b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$d.class */
    public static final class C7137d implements AbstractC7136c {
        public C7137d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public int mo18527a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public MediaCodecInfo mo18526a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public boolean mo18525a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: b */
        public boolean mo18524b() {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: b */
        public boolean mo18523b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$e.class */
    public static final class C7138e implements AbstractC7136c {

        /* renamed from: a */
        public final int f22130a;

        /* renamed from: b */
        public MediaCodecInfo[] f22131b;

        public C7138e(boolean z, boolean z2) {
            this.f22130a = (z || z2) ? 1 : 0;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public int mo18527a() {
            m18522c();
            return this.f22131b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public MediaCodecInfo mo18526a(int i) {
            m18522c();
            return this.f22131b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: a */
        public boolean mo18525a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: b */
        public boolean mo18524b() {
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c
        /* renamed from: b */
        public boolean mo18523b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        /* renamed from: c */
        public final void m18522c() {
            if (this.f22131b == null) {
                this.f22131b = new MediaCodecList(this.f22130a).getCodecInfos();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$f.class */
    public interface AbstractC7139f<T> {
        /* renamed from: a */
        int mo18521a(T t);
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f22117c = sparseIntArray;
        sparseIntArray.put(66, 1);
        f22117c.put(77, 2);
        f22117c.put(88, 4);
        f22117c.put(100, 8);
        f22117c.put(110, 16);
        f22117c.put(122, 32);
        f22117c.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f22118d = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f22118d.put(11, 4);
        f22118d.put(12, 8);
        f22118d.put(13, 16);
        f22118d.put(20, 32);
        f22118d.put(21, 64);
        f22118d.put(22, 128);
        f22118d.put(30, 256);
        SparseIntArray sparseIntArray3 = f22118d;
        Integer valueOf = Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        sparseIntArray3.put(31, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f22118d.put(32, 1024);
        f22118d.put(40, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f22118d.put(41, 4096);
        f22118d.put(42, 8192);
        f22118d.put(50, 16384);
        f22118d.put(51, RegularImmutableMap.SHORT_MAX_SIZE);
        f22118d.put(52, MapMakerInternalMap.MAX_SEGMENTS);
        SparseIntArray sparseIntArray4 = new SparseIntArray();
        f22119e = sparseIntArray4;
        sparseIntArray4.put(0, 1);
        f22119e.put(1, 2);
        f22119e.put(2, 4);
        f22119e.put(3, 8);
        SparseIntArray sparseIntArray5 = new SparseIntArray();
        f22120f = sparseIntArray5;
        sparseIntArray5.put(10, 1);
        f22120f.put(11, 2);
        f22120f.put(20, 4);
        f22120f.put(21, 8);
        f22120f.put(30, 16);
        f22120f.put(31, 32);
        f22120f.put(40, 64);
        f22120f.put(41, 128);
        f22120f.put(50, 256);
        f22120f.put(51, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f22120f.put(60, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f22120f.put(61, 4096);
        f22120f.put(62, 8192);
        HashMap hashMap = new HashMap();
        f22121g = hashMap;
        hashMap.put("L30", 1);
        f22121g.put("L60", 4);
        f22121g.put("L63", 16);
        f22121g.put("L90", 64);
        f22121g.put("L93", 256);
        f22121g.put("L120", 1024);
        f22121g.put("L123", 4096);
        f22121g.put("L150", 16384);
        f22121g.put("L153", Integer.valueOf((int) MapMakerInternalMap.MAX_SEGMENTS));
        f22121g.put("L156", 262144);
        f22121g.put("L180", 1048576);
        f22121g.put("L183", 4194304);
        f22121g.put("L186", 16777216);
        f22121g.put("H30", 2);
        f22121g.put("H60", 8);
        f22121g.put("H63", 32);
        f22121g.put("H90", 128);
        f22121g.put("H93", valueOf);
        f22121g.put("H120", Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_MOVED));
        f22121g.put("H123", 8192);
        f22121g.put("H150", Integer.valueOf((int) RegularImmutableMap.SHORT_MAX_SIZE));
        f22121g.put("H153", 131072);
        f22121g.put("H156", 524288);
        f22121g.put("H180", 2097152);
        f22121g.put("H183", 8388608);
        f22121g.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        f22122h = hashMap2;
        hashMap2.put("00", 1);
        f22122h.put("01", 2);
        f22122h.put("02", 4);
        f22122h.put("03", 8);
        f22122h.put("04", 16);
        f22122h.put("05", 32);
        f22122h.put("06", 64);
        f22122h.put("07", 128);
        f22122h.put("08", 256);
        f22122h.put("09", valueOf);
        HashMap hashMap3 = new HashMap();
        f22123i = hashMap3;
        hashMap3.put("01", 1);
        f22123i.put("02", 2);
        f22123i.put("03", 4);
        f22123i.put("04", 8);
        f22123i.put("05", 16);
        f22123i.put("06", 32);
        f22123i.put("07", 64);
        f22123i.put("08", 128);
        f22123i.put("09", 256);
        SparseIntArray sparseIntArray6 = new SparseIntArray();
        f22124j = sparseIntArray6;
        sparseIntArray6.put(0, 1);
        f22124j.put(1, 2);
        f22124j.put(2, 4);
        f22124j.put(3, 8);
        f22124j.put(4, 16);
        f22124j.put(5, 32);
        f22124j.put(6, 64);
        f22124j.put(7, 128);
        f22124j.put(8, 256);
        f22124j.put(9, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f22124j.put(10, 1024);
        f22124j.put(11, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f22124j.put(12, 4096);
        f22124j.put(13, 8192);
        f22124j.put(14, 16384);
        f22124j.put(15, RegularImmutableMap.SHORT_MAX_SIZE);
        f22124j.put(16, MapMakerInternalMap.MAX_SEGMENTS);
        f22124j.put(17, 131072);
        f22124j.put(18, 262144);
        f22124j.put(19, 524288);
        f22124j.put(20, 1048576);
        f22124j.put(21, 2097152);
        f22124j.put(22, 4194304);
        f22124j.put(23, 8388608);
        SparseIntArray sparseIntArray7 = new SparseIntArray();
        f22125k = sparseIntArray7;
        sparseIntArray7.put(1, 1);
        f22125k.put(2, 2);
        f22125k.put(3, 3);
        f22125k.put(4, 4);
        f22125k.put(5, 5);
        f22125k.put(6, 6);
        f22125k.put(17, 17);
        f22125k.put(20, 20);
        f22125k.put(23, 23);
        f22125k.put(29, 29);
        f22125k.put(39, 39);
        f22125k.put(42, 42);
    }

    /* renamed from: a */
    public static int m18555a(int i) {
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
    public static /* synthetic */ int m18552a(C3198e eVar) {
        String str = eVar.f11799a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (C2885h0.f10477a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: a */
    public static /* synthetic */ int m18550a(Format format, C3198e eVar) {
        try {
            return eVar.m27514b(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m18548a(AbstractC7139f fVar, Object obj, Object obj2) {
        return fVar.mo18521a(obj2) - fVar.mo18521a(obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c5, code lost:
        if (r0.equals("avc1") != false) goto L_0x00dc;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m18551a(com.google.android.exoplayer2.Format r4) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m18551a(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m18544a(String str, String[] strArr) {
        if (strArr.length != 3) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(C2897r.m28590a(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int i = f22125k.get(Integer.parseInt(strArr[2]), -1);
            if (i != -1) {
                return new Pair<>(Integer.valueOf(i), 0);
            }
            return null;
        } catch (NumberFormatException e) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m18543a(String str, String[] strArr, ColorInfo colorInfo) {
        int i;
        if (strArr.length < 4) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i2 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                C2894o.m28594d("MediaCodecUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 == 8 || parseInt3 == 10) {
                if (parseInt3 != 8) {
                    i2 = (colorInfo == null || !(colorInfo.f22577d != null || (i = colorInfo.f22576c) == 7 || i == 6)) ? 2 : 4096;
                }
                int i3 = f22124j.get(parseInt2, -1);
                if (i3 != -1) {
                    return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
                }
                C2894o.m28594d("MediaCodecUtil", "Unknown AV1 level: " + parseInt2);
                return null;
            } else {
                C2894o.m28594d("MediaCodecUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            }
        } catch (NumberFormatException e) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static C3198e m18556a() throws DecoderQueryException {
        C3198e a = m18545a("audio/raw", false, false);
        return a == null ? null : C3198e.m27508d(a.f11799a);
    }

    /* renamed from: a */
    public static C3198e m18545a(String str, boolean z, boolean z2) throws DecoderQueryException {
        List<C3198e> b = m18536b(str, z, z2);
        return b.isEmpty() ? null : b.get(0);
    }

    /* renamed from: a */
    public static String m18553a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!m18538b(mediaCodecInfo, str, z, str2)) {
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

    /* JADX WARN: Code restructure failed: missing block: B:32:0x010b, code lost:
        if (r11.f22128b == false) goto L_0x010e;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b0 A[Catch: Exception -> 0x0229, TRY_ENTER, TryCatch #4 {Exception -> 0x0229, blocks: (B:2:0x0000, B:6:0x002a, B:52:0x01a4, B:55:0x01b0, B:57:0x01b7, B:58:0x01e6, B:59:0x01ec, B:60:0x0226), top: B:75:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ec A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<p131c.p161d.p170b.p188c.p219x0.C3198e> m18549a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.C7135b r11, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7136c r12) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m18549a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c):java.util.ArrayList");
    }

    /* renamed from: a */
    public static List<C3198e> m18542a(List<C3198e> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        m18541a(arrayList, new AbstractC7139f() { // from class: c.d.b.c.x0.b
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC7139f
            /* renamed from: a */
            public final int mo18521a(Object obj) {
                return MediaCodecUtil.m18550a(Format.this, (C3198e) obj);
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    public static void m18546a(String str, List<C3198e> list) {
        if ("audio/raw".equals(str)) {
            if (C2885h0.f10477a < 26 && C2885h0.f10478b.equals("R9") && list.size() == 1 && list.get(0).f11799a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(C3198e.m27518a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            m18541a(list, C3196c.f11797a);
        } else if (C2885h0.f10477a < 21 && list.size() > 1) {
            String str2 = list.get(0).f11799a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                m18541a(list, C3194a.f11795a);
            }
        }
    }

    /* renamed from: a */
    public static <T> void m18541a(List<T> list, final AbstractC7139f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: c.d.b.c.x0.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.m18548a(MediaCodecUtil.AbstractC7139f.this, obj, obj2);
            }
        });
    }

    /* renamed from: a */
    public static boolean m18554a(MediaCodecInfo mediaCodecInfo) {
        return C2885h0.f10477a >= 29 ? m18539b(mediaCodecInfo) : !m18534c(mediaCodecInfo);
    }

    /* renamed from: a */
    public static boolean m18547a(String str) {
        return C2885h0.f10477a <= 22 && ("ODROID-XU3".equals(C2885h0.f10480d) || "Nexus 10".equals(C2885h0.f10480d)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    /* renamed from: b */
    public static int m18540b() throws DecoderQueryException {
        if (f22126l == -1) {
            int i = 0;
            C3198e a = m18545a("video/avc", false, false);
            if (a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a.m27529a()) {
                    i2 = Math.max(m18555a(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, C2885h0.f10477a >= 21 ? 345600 : 172800);
            }
            f22126l = i;
        }
        return f22126l;
    }

    /* renamed from: b */
    public static /* synthetic */ int m18537b(C3198e eVar) {
        return eVar.f11799a.startsWith("OMX.google") ? 1 : 0;
    }

    /* renamed from: b */
    public static Pair<Integer, Integer> m18535b(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
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
                C2894o.m28594d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int i3 = f22117c.get(i2, -1);
            if (i3 == -1) {
                C2894o.m28594d("MediaCodecUtil", "Unknown AVC profile: " + i2);
                return null;
            }
            int i4 = f22118d.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            C2894o.m28594d("MediaCodecUtil", "Unknown AVC level: " + i);
            return null;
        } catch (NumberFormatException e) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    /* renamed from: b */
    public static List<C3198e> m18536b(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                C7135b bVar = new C7135b(str, z, z2);
                List<C3198e> list = f22116b.get(bVar);
                if (list != null) {
                    return list;
                }
                ArrayList<C3198e> a = m18549a(bVar, C2885h0.f10477a >= 21 ? new C7138e(z, z2) : new C7137d());
                ArrayList<C3198e> arrayList = a;
                if (z) {
                    arrayList = a;
                    if (a.isEmpty()) {
                        arrayList = a;
                        if (21 <= C2885h0.f10477a) {
                            arrayList = a;
                            if (C2885h0.f10477a <= 23) {
                                ArrayList<C3198e> a2 = m18549a(bVar, new C7137d());
                                arrayList = a2;
                                if (!a2.isEmpty()) {
                                    C2894o.m28594d("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + a2.get(0).f11799a);
                                    arrayList = a2;
                                }
                            }
                        }
                    }
                }
                m18546a(str, arrayList);
                List<C3198e> unmodifiableList = Collections.unmodifiableList(arrayList);
                f22116b.put(bVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m18539b(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    /* renamed from: b */
    public static boolean m18538b(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        if (C2885h0.f10477a < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (C2885h0.f10477a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            if ("a70".equals(C2885h0.f10478b)) {
                return false;
            }
            if ("Xiaomi".equals(C2885h0.f10479c) && C2885h0.f10478b.startsWith("HM")) {
                return false;
            }
        }
        if (C2885h0.f10477a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(C2885h0.f10478b) || "protou".equals(C2885h0.f10478b) || "ville".equals(C2885h0.f10478b) || "villeplus".equals(C2885h0.f10478b) || "villec2".equals(C2885h0.f10478b) || C2885h0.f10478b.startsWith("gee") || "C6602".equals(C2885h0.f10478b) || "C6603".equals(C2885h0.f10478b) || "C6606".equals(C2885h0.f10478b) || "C6616".equals(C2885h0.f10478b) || "L36h".equals(C2885h0.f10478b) || "SO-02E".equals(C2885h0.f10478b))) {
            return false;
        }
        if (C2885h0.f10477a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(C2885h0.f10478b) || "C1505".equals(C2885h0.f10478b) || "C1604".equals(C2885h0.f10478b) || "C1605".equals(C2885h0.f10478b))) {
            return false;
        }
        if (C2885h0.f10477a < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(C2885h0.f10479c) && (C2885h0.f10478b.startsWith("zeroflte") || C2885h0.f10478b.startsWith("zerolte") || C2885h0.f10478b.startsWith("zenlte") || "SC-05G".equals(C2885h0.f10478b) || "marinelteatt".equals(C2885h0.f10478b) || "404SC".equals(C2885h0.f10478b) || "SC-04G".equals(C2885h0.f10478b) || "SCV31".equals(C2885h0.f10478b)))) {
            return false;
        }
        if (C2885h0.f10477a <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(C2885h0.f10479c) && (C2885h0.f10478b.startsWith("d2") || C2885h0.f10478b.startsWith("serrano") || C2885h0.f10478b.startsWith("jflte") || C2885h0.f10478b.startsWith("santos") || C2885h0.f10478b.startsWith("t0"))) {
            return false;
        }
        if (C2885h0.f10477a > 19 || !C2885h0.f10478b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str)) {
            return !"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str);
        }
        return false;
    }

    /* renamed from: c */
    public static Pair<Integer, Integer> m18533c(String str, String[] strArr) {
        if (strArr.length < 3) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f22115a.matcher(strArr[1]);
        if (!matcher.matches()) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer num = f22122h.get(group);
        if (num == null) {
            C2894o.m28594d("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = f22123i.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        C2894o.m28594d("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r0.startsWith("c2.") == false) goto L_0x0083;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18534c(android.media.MediaCodecInfo r3) {
        /*
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.f10477a
            r1 = 29
            if (r0 < r1) goto L_0x000d
            r0 = r3
            boolean r0 = m18532d(r0)
            return r0
        L_0x000d:
            r0 = r3
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28629f(r0)
            r3 = r0
            r0 = r3
            java.lang.String r1 = "arc."
            boolean r0 = r0.startsWith(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0025
            r0 = 0
            return r0
        L_0x0025:
            r0 = r3
            java.lang.String r1 = "omx.google."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r3
            java.lang.String r1 = "omx.ffmpeg."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r3
            java.lang.String r1 = "omx.sec."
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x004d
            r0 = r3
            java.lang.String r1 = ".sw."
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0083
        L_0x004d:
            r0 = r3
            java.lang.String r1 = "omx.qcom.video.decoder.hevcswvdec"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r3
            java.lang.String r1 = "c2.android."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r3
            java.lang.String r1 = "c2.google."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r5
            r4 = r0
            r0 = r3
            java.lang.String r1 = "omx."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0085
            r0 = r5
            r4 = r0
            r0 = r3
            java.lang.String r1 = "c2."
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0085
        L_0x0083:
            r0 = 1
            r4 = r0
        L_0x0085:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m18534c(android.media.MediaCodecInfo):boolean");
    }

    /* renamed from: d */
    public static Pair<Integer, Integer> m18531d(String str, String[] strArr) {
        if (strArr.length < 4) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i = 1;
        Matcher matcher = f22115a.matcher(strArr[1]);
        if (!matcher.matches()) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (InternalAvidAdSessionContext.AVID_API_LEVEL.equals(group)) {
                i = 2;
            } else {
                C2894o.m28594d("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer num = f22121g.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        C2894o.m28594d("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    /* renamed from: d */
    public static boolean m18532d(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    /* renamed from: e */
    public static Pair<Integer, Integer> m18529e(String str, String[] strArr) {
        if (strArr.length < 3) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i = f22119e.get(parseInt, -1);
            if (i == -1) {
                C2894o.m28594d("MediaCodecUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int i2 = f22120f.get(parseInt2, -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            C2894o.m28594d("MediaCodecUtil", "Unknown VP9 level: " + parseInt2);
            return null;
        } catch (NumberFormatException e) {
            C2894o.m28594d("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    /* renamed from: e */
    public static boolean m18530e(MediaCodecInfo mediaCodecInfo) {
        if (C2885h0.f10477a >= 29) {
            return m18528f(mediaCodecInfo);
        }
        String f = C2885h0.m28629f(mediaCodecInfo.getName());
        return !f.startsWith("omx.google.") && !f.startsWith("c2.android.") && !f.startsWith("c2.google.");
    }

    /* renamed from: f */
    public static boolean m18528f(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }
}
