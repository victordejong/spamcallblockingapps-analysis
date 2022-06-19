package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjk.class */
public final class zzfjk {
    public static boolean zza(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int zzb(android.content.Context r6, com.google.android.gms.internal.ads.zzfii r7) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjk.zzb(android.content.Context, com.google.android.gms.internal.ads.zzfii):int");
    }

    private static final void zzc(byte[] bArr, String str, Context context, zzfii zzfiiVar) {
        StringBuilder m8728C = C22128a.m8728C("os.arch:");
        m8728C.append(zzfmh.OS_ARCH.zza());
        m8728C.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                m8728C.append("supported_abis:");
                m8728C.append(Arrays.toString(strArr));
                m8728C.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException e) {
        }
        m8728C.append("CPU_ABI:");
        m8728C.append(Build.CPU_ABI);
        m8728C.append(";CPU_ABI2:");
        m8728C.append(Build.CPU_ABI2);
        m8728C.append(";");
        if (bArr != null) {
            m8728C.append("ELF:");
            m8728C.append(Arrays.toString(bArr));
            m8728C.append(";");
        }
        if (str != null) {
            C22128a.m8669S0(m8728C, "dbg:", str, ";");
        }
        zzfiiVar.zze(4007, m8728C.toString());
    }

    private static final String zzd(Context context, zzfii zzfiiVar) {
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
                zzfiiVar.zzc(2024, 0L, e);
            } catch (NoSuchFieldException e2) {
                zzfiiVar.zzc(2024, 0L, e2);
            }
            String str = Build.CPU_ABI;
            return str != null ? str : Build.CPU_ABI2;
        }
        return zza;
    }
}
