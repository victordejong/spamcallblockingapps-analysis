package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import io.objectbox.model.PropertyFlags;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzt.class */
public final class dzt {

    /* renamed from: d */
    private static final SparseIntArray f48445d;

    /* renamed from: e */
    private static final SparseIntArray f48446e;

    /* renamed from: f */
    private static final Map<String, Integer> f48447f;

    /* renamed from: a */
    private static final dzr f48442a = new dzr("OMX.google.raw.decoder", null, null, false, false);

    /* renamed from: b */
    private static final Pattern f48443b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    private static final HashMap<C12434a, List<dzr>> f48444c = new HashMap<>();

    /* renamed from: g */
    private static int f48448g = -1;

    /* renamed from: com.google.android.gms.internal.ads.dzt$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzt$a.class */
    public static final class C12434a {

        /* renamed from: a */
        public final String f48449a;

        /* renamed from: b */
        public final boolean f48450b;

        public C12434a(String str, boolean z) {
            this.f48449a = str;
            this.f48450b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C12434a.class) {
                return false;
            }
            C12434a c12434a = (C12434a) obj;
            return TextUtils.equals(this.f48449a, c12434a.f48449a) && this.f48450b == c12434a.f48450b;
        }

        public final int hashCode() {
            String str = this.f48449a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f48450b ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f48445d = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f48446e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, PropertyFlags.UNSIGNED);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap hashMap = new HashMap();
        f48447f = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", Integer.valueOf((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
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
    }

    /* renamed from: a */
    public static int m15389a() throws zzmd {
        if (f48448g == -1) {
            int i = 0;
            dzr m15386a = m15386a("video/avc", false);
            if (m15386a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m15386a.m15394a()) {
                    int i3 = codecProfileLevel.level;
                    int i4 = 9437184;
                    if (i3 == 1 || i3 == 2) {
                        i4 = 25344;
                    } else {
                        switch (i3) {
                            case 8:
                            case 16:
                            case 32:
                                i4 = 101376;
                                continue;
                            case 64:
                                i4 = 202752;
                                continue;
                            case 128:
                            case PropertyFlags.INDEX_PARTIAL_SKIP_NULL /* 256 */:
                                i4 = 414720;
                                continue;
                            case 512:
                                i4 = 921600;
                                continue;
                            case 1024:
                                i4 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i4 = 2097152;
                                continue;
                            case PropertyFlags.UNSIGNED /* 8192 */:
                                i4 = 2228224;
                                continue;
                            case 16384:
                                i4 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                break;
                            default:
                                i4 = -1;
                                continue;
                        }
                    }
                    i2 = Math.max(i4, i2);
                }
                i = Math.max(i2, ede.f48739a >= 21 ? 345600 : 172800);
            }
            f48448g = i;
        }
        return f48448g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
        if (r0.equals("avc1") == false) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m15387a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzt.m15387a(java.lang.String):android.util.Pair");
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m15385a(String str, String[] strArr) {
        Integer num;
        Integer num2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                Integer valueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                Integer valueOf3 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                num = valueOf2;
                num2 = valueOf3;
            } else if (strArr.length < 3) {
                String valueOf4 = String.valueOf(str);
                Log.w("MediaCodecUtil", valueOf4.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf4) : new String("Ignoring malformed AVC codec string: "));
                return null;
            } else {
                int parseInt = Integer.parseInt(strArr[1]);
                num2 = Integer.valueOf(Integer.parseInt(strArr[2]));
                num = Integer.valueOf(parseInt);
            }
            Integer valueOf5 = Integer.valueOf(f48445d.get(num.intValue()));
            if (valueOf5 == null) {
                String valueOf6 = String.valueOf(num);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf6).length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(valueOf6);
                Log.w("MediaCodecUtil", sb.toString());
                return null;
            }
            Integer valueOf7 = Integer.valueOf(f48446e.get(num2.intValue()));
            if (valueOf7 != null) {
                return new Pair<>(valueOf5, valueOf7);
            }
            String valueOf8 = String.valueOf(num2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf8).length() + 19);
            sb2.append("Unknown AVC level: ");
            sb2.append(valueOf8);
            Log.w("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf9 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf9.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf9) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* renamed from: a */
    public static dzr m15386a(String str, boolean z) throws zzmd {
        List<dzr> m15384b = m15384b(str, z);
        if (m15384b.isEmpty()) {
            return null;
        }
        return m15384b.get(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:183:0x0408, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025e A[Catch: Exception -> 0x0414, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0414, blocks: (B:2:0x0000, B:6:0x0027, B:10:0x0049, B:13:0x0057, B:15:0x005f, B:17:0x006a, B:19:0x0075, B:21:0x0080, B:23:0x008b, B:25:0x0096, B:28:0x00a4, B:30:0x00ac, B:33:0x00ba, B:35:0x00c2, B:37:0x00cd, B:40:0x00dc, B:42:0x00e4, B:44:0x00ef, B:46:0x00fb, B:48:0x0107, B:50:0x0113, B:52:0x011f, B:54:0x012b, B:56:0x0137, B:58:0x0143, B:60:0x014f, B:62:0x015b, B:64:0x0167, B:66:0x0173, B:69:0x0182, B:71:0x018a, B:73:0x0195, B:75:0x01a1, B:77:0x01ad, B:79:0x01b9, B:82:0x01c8, B:85:0x01d4, B:87:0x01df, B:89:0x01eb, B:91:0x01f7, B:93:0x0203, B:95:0x020f, B:97:0x021b, B:100:0x022a, B:102:0x0232, B:104:0x023e, B:111:0x025e, B:116:0x027f, B:155:0x0355, B:158:0x0361, B:160:0x036a, B:161:0x03ab, B:162:0x0401, B:163:0x0402), top: B:174:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ed A[Catch: Exception -> 0x02e0, TRY_ENTER, TryCatch #0 {Exception -> 0x02e0, blocks: (B:121:0x02ac, B:123:0x02b8, B:126:0x02c7, B:128:0x02cf, B:136:0x02ed, B:141:0x0301, B:144:0x030b, B:149:0x032a), top: B:170:0x02ac }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0408 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.dzr> m15388a(com.google.android.gms.internal.ads.dzt.C12434a r7, com.google.android.gms.internal.ads.dzx r8) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzt.m15388a(com.google.android.gms.internal.ads.dzt$a, com.google.android.gms.internal.ads.dzx):java.util.List");
    }

    /* renamed from: b */
    private static List<dzr> m15384b(String str, boolean z) throws zzmd {
        synchronized (dzt.class) {
            try {
                C12434a c12434a = new C12434a(str, z);
                HashMap<C12434a, List<dzr>> hashMap = f48444c;
                List<dzr> list = hashMap.get(c12434a);
                if (list != null) {
                    return list;
                }
                List<dzr> m15388a = m15388a(c12434a, ede.f48739a >= 21 ? new dzy(z) : new dzz());
                List<dzr> list2 = m15388a;
                if (z) {
                    list2 = m15388a;
                    if (m15388a.isEmpty()) {
                        list2 = m15388a;
                        if (21 <= ede.f48739a) {
                            list2 = m15388a;
                            if (ede.f48739a <= 23) {
                                List<dzr> m15388a2 = m15388a(c12434a, new dzz());
                                list2 = m15388a2;
                                if (!m15388a2.isEmpty()) {
                                    String str2 = m15388a2.get(0).f48435a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = m15388a2;
                                }
                            }
                        }
                    }
                }
                List<dzr> unmodifiableList = Collections.unmodifiableList(list2);
                hashMap.put(c12434a, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
