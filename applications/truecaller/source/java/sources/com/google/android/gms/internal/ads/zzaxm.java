package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.PriorityQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxm.class */
public final class zzaxm {
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    public static void zza(String[] strArr, int i, int i2, PriorityQueue<zzaxl> priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            zzb(i, zze(strArr, 0, length), zzc(strArr, 0, length), length, priorityQueue);
            return;
        }
        char zze = zze(strArr, 0, 6);
        zzb(i, zze, zzc(strArr, 0, 6), 6, priorityQueue);
        long zzd = zzd(16785407L, 5);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 >= length2 - 5) {
                return;
            }
            zze = (((zzaxi.zza(strArr[i3 + 5]) + 2147483647L) % 1073807359) + (((((zze + 65535) - ((((zzaxi.zza(strArr[i3 - 1]) + 2147483647L) % 1073807359) * zzd) % 1073807359)) % 1073807359) * 16785407) % 1073807359)) % 1073807359;
            zzb(i, zze, zzc(strArr, i3, 6), length2, priorityQueue);
            i3++;
        }
    }

    @VisibleForTesting
    public static void zzb(int i, long j, String str, int i2, PriorityQueue<zzaxl> priorityQueue) {
        zzaxl zzaxlVar = new zzaxl(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().zzc <= zzaxlVar.zzc && priorityQueue.peek().zza <= zzaxlVar.zza)) && !priorityQueue.contains(zzaxlVar)) {
            priorityQueue.add(zzaxlVar);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    @VisibleForTesting
    public static String zzc(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzcgt.zzf("Unable to construct shingle");
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

    @VisibleForTesting
    public static long zzd(long j, int i) {
        return i == 1 ? j : (i & 1) == 0 ? zzd((j * j) % 1073807359, i >> 1) % 1073807359 : ((zzd((j * j) % 1073807359, i >> 1) % 1073807359) * j) % 1073807359;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private static long zze(String[] strArr, int i, int i2) {
        char zza = (zzaxi.zza(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            zza = (((zzaxi.zza(strArr[i3]) + 2147483647L) % 1073807359) + ((zza * 8191) % 1073807359)) % 1073807359;
        }
        return zza;
    }
}
