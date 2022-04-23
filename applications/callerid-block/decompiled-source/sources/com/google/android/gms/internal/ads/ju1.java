package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ju1.class */
public final class ju1 {
    /* renamed from: a */
    public static boolean m6913a(zzhp zzhpVar) {
        zzhp zzhpVar2 = zzhp.b;
        int ordinal = zzhpVar.ordinal();
        return ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x019c, code lost:
        if (r0.equalsIgnoreCase("armv71") != false) goto L_0x019f;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzhp m6912b(android.content.Context r6, com.google.android.gms.internal.ads.et1 r7) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ju1.m6912b(android.content.Context, com.google.android.gms.internal.ads.et1):com.google.android.gms.internal.ads.zzhp");
    }

    /* renamed from: c */
    private static final void m6911c(byte[] bArr, String str, Context context, et1 et1Var) {
        if (et1Var != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("os.arch:");
            sb.append(zzecr.OS_ARCH.zza());
            sb.append(";");
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    sb.append("supported_abis:");
                    sb.append(Arrays.toString(strArr));
                    sb.append(";");
                }
            } catch (IllegalAccessException | NoSuchFieldException e) {
            }
            sb.append("CPU_ABI:");
            sb.append(Build.CPU_ABI);
            sb.append(";CPU_ABI2:");
            sb.append(Build.CPU_ABI2);
            sb.append(";");
            if (bArr != null) {
                sb.append("ELF:");
                sb.append(Arrays.toString(bArr));
                sb.append(";");
            }
            if (str != null) {
                sb.append("dbg:");
                sb.append(str);
                sb.append(";");
            }
            et1Var.m7587f(4007, sb.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (r8 == null) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        if (r8 == null) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        r8.m7589d(2024, 0, r7);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String m6910d(android.content.Context r7, com.google.android.gms.internal.ads.et1 r8) {
        /*
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "i686"
            r3[r4] = r5
            r3 = r2
            r4 = 1
            java.lang.String r5 = "armv71"
            r3[r4] = r5
            java.util.List r2 = java.util.Arrays.asList(r2)
            r1.<init>(r2)
            r7 = r0
            com.google.android.gms.internal.ads.zzecr r0 = com.google.android.gms.internal.ads.zzecr.OS_ARCH
            java.lang.String r0 = r0.zza()
            r9 = r0
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0036
            r0 = r7
            r1 = r9
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0034
            goto L_0x0036
        L_0x0034:
            r0 = r9
            return r0
        L_0x0036:
            java.lang.Class<android.os.Build> r0 = android.os.Build.class
            java.lang.String r1 = "SUPPORTED_ABIS"
            java.lang.reflect.Field r0 = r0.getField(r1)     // Catch: IllegalAccessException -> 0x0054, NoSuchFieldException -> 0x005c
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: IllegalAccessException -> 0x0054, NoSuchFieldException -> 0x005c
            java.lang.String[] r0 = (java.lang.String[]) r0     // Catch: IllegalAccessException -> 0x0054, NoSuchFieldException -> 0x005c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006b
            r0 = r7
            int r0 = r0.length     // Catch: IllegalAccessException -> 0x0054, NoSuchFieldException -> 0x005c
            if (r0 <= 0) goto L_0x006b
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            return r0
        L_0x0054:
            r7 = move-exception
            r0 = r8
            if (r0 == 0) goto L_0x006b
            goto L_0x0061
        L_0x005c:
            r7 = move-exception
            r0 = r8
            if (r0 == 0) goto L_0x006b
        L_0x0061:
            r0 = r8
            r1 = 2024(0x7e8, float:2.836E-42)
            r2 = 0
            r3 = r7
            com.google.android.gms.tasks.g r0 = r0.m7589d(r1, r2, r3)
        L_0x006b:
            java.lang.String r0 = android.os.Build.CPU_ABI
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0075
            r0 = r7
            return r0
        L_0x0075:
            java.lang.String r0 = android.os.Build.CPU_ABI2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ju1.m6910d(android.content.Context, com.google.android.gms.internal.ads.et1):java.lang.String");
    }
}
