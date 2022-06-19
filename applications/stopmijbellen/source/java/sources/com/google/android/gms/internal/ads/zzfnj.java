package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnj.class */
public final class zzfnj {
    public static boolean zza(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int zzb(android.content.Context r6, com.google.android.gms.internal.ads.zzfmh r7) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfnj.zzb(android.content.Context, com.google.android.gms.internal.ads.zzfmh):int");
    }

    private static final String zzc(Context context, zzfmh zzfmhVar) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String zza = zzfqq.OS_ARCH.zza();
        if (TextUtils.isEmpty(zza) || !hashSet.contains(zza)) {
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    if (strArr.length > 0) {
                        return strArr[0];
                    }
                }
            } catch (IllegalAccessException e) {
                zzfmhVar.zzc(2024, 0L, e);
            } catch (NoSuchFieldException e2) {
                zzfmhVar.zzc(2024, 0L, e2);
            }
            String str = Build.CPU_ABI;
            return str != null ? str : Build.CPU_ABI2;
        }
        return zza;
    }

    private static final void zzd(byte[] bArr, String str, Context context, zzfmh zzfmhVar) {
        StringBuilder m8752j = C0082b.m8752j("os.arch:");
        m8752j.append(zzfqq.OS_ARCH.zza());
        m8752j.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                m8752j.append("supported_abis:");
                m8752j.append(Arrays.toString(strArr));
                m8752j.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException e) {
        }
        m8752j.append("CPU_ABI:");
        m8752j.append(Build.CPU_ABI);
        m8752j.append(";CPU_ABI2:");
        m8752j.append(Build.CPU_ABI2);
        m8752j.append(";");
        if (bArr != null) {
            m8752j.append("ELF:");
            m8752j.append(Arrays.toString(bArr));
            m8752j.append(";");
        }
        if (str != null) {
            m8752j.append("dbg:");
            m8752j.append(str);
            m8752j.append(";");
        }
        zzfmhVar.zzb(4007, m8752j.toString());
    }
}
