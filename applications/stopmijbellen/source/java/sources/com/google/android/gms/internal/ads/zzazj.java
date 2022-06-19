package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazj.class */
public final class zzazj {
    @VisibleForTesting
    public static long zza(long j, int i) {
        return i == 1 ? j : (i & 1) == 0 ? zza((j * j) % 1073807359, i >> 1) % 1073807359 : ((zza((j * j) % 1073807359, i >> 1) % 1073807359) * j) % 1073807359;
    }

    @VisibleForTesting
    public static String zzb(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzciz.zzg("Unable to construct shingle");
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

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    public static void zzc(String[] strArr, int i, int i2, PriorityQueue<zzazi> priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            zzd(i, zze(strArr, 0, length), zzb(strArr, 0, length), length, priorityQueue);
            return;
        }
        char zze = zze(strArr, 0, 6);
        zzd(i, zze, zzb(strArr, 0, 6), 6, priorityQueue);
        long zza = zza(16785407L, 5);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 >= length2 - 5) {
                return;
            }
            zze = (((zzazf.zza(strArr[i3 + 5]) + 2147483647L) % 1073807359) + (((((zze + 65535) - ((((zzazf.zza(strArr[i3 - 1]) + 2147483647L) % 1073807359) * zza) % 1073807359)) % 1073807359) * 16785407) % 1073807359)) % 1073807359;
            zzd(i, zze, zzb(strArr, i3, 6), length2, priorityQueue);
            i3++;
        }
    }

    @VisibleForTesting
    public static void zzd(int i, long j, String str, int i2, PriorityQueue<zzazi> priorityQueue) {
        zzazi zzaziVar = new zzazi(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().zzc <= zzaziVar.zzc && priorityQueue.peek().zza <= zzaziVar.zza)) && !priorityQueue.contains(zzaziVar)) {
            priorityQueue.add(zzaziVar);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private static long zze(String[] strArr, int i, int i2) {
        char zza = (zzazf.zza(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            zza = (((zzazf.zza(strArr[i3]) + 2147483647L) % 1073807359) + ((zza * 8191) % 1073807359)) % 1073807359;
        }
        return zza;
    }
}
