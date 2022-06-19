package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.qf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qf.class */
public final class C6884qf {

    /* renamed from: d */
    private static final SparseIntArray f28451d;

    /* renamed from: e */
    private static final SparseIntArray f28452e;

    /* renamed from: f */
    private static final Map<String, Integer> f28453f;

    /* renamed from: a */
    private static final C6550hf f28448a = C6550hf.m14686a("OMX.google.raw.decoder");

    /* renamed from: b */
    private static final Pattern f28449b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    private static final HashMap<C6699lf, List<C6550hf>> f28450c = new HashMap<>();

    /* renamed from: g */
    private static int f28454g = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f28451d = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f28452e = sparseIntArray2;
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
        f28453f = hashMap;
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
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    /* renamed from: a */
    public static C6550hf m11913a(String str, boolean z) {
        List<C6550hf> m11912b = m11912b(str, z);
        if (m11912b.isEmpty()) {
            return null;
        }
        return m11912b.get(0);
    }

    /* renamed from: b */
    public static List<C6550hf> m11912b(String str, boolean z) {
        synchronized (C6884qf.class) {
            try {
                C6699lf c6699lf = new C6699lf(str, z);
                HashMap<C6699lf, List<C6550hf>> hashMap = f28450c;
                List<C6550hf> list = hashMap.get(c6699lf);
                if (list != null) {
                    return list;
                }
                int i = C6961si.f29514a;
                List<C6550hf> m11909e = m11909e(c6699lf, i >= 21 ? new C6810of(z) : new C6773nf(null));
                List<C6550hf> list2 = m11909e;
                if (z) {
                    list2 = m11909e;
                    if (m11909e.isEmpty()) {
                        list2 = m11909e;
                        if (i >= 21) {
                            list2 = m11909e;
                            if (i <= 23) {
                                List<C6550hf> m11909e2 = m11909e(c6699lf, new C6773nf(null));
                                list2 = m11909e2;
                                if (!m11909e2.isEmpty()) {
                                    String str2 = m11909e2.get(0).f23881a;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = m11909e2;
                                }
                            }
                        }
                    }
                }
                List<C6550hf> unmodifiableList = Collections.unmodifiableList(list2);
                hashMap.put(c6699lf, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static int m11911c() {
        if (f28454g == -1) {
            int i = 0;
            C6550hf m11913a = m11913a("video/avc", false);
            if (m11913a != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m11913a.m14684c()) {
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
                i = Math.max(i2, C6961si.f29514a >= 21 ? 345600 : 172800);
            }
            f28454g = i;
        }
        return f28454g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static Pair<Integer, Integer> m11910d(String str) {
        boolean z;
        Pair<Integer, Integer> pair;
        int i;
        Pair<Integer, Integer> pair2;
        Integer num;
        Integer num2;
        String[] split = str.split("\\.");
        String str2 = split[0];
        switch (str2.hashCode()) {
            case 3006243:
                if (str2.equals("avc1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3006244:
                if (str2.equals("avc2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3199032:
                if (str2.equals("hev1")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 3214780:
                if (str2.equals("hvc1")) {
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
                Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(str) : new String("Ignoring malformed AVC codec string: "));
                pair2 = null;
            } else {
                try {
                    if (split[1].length() == 6) {
                        num2 = Integer.valueOf(Integer.parseInt(split[1].substring(0, 2), 16));
                        num = Integer.valueOf(Integer.parseInt(split[1].substring(4), 16));
                    } else if (length >= 3) {
                        Integer valueOf = Integer.valueOf(Integer.parseInt(split[1]));
                        num = Integer.valueOf(Integer.parseInt(split[2]));
                        num2 = valueOf;
                    } else {
                        Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(str) : new String("Ignoring malformed AVC codec string: "));
                        pair2 = null;
                    }
                    pair2 = new Pair<>(Integer.valueOf(f28451d.get(num2.intValue())), Integer.valueOf(f28452e.get(num.intValue())));
                } catch (NumberFormatException e) {
                    Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(str) : new String("Ignoring malformed AVC codec string: "));
                    pair2 = null;
                }
            }
            return pair2;
        }
        if (split.length < 4) {
            Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(str) : new String("Ignoring malformed HEVC codec string: "));
            pair = null;
        } else {
            Matcher matcher = f28449b.matcher(split[1]);
            if (!matcher.matches()) {
                Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(str) : new String("Ignoring malformed HEVC codec string: "));
                pair = null;
            } else {
                String group = matcher.group(1);
                if ("1".equals(group)) {
                    i = 1;
                } else if ("2".equals(group)) {
                    i = 2;
                } else {
                    String valueOf2 = String.valueOf(group);
                    Log.w("MediaCodecUtil", valueOf2.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf2) : new String("Unknown HEVC profile string: "));
                    pair = null;
                }
                Integer num3 = f28453f.get(split[3]);
                if (num3 == null) {
                    String valueOf3 = String.valueOf(matcher.group(1));
                    Log.w("MediaCodecUtil", valueOf3.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf3) : new String("Unknown HEVC level string: "));
                    pair = null;
                } else {
                    pair = new Pair<>(Integer.valueOf(i), num3);
                }
            }
        }
        return pair;
    }

    /* JADX WARN: Code restructure failed: missing block: B:265:0x0456, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0341 A[Catch: Exception -> 0x0334, TRY_ENTER, TryCatch #1 {Exception -> 0x0334, blocks: (B:175:0x02fd, B:177:0x030d, B:180:0x031b, B:182:0x0323, B:190:0x0341, B:195:0x0355), top: B:223:0x02fd }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.C6550hf> m11909e(com.google.android.gms.internal.ads.C6699lf r7, com.google.android.gms.internal.ads.AbstractC6736mf r8) {
        /*
            Method dump skipped, instructions count: 1133
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6884qf.m11909e(com.google.android.gms.internal.ads.lf, com.google.android.gms.internal.ads.mf):java.util.List");
    }
}
