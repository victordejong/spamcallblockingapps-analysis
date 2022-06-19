package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxg.class */
public final class zzxg {
    public final List<byte[]> zza;
    public final int zzb;
    public final float zzc;
    public final String zzd;

    private zzxg(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = f;
        this.zzd = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:188:0x04c6 A[Catch: ArrayIndexOutOfBoundsException -> 0x0597, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0597, blocks: (B:2:0x0000, B:6:0x0021, B:10:0x0036, B:12:0x0045, B:14:0x0057, B:18:0x007a, B:22:0x0091, B:24:0x00a9, B:29:0x00c5, B:34:0x0114, B:39:0x012d, B:43:0x013b, B:44:0x014c, B:49:0x0164, B:54:0x0175, B:59:0x0189, B:62:0x019a, B:64:0x01a4, B:67:0x01b8, B:69:0x01bf, B:71:0x01d5, B:86:0x023b, B:93:0x0268, B:94:0x0280, B:96:0x02ac, B:100:0x02bc, B:109:0x02df, B:111:0x02e7, B:113:0x02f0, B:116:0x0306, B:121:0x0316, B:129:0x0345, B:131:0x0353, B:133:0x036d, B:139:0x0387, B:142:0x0393, B:146:0x03a8, B:148:0x03b0, B:149:0x03b5, B:150:0x03be, B:154:0x03d6, B:158:0x03f1, B:161:0x040f, B:165:0x041a, B:167:0x0424, B:168:0x0433, B:170:0x0441, B:172:0x0449, B:175:0x045a, B:182:0x0489, B:183:0x0494, B:186:0x04be, B:188:0x04c6, B:190:0x04cd, B:192:0x04d3, B:194:0x04e1, B:196:0x04ea, B:198:0x04f0, B:200:0x04fe, B:202:0x0508, B:207:0x0522, B:211:0x0553, B:216:0x0572, B:217:0x0579, B:218:0x057f, B:218:0x057f, B:219:0x0582), top: B:224:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04d3 A[Catch: ArrayIndexOutOfBoundsException -> 0x0597, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0597, blocks: (B:2:0x0000, B:6:0x0021, B:10:0x0036, B:12:0x0045, B:14:0x0057, B:18:0x007a, B:22:0x0091, B:24:0x00a9, B:29:0x00c5, B:34:0x0114, B:39:0x012d, B:43:0x013b, B:44:0x014c, B:49:0x0164, B:54:0x0175, B:59:0x0189, B:62:0x019a, B:64:0x01a4, B:67:0x01b8, B:69:0x01bf, B:71:0x01d5, B:86:0x023b, B:93:0x0268, B:94:0x0280, B:96:0x02ac, B:100:0x02bc, B:109:0x02df, B:111:0x02e7, B:113:0x02f0, B:116:0x0306, B:121:0x0316, B:129:0x0345, B:131:0x0353, B:133:0x036d, B:139:0x0387, B:142:0x0393, B:146:0x03a8, B:148:0x03b0, B:149:0x03b5, B:150:0x03be, B:154:0x03d6, B:158:0x03f1, B:161:0x040f, B:165:0x041a, B:167:0x0424, B:168:0x0433, B:170:0x0441, B:172:0x0449, B:175:0x045a, B:182:0x0489, B:183:0x0494, B:186:0x04be, B:188:0x04c6, B:190:0x04cd, B:192:0x04d3, B:194:0x04e1, B:196:0x04ea, B:198:0x04f0, B:200:0x04fe, B:202:0x0508, B:207:0x0522, B:211:0x0553, B:216:0x0572, B:217:0x0579, B:218:0x057f, B:218:0x057f, B:219:0x0582), top: B:224:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04f0 A[Catch: ArrayIndexOutOfBoundsException -> 0x0597, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0597, blocks: (B:2:0x0000, B:6:0x0021, B:10:0x0036, B:12:0x0045, B:14:0x0057, B:18:0x007a, B:22:0x0091, B:24:0x00a9, B:29:0x00c5, B:34:0x0114, B:39:0x012d, B:43:0x013b, B:44:0x014c, B:49:0x0164, B:54:0x0175, B:59:0x0189, B:62:0x019a, B:64:0x01a4, B:67:0x01b8, B:69:0x01bf, B:71:0x01d5, B:86:0x023b, B:93:0x0268, B:94:0x0280, B:96:0x02ac, B:100:0x02bc, B:109:0x02df, B:111:0x02e7, B:113:0x02f0, B:116:0x0306, B:121:0x0316, B:129:0x0345, B:131:0x0353, B:133:0x036d, B:139:0x0387, B:142:0x0393, B:146:0x03a8, B:148:0x03b0, B:149:0x03b5, B:150:0x03be, B:154:0x03d6, B:158:0x03f1, B:161:0x040f, B:165:0x041a, B:167:0x0424, B:168:0x0433, B:170:0x0441, B:172:0x0449, B:175:0x045a, B:182:0x0489, B:183:0x0494, B:186:0x04be, B:188:0x04c6, B:190:0x04cd, B:192:0x04d3, B:194:0x04e1, B:196:0x04ea, B:198:0x04f0, B:200:0x04fe, B:202:0x0508, B:207:0x0522, B:211:0x0553, B:216:0x0572, B:217:0x0579, B:218:0x057f, B:218:0x057f, B:219:0x0582), top: B:224:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0213  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzxg zza(com.google.android.gms.internal.ads.zzfd r9) throws com.google.android.gms.internal.ads.zzbj {
        /*
            Method dump skipped, instructions count: 1439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxg.zza(com.google.android.gms.internal.ads.zzfd):com.google.android.gms.internal.ads.zzxg");
    }
}
