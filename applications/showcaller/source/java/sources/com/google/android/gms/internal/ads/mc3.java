package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mc3.class */
public final class mc3 {

    /* renamed from: a */
    private static final Pattern f26534a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    private static final HashMap<f53, List<vw2>> f26535b = new HashMap<>();

    /* renamed from: c */
    private static int f26536c = -1;

    /* renamed from: d */
    public static final /* synthetic */ int f26537d = 0;

    /* renamed from: a */
    public static vw2 m13305a() {
        return m13304b("audio/raw", false, false);
    }

    /* renamed from: b */
    public static vw2 m13304b(String str, boolean z, boolean z2) {
        List<vw2> m13303c = m13303c(str, false, false);
        if (m13303c.isEmpty()) {
            return null;
        }
        return m13303c.get(0);
    }

    /* renamed from: c */
    public static List<vw2> m13303c(String str, boolean z, boolean z2) {
        synchronized (mc3.class) {
            try {
                f53 f53Var = new f53(str, z, z2);
                HashMap<f53, List<vw2>> hashMap = f26535b;
                List<vw2> list = hashMap.get(f53Var);
                if (list != null) {
                    return list;
                }
                int i = C7101wa.f31475a;
                ArrayList<vw2> m13299g = m13299g(f53Var, i >= 21 ? new j93(z, z2) : new i83(null));
                ArrayList<vw2> arrayList = m13299g;
                if (z) {
                    arrayList = m13299g;
                    if (m13299g.isEmpty()) {
                        arrayList = m13299g;
                        if (i >= 21) {
                            arrayList = m13299g;
                            if (i <= 23) {
                                ArrayList<vw2> m13299g2 = m13299g(f53Var, new i83(null));
                                arrayList = m13299g2;
                                if (!m13299g2.isEmpty()) {
                                    String str2 = m13299g2.get(0).f31383a;
                                    StringBuilder sb = new StringBuilder(str.length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    arrayList = m13299g2;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (i < 26 && C7101wa.f31476b.equals("R9") && arrayList.size() == 1 && arrayList.get(0).f31383a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(vw2.m9858a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    m13297i(arrayList, c23.f21078a);
                }
                if (i < 21 && arrayList.size() > 1) {
                    String str3 = arrayList.get(0).f31383a;
                    if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                        m13297i(arrayList, d33.f21471a);
                    }
                }
                if (i < 32 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(arrayList.get(0).f31383a)) {
                    arrayList.add(arrayList.remove(0));
                }
                List<vw2> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(f53Var, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static List<vw2> m13302d(List<vw2> list, C7021u4 c7021u4) {
        ArrayList arrayList = new ArrayList(list);
        m13297i(arrayList, new lb3(c7021u4) { // from class: com.google.android.gms.internal.ads.d13

            /* renamed from: a */
            private final C7021u4 f21448a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21448a = c7021u4;
            }

            @Override // com.google.android.gms.internal.ads.lb3
            /* renamed from: a */
            public final int mo13594a(Object obj) {
                int i;
                C7021u4 c7021u42 = this.f21448a;
                vw2 vw2Var = (vw2) obj;
                int i2 = mc3.f26537d;
                try {
                } catch (zzfy e) {
                    i = -1;
                }
                if (!vw2Var.m9856c(c7021u42)) {
                    i = 0;
                    return i;
                }
                return 1;
            }
        });
        return arrayList;
    }

    /* renamed from: e */
    public static int m13301e() {
        int i;
        if (f26536c == -1) {
            int i2 = 0;
            vw2 m13304b = m13304b("video/avc", false, false);
            if (m13304b != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m13304b.m9857b()) {
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
                            case 131072:
                            case 262144:
                            case 524288:
                                i = 35651584;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, C7101wa.f31475a >= 21 ? 345600 : 172800);
            }
            f26536c = i2;
        }
        return f26536c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0d55  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0d81  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x024e  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m13300f(com.google.android.gms.internal.ads.C7021u4 r5) {
        /*
            Method dump skipped, instructions count: 4687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mc3.m13300f(com.google.android.gms.internal.ads.u4):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x025a, code lost:
        if ("SCV31".equals(r0) == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02b4, code lost:
        if (r0.startsWith("t0") == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03fe, code lost:
        if (r0 == false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ee, code lost:
        if (r0.startsWith("HM") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0189, code lost:
        if ("SO-02E".equals(r0) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01d0, code lost:
        if ("C1605".equals(r0) == false) goto L86;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.gms.internal.ads.vw2> m13299g(com.google.android.gms.internal.ads.f53 r11, com.google.android.gms.internal.ads.g73 r12) {
        /*
            Method dump skipped, instructions count: 1445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mc3.m13299g(com.google.android.gms.internal.ads.f53, com.google.android.gms.internal.ads.g73):java.util.ArrayList");
    }

    /* renamed from: h */
    private static boolean m13298h(MediaCodecInfo mediaCodecInfo) {
        if (C7101wa.f31475a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String m15053a = fu2.m15053a(mediaCodecInfo.getName());
        boolean z = false;
        if (m15053a.startsWith("arc.")) {
            return false;
        }
        if (!m15053a.startsWith("omx.google.") && !m15053a.startsWith("omx.ffmpeg.") && ((!m15053a.startsWith("omx.sec.") || !m15053a.contains(".sw.")) && !m15053a.equals("omx.qcom.video.decoder.hevcswvdec") && !m15053a.startsWith("c2.android.") && !m15053a.startsWith("c2.google."))) {
            if (!m15053a.startsWith("omx.")) {
                if (m15053a.startsWith("c2.")) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: i */
    private static <T> void m13297i(List<T> list, lb3<T> lb3Var) {
        Collections.sort(list, new Comparator(lb3Var) { // from class: com.google.android.gms.internal.ads.e43

            /* renamed from: d */
            private final lb3 f22030d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22030d = lb3Var;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                lb3 lb3Var2 = this.f22030d;
                int i = mc3.f26537d;
                return lb3Var2.mo13594a(obj2) - lb3Var2.mo13594a(obj);
            }
        });
    }
}
