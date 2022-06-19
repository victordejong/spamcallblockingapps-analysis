package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlz.class */
public final class zzlz {
    private static final SparseIntArray zzbdb;
    private static final SparseIntArray zzbdc;
    private static final Map<String, Integer> zzbdd;
    private static final zzlw zzbcy = zzlw.zzay("OMX.google.raw.decoder");
    private static final Pattern zzbcz = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zza, List<zzlw>> zzbda = new HashMap<>();
    private static int zzbde = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlz$zza.class */
    public static final class zza {
        public final String mimeType;
        public final boolean zzbcs;

        public zza(String str, boolean z) {
            this.mimeType = str;
            this.zzbcs = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != zza.class) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return TextUtils.equals(this.mimeType, zzaVar.mimeType) && this.zzbcs == zzaVar.zzbcs;
        }

        public final int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.zzbcs ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        zzbdb = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        zzbdc = sparseIntArray2;
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
        zzbdd = hashMap;
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

    private static Pair<Integer, Integer> zza(String str, String[] strArr) {
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
            Integer valueOf5 = Integer.valueOf(zzbdb.get(num.intValue()));
            if (valueOf5 == null) {
                String valueOf6 = String.valueOf(num);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf6).length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(valueOf6);
                Log.w("MediaCodecUtil", sb.toString());
                return null;
            }
            Integer valueOf7 = Integer.valueOf(zzbdc.get(num2.intValue()));
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

    /* JADX WARN: Code restructure failed: missing block: B:183:0x0406, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025d A[Catch: Exception -> 0x0412, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0412, blocks: (B:2:0x0000, B:6:0x0027, B:10:0x0049, B:13:0x0056, B:15:0x005e, B:17:0x0069, B:19:0x0074, B:21:0x007f, B:23:0x008a, B:25:0x0095, B:28:0x00a3, B:30:0x00ab, B:33:0x00b9, B:35:0x00c1, B:37:0x00cc, B:40:0x00db, B:42:0x00e3, B:44:0x00ee, B:46:0x00fa, B:48:0x0106, B:50:0x0112, B:52:0x011e, B:54:0x012a, B:56:0x0136, B:58:0x0142, B:60:0x014e, B:62:0x015a, B:64:0x0166, B:66:0x0172, B:69:0x0181, B:71:0x0189, B:73:0x0194, B:75:0x01a0, B:77:0x01ac, B:79:0x01b8, B:82:0x01c7, B:85:0x01d3, B:87:0x01de, B:89:0x01ea, B:91:0x01f6, B:93:0x0202, B:95:0x020e, B:97:0x021a, B:100:0x0229, B:102:0x0231, B:104:0x023d, B:111:0x025d, B:116:0x027e, B:155:0x0353, B:158:0x035f, B:160:0x0368, B:161:0x03a9, B:162:0x03ff, B:163:0x0400), top: B:174:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ec A[Catch: Exception -> 0x02df, TRY_ENTER, TryCatch #0 {Exception -> 0x02df, blocks: (B:121:0x02ab, B:123:0x02b7, B:126:0x02c6, B:128:0x02ce, B:136:0x02ec, B:141:0x0300, B:144:0x030a, B:149:0x0329), top: B:170:0x02ab }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0406 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.zzlw> zza(com.google.android.gms.internal.ads.zzlz.zza r7, com.google.android.gms.internal.ads.zzmc r8) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 1053
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zza(com.google.android.gms.internal.ads.zzlz$zza, com.google.android.gms.internal.ads.zzmc):java.util.List");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0092, code lost:
        if (r0.equals("avc1") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzbb(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zzbb(java.lang.String):android.util.Pair");
    }

    public static zzlw zzc(String str, boolean z) throws zzmd {
        List<zzlw> zzd = zzd(str, z);
        if (zzd.isEmpty()) {
            return null;
        }
        return zzd.get(0);
    }

    private static List<zzlw> zzd(String str, boolean z) throws zzmd {
        synchronized (zzlz.class) {
            try {
                zza zzaVar = new zza(str, z);
                HashMap<zza, List<zzlw>> hashMap = zzbda;
                List<zzlw> list = hashMap.get(zzaVar);
                if (list != null) {
                    return list;
                }
                List<zzlw> zza2 = zza(zzaVar, zzpt.SDK_INT >= 21 ? new zzme(z) : new zzmf());
                List<zzlw> list2 = zza2;
                if (z) {
                    list2 = zza2;
                    if (zza2.isEmpty()) {
                        list2 = zza2;
                        if (21 <= zzpt.SDK_INT) {
                            list2 = zza2;
                            if (zzpt.SDK_INT <= 23) {
                                List<zzlw> zza3 = zza(zzaVar, new zzmf());
                                list2 = zza3;
                                if (!zza3.isEmpty()) {
                                    String str2 = zza3.get(0).name;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = zza3;
                                }
                            }
                        }
                    }
                }
                List<zzlw> unmodifiableList = Collections.unmodifiableList(list2);
                hashMap.put(zzaVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzlw zzhj() {
        return zzbcy;
    }

    public static int zzhk() throws zzmd {
        if (zzbde == -1) {
            int i = 0;
            zzlw zzc = zzc("video/avc", false);
            if (zzc != null) {
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzc.zzhi()) {
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
                i = Math.max(i2, zzpt.SDK_INT >= 21 ? 345600 : 172800);
            }
            zzbde = i;
        }
        return zzbde;
    }
}
