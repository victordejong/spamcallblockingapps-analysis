package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.gms.ads.AdRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import me.zhanghai.android.materialprogressbar.C3681R;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzato.class */
public final class zzato {
    private static final SparseIntArray zzd;
    private static final SparseIntArray zze;
    private static final Map<String, Integer> zzf;
    private static final zzatc zza = zzatc.zzb("OMX.google.raw.decoder");
    private static final Pattern zzb = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zzath, List<zzatc>> zzc = new HashMap<>();
    private static int zzg = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        zzd = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        zze = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, AdRequest.MAX_CONTENT_URL_LENGTH);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap hashMap = new HashMap();
        zzf = hashMap;
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
        hashMap.put("H93", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH));
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", 524288);
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    public static int zza() throws zzatj {
        if (zzg == -1) {
            int i = 0;
            zzatc zzc2 = zzc("video/avc", false);
            if (zzc2 != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzc2.zzg()) {
                    int i3 = codecProfileLevel.level;
                    int i4 = 9437184;
                    if (i3 == 1 || i3 == 2) {
                        i4 = 25344;
                    } else {
                        switch (i3) {
                            case 8:
                            case 16:
                            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                                i4 = 101376;
                                continue;
                            case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                                i4 = 202752;
                                continue;
                            case 128:
                            case 256:
                                i4 = 414720;
                                continue;
                            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
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
                i = Math.max(i2, zzaxb.zza >= 21 ? 345600 : 172800);
            }
            zzg = i;
        }
        return zzg;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Pair<Integer, Integer> zzb(String str) {
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
                        num = Integer.valueOf(Integer.parseInt(split[1].substring(0, 2), 16));
                        num2 = Integer.valueOf(Integer.parseInt(split[1].substring(4), 16));
                    } else if (length >= 3) {
                        num = Integer.valueOf(Integer.parseInt(split[1]));
                        num2 = Integer.valueOf(Integer.parseInt(split[2]));
                    } else {
                        Log.w("MediaCodecUtil", str.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(str) : new String("Ignoring malformed AVC codec string: "));
                        pair2 = null;
                    }
                    pair2 = new Pair<>(Integer.valueOf(zzd.get(num.intValue())), Integer.valueOf(zze.get(num2.intValue())));
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
            Matcher matcher = zzb.matcher(split[1]);
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
                    String valueOf = String.valueOf(group);
                    Log.w("MediaCodecUtil", valueOf.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf) : new String("Unknown HEVC profile string: "));
                    pair = null;
                }
                Integer num3 = zzf.get(split[3]);
                if (num3 == null) {
                    String valueOf2 = String.valueOf(matcher.group(1));
                    Log.w("MediaCodecUtil", valueOf2.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf2) : new String("Unknown HEVC level string: "));
                    pair = null;
                } else {
                    pair = new Pair<>(Integer.valueOf(i), num3);
                }
            }
        }
        return pair;
    }

    public static zzatc zzc(String str, boolean z) throws zzatj {
        List<zzatc> zzd2 = zzd(str, z);
        if (zzd2.isEmpty()) {
            return null;
        }
        return zzd2.get(0);
    }

    public static List<zzatc> zzd(String str, boolean z) throws zzatj {
        synchronized (zzato.class) {
            try {
                zzath zzathVar = new zzath(str, z);
                HashMap<zzath, List<zzatc>> hashMap = zzc;
                List<zzatc> list = hashMap.get(zzathVar);
                if (list != null) {
                    return list;
                }
                int i = zzaxb.zza;
                List<zzatc> zze2 = zze(zzathVar, i >= 21 ? new zzatn(z) : new zzatm(null));
                List<zzatc> list2 = zze2;
                if (z) {
                    list2 = zze2;
                    if (zze2.isEmpty()) {
                        list2 = zze2;
                        if (i >= 21) {
                            list2 = zze2;
                            if (i <= 23) {
                                List<zzatc> zze3 = zze(zzathVar, new zzatm(null));
                                list2 = zze3;
                                if (!zze3.isEmpty()) {
                                    String str2 = zze3.get(0).zza;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = zze3;
                                }
                            }
                        }
                    }
                }
                List<zzatc> unmodifiableList = Collections.unmodifiableList(list2);
                hashMap.put(zzathVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:264:0x03ef, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0341 A[Catch: Exception -> 0x0334, TRY_ENTER, TryCatch #3 {Exception -> 0x0334, blocks: (B:175:0x02fd, B:177:0x030d, B:180:0x031b, B:182:0x0323, B:190:0x0341, B:195:0x0355), top: B:226:0x02fd }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.zzatc> zze(com.google.android.gms.internal.ads.zzath r7, com.google.android.gms.internal.ads.zzatk r8) throws com.google.android.gms.internal.ads.zzatj {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzato.zze(com.google.android.gms.internal.ads.zzath, com.google.android.gms.internal.ads.zzatk):java.util.List");
    }
}
