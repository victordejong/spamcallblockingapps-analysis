package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xo2.class */
public final class xo2 {

    /* renamed from: c */
    private static final SparseIntArray f9136c;

    /* renamed from: d */
    private static final SparseIntArray f9137d;

    /* renamed from: e */
    private static final Map<String, Integer> f9138e;

    /* renamed from: a */
    private static final Pattern f9134a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    private static final HashMap<to2, List<oo2>> f9135b = new HashMap<>();

    /* renamed from: f */
    private static int f9139f = -1;

    static {
        oo2.m6280a("OMX.google.raw.decoder");
        SparseIntArray sparseIntArray = new SparseIntArray();
        f9136c = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f9137d = sparseIntArray2;
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
        HashMap hashMap = new HashMap();
        f9138e = hashMap;
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
        hashMap.put("H180", Integer.valueOf((int) BitmapGlobalConfig.MIN_MEMORY_CACHE_SIZE));
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    /* renamed from: a */
    public static oo2 m4879a(String str, boolean z) {
        List<oo2> m4878b = m4878b(str, z);
        if (m4878b.isEmpty()) {
            return null;
        }
        return m4878b.get(0);
    }

    /* renamed from: b */
    public static List<oo2> m4878b(String str, boolean z) {
        synchronized (xo2.class) {
            try {
                to2 to2Var = new to2(str, z);
                HashMap<to2, List<oo2>> hashMap = f9135b;
                List<oo2> list = hashMap.get(to2Var);
                if (list != null) {
                    return list;
                }
                int i = zr2.f9434a;
                List<oo2> m4875e = m4875e(to2Var, i >= 21 ? new wo2(z) : new vo2((so2) null));
                List<oo2> list2 = m4875e;
                if (z) {
                    list2 = m4875e;
                    if (m4875e.isEmpty()) {
                        list2 = m4875e;
                        if (i >= 21) {
                            list2 = m4875e;
                            if (i <= 23) {
                                List<oo2> m4875e2 = m4875e(to2Var, new vo2((so2) null));
                                list2 = m4875e2;
                                if (!m4875e2.isEmpty()) {
                                    String str2 = m4875e2.get(0).f7876a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = m4875e2;
                                }
                            }
                        }
                    }
                }
                List<oo2> unmodifiableList = Collections.unmodifiableList(list2);
                hashMap.put(to2Var, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static int m4877c() {
        if (f9139f == -1) {
            int i = 0;
            oo2 m4879a = m4879a("video/avc", false);
            if (m4879a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m4879a.m6278c()) {
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
                            case 8192:
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
                i = Math.max(i2, zr2.f9434a >= 21 ? 345600 : 172800);
            }
            f9139f = i;
        }
        return f9139f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static Pair<Integer, Integer> m4876d(String str) {
        boolean z;
        Pair<Integer, Integer> pair;
        String str2;
        String str3;
        String concat;
        int i;
        String str4;
        int i2;
        Integer num;
        Pair<Integer, Integer> pair2;
        String[] split = str.split("\\.");
        String str5 = split[0];
        switch (str5.hashCode()) {
            case 3006243:
                if (str5.equals("avc1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3006244:
                if (str5.equals("avc2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3199032:
                if (str5.equals("hev1")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 3214780:
                if (str5.equals("hvc1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (z && !z) {
            if (!z && !z) {
                return null;
            }
            int length = split.length;
            if (length < 2) {
                if (str.length() == 0) {
                    str4 = new String("Ignoring malformed AVC codec string: ");
                    Log.w("MediaCodecUtil", str4);
                    pair2 = null;
                    return pair2;
                }
                str4 = "Ignoring malformed AVC codec string: ".concat(str);
                Log.w("MediaCodecUtil", str4);
                pair2 = null;
                return pair2;
            }
            try {
            } catch (NumberFormatException e) {
                if (str.length() == 0) {
                    str4 = new String("Ignoring malformed AVC codec string: ");
                }
            }
            if (split[1].length() == 6) {
                Integer valueOf = Integer.valueOf(Integer.parseInt(split[1].substring(0, 2), 16));
                i2 = Integer.parseInt(split[1].substring(4), 16);
                num = valueOf;
            } else if (length < 3) {
                Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(str) : new String("Ignoring malformed AVC codec string: "));
                pair2 = null;
                return pair2;
            } else {
                Integer valueOf2 = Integer.valueOf(Integer.parseInt(split[1]));
                i2 = Integer.parseInt(split[2]);
                num = valueOf2;
            }
            pair2 = new Pair<>(Integer.valueOf(f9136c.get(num.intValue())), Integer.valueOf(f9137d.get(Integer.valueOf(i2).intValue())));
            return pair2;
        }
        if (split.length < 4) {
            if (str.length() == 0) {
                concat = new String("Ignoring malformed HEVC codec string: ");
                Log.w("MediaCodecUtil", concat);
                pair = null;
            }
            concat = "Ignoring malformed HEVC codec string: ".concat(str);
            Log.w("MediaCodecUtil", concat);
            pair = null;
        } else {
            Matcher matcher = f9134a.matcher(split[1]);
            if (!matcher.matches()) {
                if (str.length() == 0) {
                    concat = new String("Ignoring malformed HEVC codec string: ");
                }
                concat = "Ignoring malformed HEVC codec string: ".concat(str);
            } else {
                String group = matcher.group(1);
                if ("1".equals(group)) {
                    i = 1;
                } else if ("2".equals(group)) {
                    i = 2;
                } else {
                    str3 = String.valueOf(group);
                    str2 = "Unknown HEVC profile string: ";
                    if (str3.length() == 0) {
                        concat = new String("Unknown HEVC profile string: ");
                    }
                    concat = str2.concat(str3);
                }
                Integer num2 = f9138e.get(split[3]);
                if (num2 == null) {
                    str3 = String.valueOf(matcher.group(1));
                    str2 = "Unknown HEVC level string: ";
                    if (str3.length() == 0) {
                        concat = new String("Unknown HEVC level string: ");
                    }
                    concat = str2.concat(str3);
                } else {
                    pair = new Pair<>(Integer.valueOf(i), num2);
                }
            }
            Log.w("MediaCodecUtil", concat);
            pair = null;
        }
        return pair;
    }

    /* JADX WARN: Code restructure failed: missing block: B:266:0x0459, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0341 A[Catch: Exception -> 0x0334, TRY_ENTER, TryCatch #2 {Exception -> 0x0334, blocks: (B:175:0x02fd, B:177:0x030d, B:180:0x031b, B:182:0x0323, B:190:0x0341, B:195:0x0355), top: B:226:0x02fd }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.oo2> m4875e(com.google.android.gms.internal.ads.to2 r7, com.google.android.gms.internal.ads.uo2 r8) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.xo2.m4875e(com.google.android.gms.internal.ads.to2, com.google.android.gms.internal.ads.uo2):java.util.List");
    }
}
