package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpb.class */
public final class dpb {

    /* renamed from: d */
    private static final SparseIntArray f15278d;

    /* renamed from: e */
    private static final SparseIntArray f15279e;

    /* renamed from: f */
    private static final Map<String, Integer> f15280f;

    /* renamed from: a */
    private static final doz f15275a = doz.m8952a("OMX.google.raw.decoder");

    /* renamed from: b */
    private static final Pattern f15276b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    private static final HashMap<C3009a, List<doz>> f15277c = new HashMap<>();

    /* renamed from: g */
    private static int f15281g = -1;

    /* renamed from: com.google.android.gms.internal.ads.dpb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpb$a.class */
    public static final class C3009a {

        /* renamed from: a */
        public final String f15282a;

        /* renamed from: b */
        public final boolean f15283b;

        public C3009a(String str, boolean z) {
            this.f15282a = str;
            this.f15283b = z;
        }

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null || obj.getClass() != C3009a.class) {
                    z = false;
                } else {
                    C3009a c3009a = (C3009a) obj;
                    if (!TextUtils.equals(this.f15282a, c3009a.f15282a) || this.f15283b != c3009a.f15283b) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (this.f15283b ? 1231 : 1237) + (((this.f15282a == null ? 0 : this.f15282a.hashCode()) + 31) * 31);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f15278d = sparseIntArray;
        sparseIntArray.put(66, 1);
        f15278d.put(77, 2);
        f15278d.put(88, 4);
        f15278d.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f15279e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f15279e.put(11, 4);
        f15279e.put(12, 8);
        f15279e.put(13, 16);
        f15279e.put(20, 32);
        f15279e.put(21, 64);
        f15279e.put(22, 128);
        f15279e.put(30, 256);
        f15279e.put(31, 512);
        f15279e.put(32, 1024);
        f15279e.put(40, 2048);
        f15279e.put(41, 4096);
        f15279e.put(42, 8192);
        f15279e.put(50, 16384);
        f15279e.put(51, 32768);
        f15279e.put(52, 65536);
        HashMap hashMap = new HashMap();
        f15280f = hashMap;
        hashMap.put("L30", 1);
        f15280f.put("L60", 4);
        f15280f.put("L63", 16);
        f15280f.put("L90", 64);
        f15280f.put("L93", 256);
        f15280f.put("L120", 1024);
        f15280f.put("L123", 4096);
        f15280f.put("L150", 16384);
        f15280f.put("L153", 65536);
        f15280f.put("L156", 262144);
        f15280f.put("L180", 1048576);
        f15280f.put("L183", 4194304);
        f15280f.put("L186", 16777216);
        f15280f.put("H30", 2);
        f15280f.put("H60", 8);
        f15280f.put("H63", 32);
        f15280f.put("H90", 128);
        f15280f.put("H93", 512);
        f15280f.put("H120", 2048);
        f15280f.put("H123", 8192);
        f15280f.put("H150", 32768);
        f15280f.put("H153", 131072);
        f15280f.put("H156", 524288);
        f15280f.put("H180", 2097152);
        f15280f.put("H183", 8388608);
        f15280f.put("H186", 33554432);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006f, code lost:
        if (r0.equals("hev1") != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m8945a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dpb.m8945a(java.lang.String):android.util.Pair");
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m8943a(String str, String[] strArr) {
        Pair<Integer, Integer> pair;
        Integer valueOf;
        Integer num;
        if (strArr.length < 2) {
            String valueOf2 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
            pair = null;
        } else {
            try {
                if (strArr[1].length() == 6) {
                    Integer valueOf3 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                    valueOf = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                    num = valueOf3;
                } else if (strArr.length >= 3) {
                    Integer valueOf4 = Integer.valueOf(Integer.parseInt(strArr[1]));
                    valueOf = Integer.valueOf(Integer.parseInt(strArr[2]));
                    num = valueOf4;
                } else {
                    String valueOf5 = String.valueOf(str);
                    Log.w("MediaCodecUtil", valueOf5.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf5) : new String("Ignoring malformed AVC codec string: "));
                    pair = null;
                }
                Integer valueOf6 = Integer.valueOf(f15278d.get(num.intValue()));
                if (valueOf6 == null) {
                    String valueOf7 = String.valueOf(num);
                    Log.w("MediaCodecUtil", new StringBuilder(String.valueOf(valueOf7).length() + 21).append("Unknown AVC profile: ").append(valueOf7).toString());
                    pair = null;
                } else {
                    Integer valueOf8 = Integer.valueOf(f15279e.get(valueOf.intValue()));
                    if (valueOf8 == null) {
                        String valueOf9 = String.valueOf(valueOf);
                        Log.w("MediaCodecUtil", new StringBuilder(String.valueOf(valueOf9).length() + 19).append("Unknown AVC level: ").append(valueOf9).toString());
                        pair = null;
                    } else {
                        pair = new Pair<>(valueOf6, valueOf8);
                    }
                }
            } catch (NumberFormatException e) {
                String valueOf10 = String.valueOf(str);
                Log.w("MediaCodecUtil", valueOf10.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf10) : new String("Ignoring malformed AVC codec string: "));
                pair = null;
            }
        }
        return pair;
    }

    /* renamed from: a */
    public static doz m8947a() {
        return f15275a;
    }

    /* renamed from: a */
    public static doz m8944a(String str, boolean z) {
        List<doz> m8941b = m8941b(str, z);
        return m8941b.isEmpty() ? null : m8941b.get(0);
    }

    /* renamed from: a */
    private static List<doz> m8946a(C3009a c3009a, dpe dpeVar) {
        String[] supportedTypes;
        try {
            ArrayList arrayList = new ArrayList();
            String str = c3009a.f15282a;
            int mo8937a = dpeVar.mo8937a();
            boolean mo8934b = dpeVar.mo8934b();
            loop0: for (int i = 0; i < mo8937a; i++) {
                MediaCodecInfo mo8936a = dpeVar.mo8936a(i);
                String name = mo8936a.getName();
                if ((mo8936a.isEncoder() || (!mo8934b && name.endsWith(".secure"))) ? false : (dsn.f15576a >= 21 || (!"CIPAACDecoder".equals(name) && !"CIPMP3Decoder".equals(name) && !"CIPVorbisDecoder".equals(name) && !"CIPAMRNBDecoder".equals(name) && !"AACDecoder".equals(name) && !"MP3Decoder".equals(name))) ? (dsn.f15576a >= 18 || !"OMX.SEC.MP3.Decoder".equals(name)) ? (dsn.f15576a >= 18 || !"OMX.MTK.AUDIO.DECODER.AAC".equals(name) || !"a70".equals(dsn.f15577b)) ? (dsn.f15576a != 16 || !"OMX.qcom.audio.decoder.mp3".equals(name) || (!"dlxu".equals(dsn.f15577b) && !"protou".equals(dsn.f15577b) && !"ville".equals(dsn.f15577b) && !"villeplus".equals(dsn.f15577b) && !"villec2".equals(dsn.f15577b) && !dsn.f15577b.startsWith("gee") && !"C6602".equals(dsn.f15577b) && !"C6603".equals(dsn.f15577b) && !"C6606".equals(dsn.f15577b) && !"C6616".equals(dsn.f15577b) && !"L36h".equals(dsn.f15577b) && !"SO-02E".equals(dsn.f15577b))) ? (dsn.f15576a != 16 || !"OMX.qcom.audio.decoder.aac".equals(name) || (!"C1504".equals(dsn.f15577b) && !"C1505".equals(dsn.f15577b) && !"C1604".equals(dsn.f15577b) && !"C1605".equals(dsn.f15577b))) ? (dsn.f15576a > 19 || !"OMX.SEC.vp8.dec".equals(name) || !"samsung".equals(dsn.f15578c) || (!dsn.f15577b.startsWith("d2") && !dsn.f15577b.startsWith("serrano") && !dsn.f15577b.startsWith("jflte") && !dsn.f15577b.startsWith("santos") && !dsn.f15577b.startsWith("t0"))) ? dsn.f15576a > 19 || !dsn.f15577b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(name) : false : false : false : false : false : false) {
                    for (String str2 : mo8936a.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mo8936a.getCapabilitiesForType(str2);
                                boolean mo8935a = dpeVar.mo8935a(str, capabilitiesForType);
                                boolean z = dsn.f15576a <= 22 && (dsn.f15579d.equals("ODROID-XU3") || dsn.f15579d.equals("Nexus 10")) && ("OMX.Exynos.AVC.Decoder".equals(name) || "OMX.Exynos.AVC.Decoder.secure".equals(name));
                                if ((!mo8934b || c3009a.f15283b != mo8935a) && (mo8934b || c3009a.f15283b)) {
                                    if (!mo8934b && mo8935a) {
                                        arrayList.add(doz.m8951a(String.valueOf(name).concat(".secure"), str, capabilitiesForType, z, true));
                                        break loop0;
                                    }
                                } else {
                                    arrayList.add(doz.m8951a(name, str, capabilitiesForType, z, false));
                                }
                            } catch (Exception e) {
                                if (dsn.f15576a > 23 || arrayList.isEmpty()) {
                                    Log.e("MediaCodecUtil", new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(str2).length()).append("Failed to query codec ").append(name).append(" (").append(str2).append(")").toString());
                                    throw e;
                                }
                                Log.e("MediaCodecUtil", new StringBuilder(String.valueOf(name).length() + 46).append("Skipping codec ").append(name).append(" (failed to query capabilities)").toString());
                            }
                        }
                    }
                    continue;
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new zzlj(e2);
        }
    }

    /* renamed from: b */
    public static int m8942b() {
        int i;
        int i2 = 0;
        if (f15281g == -1) {
            doz m8944a = m8944a("video/avc", false);
            if (m8944a != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m8944a.m8957a()) {
                    switch (codecProfileLevel.level) {
                        case 1:
                            i = 25344;
                            break;
                        case 2:
                            i = 25344;
                            break;
                        case 8:
                            i = 101376;
                            break;
                        case 16:
                            i = 101376;
                            break;
                        case 32:
                            i = 101376;
                            break;
                        case 64:
                            i = 202752;
                            break;
                        case 128:
                            i = 414720;
                            break;
                        case 256:
                            i = 414720;
                            break;
                        case 512:
                            i = 921600;
                            break;
                        case 1024:
                            i = 1310720;
                            break;
                        case 2048:
                            i = 2097152;
                            break;
                        case 4096:
                            i = 2097152;
                            break;
                        case 8192:
                            i = 2228224;
                            break;
                        case 16384:
                            i = 5652480;
                            break;
                        case 32768:
                            i = 9437184;
                            break;
                        case 65536:
                            i = 9437184;
                            break;
                        default:
                            i = -1;
                            break;
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, dsn.f15576a >= 21 ? 345600 : 172800);
            }
            f15281g = i2;
        }
        return f15281g;
    }

    /* renamed from: b */
    private static List<doz> m8941b(String str, boolean z) {
        List<doz> unmodifiableList;
        synchronized (dpb.class) {
            try {
                C3009a c3009a = new C3009a(str, z);
                List<doz> list = f15277c.get(c3009a);
                if (list != null) {
                    unmodifiableList = list;
                } else {
                    List<doz> m8946a = m8946a(c3009a, dsn.f15576a >= 21 ? new dpf(z) : new dpg());
                    List<doz> list2 = m8946a;
                    if (z) {
                        list2 = m8946a;
                        if (m8946a.isEmpty()) {
                            list2 = m8946a;
                            if (21 <= dsn.f15576a) {
                                list2 = m8946a;
                                if (dsn.f15576a <= 23) {
                                    list2 = m8946a(c3009a, new dpg());
                                    if (!list2.isEmpty()) {
                                        String str2 = list2.get(0).f15268a;
                                        Log.w("MediaCodecUtil", new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length()).append("MediaCodecList API didn't list secure decoder for: ").append(str).append(". Assuming: ").append(str2).toString());
                                    }
                                }
                            }
                        }
                    }
                    unmodifiableList = Collections.unmodifiableList(list2);
                    f15277c.put(c3009a, unmodifiableList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableList;
    }
}
