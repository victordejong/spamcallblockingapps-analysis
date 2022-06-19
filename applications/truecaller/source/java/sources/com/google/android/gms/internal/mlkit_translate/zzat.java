package com.google.android.gms.internal.mlkit_translate;

import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzat.class */
public final class zzat {
    private static final zzah<File> zza = new zzaw();
    private static final zzam<File> zzb = new zzav();

    public static File zza() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder(21);
        sb.append(currentTimeMillis);
        sb.append(StringConstant.DASH);
        String sb2 = sb.toString();
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, C22128a.m8690L1(C22128a.m8623f2(sb2, 11), sb2, i));
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException(C22128a.m8701I2(C22128a.m8736A(C22128a.m8623f2(sb2, C22128a.m8623f2(sb2, 66)), "Failed to create directory within 10000 attempts (tried ", sb2, "0 to ", sb2), 9999, ')'));
    }
}
