package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.RegularImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p253a.be0;
import p131c.p161d.p170b.p224d.p252g.p253a.zd0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzly.class */
public final class zzly {

    /* renamed from: d */
    public static final SparseIntArray f28612d;

    /* renamed from: e */
    public static final SparseIntArray f28613e;

    /* renamed from: f */
    public static final Map<String, Integer> f28614f;

    /* renamed from: a */
    public static final zzlr f28609a = zzlr.m11835c("OMX.google.raw.decoder");

    /* renamed from: b */
    public static final Pattern f28610b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    public static final HashMap<C7265a, List<zzlr>> f28611c = new HashMap<>();

    /* renamed from: g */
    public static int f28615g = -1;

    /* renamed from: com.google.android.gms.internal.ads.zzly$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzly$a.class */
    public static final class C7265a {

        /* renamed from: a */
        public final String f28616a;

        /* renamed from: b */
        public final boolean f28617b;

        public C7265a(String str, boolean z) {
            this.f28616a = str;
            this.f28617b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C7265a.class) {
                return false;
            }
            C7265a aVar = (C7265a) obj;
            return TextUtils.equals(this.f28616a, aVar.f28616a) && this.f28617b == aVar.f28617b;
        }

        public final int hashCode() {
            String str = this.f28616a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f28617b ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f28612d = sparseIntArray;
        sparseIntArray.put(66, 1);
        f28612d.put(77, 2);
        f28612d.put(88, 4);
        f28612d.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f28613e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f28613e.put(11, 4);
        f28613e.put(12, 8);
        f28613e.put(13, 16);
        f28613e.put(20, 32);
        f28613e.put(21, 64);
        f28613e.put(22, 128);
        f28613e.put(30, 256);
        f28613e.put(31, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        f28613e.put(32, 1024);
        f28613e.put(40, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        f28613e.put(41, 4096);
        f28613e.put(42, 8192);
        f28613e.put(50, 16384);
        f28613e.put(51, RegularImmutableMap.SHORT_MAX_SIZE);
        f28613e.put(52, MapMakerInternalMap.MAX_SEGMENTS);
        HashMap hashMap = new HashMap();
        f28614f = hashMap;
        hashMap.put("L30", 1);
        f28614f.put("L60", 4);
        f28614f.put("L63", 16);
        f28614f.put("L90", 64);
        f28614f.put("L93", 256);
        f28614f.put("L120", 1024);
        f28614f.put("L123", 4096);
        f28614f.put("L150", 16384);
        f28614f.put("L153", Integer.valueOf((int) MapMakerInternalMap.MAX_SEGMENTS));
        f28614f.put("L156", 262144);
        f28614f.put("L180", 1048576);
        f28614f.put("L183", 4194304);
        f28614f.put("L186", 16777216);
        f28614f.put("H30", 2);
        f28614f.put("H60", 8);
        f28614f.put("H63", 32);
        f28614f.put("H90", 128);
        f28614f.put("H93", Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN));
        f28614f.put("H120", Integer.valueOf((int) RecyclerView.AbstractC0495b0.FLAG_MOVED));
        f28614f.put("H123", 8192);
        f28614f.put("H150", Integer.valueOf((int) RegularImmutableMap.SHORT_MAX_SIZE));
        f28614f.put("H153", 131072);
        f28614f.put("H156", 524288);
        f28614f.put("H180", 2097152);
        f28614f.put("H183", 8388608);
        f28614f.put("H186", 33554432);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005f, code lost:
        if (r0.equals("hev1") != false) goto L_0x0083;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m11817a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzly.m11817a(java.lang.String):android.util.Pair");
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m11815a(String str, String[] strArr) {
        Integer num;
        Integer num2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                num = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                num2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
            } else if (strArr.length >= 3) {
                int parseInt = Integer.parseInt(strArr[1]);
                num2 = Integer.valueOf(Integer.parseInt(strArr[2]));
                num = Integer.valueOf(parseInt);
            } else {
                String valueOf2 = String.valueOf(str);
                Log.w("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            Integer valueOf3 = Integer.valueOf(f28612d.get(num.intValue()));
            if (valueOf3 == null) {
                String valueOf4 = String.valueOf(num);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf4).length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(valueOf4);
                Log.w("MediaCodecUtil", sb.toString());
                return null;
            }
            Integer valueOf5 = Integer.valueOf(f28613e.get(num2.intValue()));
            if (valueOf5 != null) {
                return new Pair<>(valueOf3, valueOf5);
            }
            String valueOf6 = String.valueOf(num2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf6).length() + 19);
            sb2.append("Unknown AVC level: ");
            sb2.append(valueOf6);
            Log.w("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf7 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf7.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf7) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* renamed from: a */
    public static zzlr m11819a() {
        return f28609a;
    }

    /* renamed from: a */
    public static zzlr m11816a(String str, boolean z) throws zzlz {
        List<zzlr> b = m11813b(str, z);
        if (b.isEmpty()) {
            return null;
        }
        return b.get(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x0408, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025e A[Catch: Exception -> 0x0414, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0414, blocks: (B:2:0x0000, B:6:0x0027, B:10:0x0049, B:13:0x0057, B:15:0x005f, B:17:0x006a, B:19:0x0075, B:21:0x0080, B:23:0x008b, B:25:0x0096, B:28:0x00a4, B:30:0x00ac, B:33:0x00ba, B:35:0x00c2, B:37:0x00cd, B:40:0x00dc, B:42:0x00e4, B:44:0x00ef, B:46:0x00fb, B:48:0x0107, B:50:0x0113, B:52:0x011f, B:54:0x012b, B:56:0x0137, B:58:0x0143, B:60:0x014f, B:62:0x015b, B:64:0x0167, B:66:0x0173, B:69:0x0182, B:71:0x018a, B:73:0x0195, B:75:0x01a1, B:77:0x01ad, B:79:0x01b9, B:82:0x01c8, B:85:0x01d4, B:87:0x01df, B:89:0x01eb, B:91:0x01f7, B:93:0x0203, B:95:0x020f, B:97:0x021b, B:100:0x022a, B:102:0x0232, B:104:0x023e, B:111:0x025e, B:116:0x027f, B:155:0x0355, B:158:0x0361, B:160:0x036a, B:161:0x03ab, B:162:0x0401, B:163:0x0402), top: B:175:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ed A[Catch: Exception -> 0x02e0, TRY_ENTER, TryCatch #0 {Exception -> 0x02e0, blocks: (B:121:0x02ac, B:123:0x02b8, B:126:0x02c7, B:128:0x02cf, B:136:0x02ed, B:141:0x0301, B:144:0x030b, B:149:0x032a), top: B:171:0x02ac }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0408 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.google.android.gms.internal.ads.zzlr> m11818a(com.google.android.gms.internal.ads.zzly.C7265a r7, p131c.p161d.p170b.p224d.p252g.p253a.ae0 r8) throws com.google.android.gms.internal.ads.zzlz {
        /*
            Method dump skipped, instructions count: 1063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzly.m11818a(com.google.android.gms.internal.ads.zzly$a, c.d.b.d.g.a.ae0):java.util.List");
    }

    /* renamed from: b */
    public static int m11814b() throws zzlz {
        if (f28615g == -1) {
            int i = 0;
            zzlr a = m11816a("video/avc", false);
            if (a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a.m11844a()) {
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
                            case 256:
                                i4 = 414720;
                                continue;
                            case RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN /* 512 */:
                                i4 = 921600;
                                continue;
                            case 1024:
                                i4 = 1310720;
                                continue;
                            case RecyclerView.AbstractC0495b0.FLAG_MOVED /* 2048 */:
                            case 4096:
                                i4 = 2097152;
                                continue;
                            case 8192:
                                i4 = 2228224;
                                continue;
                            case 16384:
                                i4 = 5652480;
                                continue;
                            case RegularImmutableMap.SHORT_MAX_SIZE /* 32768 */:
                            case MapMakerInternalMap.MAX_SEGMENTS /* 65536 */:
                                break;
                            default:
                                i4 = -1;
                                continue;
                        }
                    }
                    i2 = Math.max(i4, i2);
                }
                i = Math.max(i2, zzpq.f28786a >= 21 ? 345600 : 172800);
            }
            f28615g = i;
        }
        return f28615g;
    }

    /* renamed from: b */
    public static List<zzlr> m11813b(String str, boolean z) throws zzlz {
        synchronized (zzly.class) {
            try {
                C7265a aVar = new C7265a(str, z);
                List<zzlr> list = f28611c.get(aVar);
                if (list != null) {
                    return list;
                }
                List<zzlr> a = m11818a(aVar, zzpq.f28786a >= 21 ? new be0(z) : new zd0());
                List<zzlr> list2 = a;
                if (z) {
                    list2 = a;
                    if (a.isEmpty()) {
                        list2 = a;
                        if (21 <= zzpq.f28786a) {
                            list2 = a;
                            if (zzpq.f28786a <= 23) {
                                List<zzlr> a2 = m11818a(aVar, new zd0());
                                list2 = a2;
                                if (!a2.isEmpty()) {
                                    String str2 = a2.get(0).f28563a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = a2;
                                }
                            }
                        }
                    }
                }
                List<zzlr> unmodifiableList = Collections.unmodifiableList(list2);
                f28611c.put(aVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
