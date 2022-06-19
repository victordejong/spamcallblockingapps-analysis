package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsa.class */
public final class zzsa {
    private static long zza(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i == 1 ? j : i % 2 == 0 ? zza((j * j) % 1073807359, i / 2) % 1073807359 : (j * (zza((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    private static String zza(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzd.zzev("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    private static void zza(int i, long j, String str, int i2, PriorityQueue<zzsd> priorityQueue) {
        zzsd zzsdVar = new zzsd(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().zzbuc <= zzsdVar.zzbuc && priorityQueue.peek().value <= zzsdVar.value)) && !priorityQueue.contains(zzsdVar)) {
            priorityQueue.add(zzsdVar);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    public static void zza(String[] strArr, int i, int i2, PriorityQueue<zzsd> priorityQueue) {
        if (strArr.length < i2) {
            zza(i, zzb(strArr, 0, strArr.length), zza(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        char zzb = zzb(strArr, 0, i2);
        zza(i, zzb, zza(strArr, 0, i2), i2, priorityQueue);
        long zza = zza(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            zzb = ((((((zzb + 65535) - ((((zzrz.zzbr(strArr[i3 - 1]) + 2147483647L) % 1073807359) * zza) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzrz.zzbr(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            zza(i, zzb, zza(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private static long zzb(String[] strArr, int i, int i2) {
        char zzbr = (zzrz.zzbr(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            zzbr = (((zzbr * 8191) % 1073807359) + ((zzrz.zzbr(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return zzbr;
    }
}
