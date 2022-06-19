package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ps2.class */
public final class ps2 {
    /* renamed from: a */
    public static boolean m12159a(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ec  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m12158b(android.content.Context r6, com.google.android.gms.internal.ads.mr2 r7) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ps2.m12158b(android.content.Context, com.google.android.gms.internal.ads.mr2):int");
    }

    /* renamed from: c */
    private static final void m12157c(byte[] bArr, String str, Context context, mr2 mr2Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("os.arch:");
        sb.append(zzfmh.OS_ARCH.zza());
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
        mr2Var.m13098e(4007, sb.toString());
    }

    /* renamed from: d */
    private static final String m12156d(Context context, mr2 mr2Var) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String zza = zzfmh.OS_ARCH.zza();
        if (TextUtils.isEmpty(zza) || !hashSet.contains(zza)) {
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    if (strArr.length > 0) {
                        return strArr[0];
                    }
                }
            } catch (IllegalAccessException e) {
                mr2Var.m13100c(2024, 0L, e);
            } catch (NoSuchFieldException e2) {
                mr2Var.m13100c(2024, 0L, e2);
            }
            String str = Build.CPU_ABI;
            return str != null ? str : Build.CPU_ABI2;
        }
        return zza;
    }
}
