package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzru.class */
public final class zzru {
    private final int zzbud;
    private final zzrv zzbuf = new zzry();
    private final int zzbuc = 6;
    private final int zzbue = 0;

    public zzru(int i) {
        this.zzbud = i;
    }

    private final String zzbp(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zzrw zzrwVar = new zzrw();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbud, new zzrx(this));
        for (String str2 : split) {
            String[] zze = zzrz.zze(str2, false);
            if (zze.length != 0) {
                zzsa.zza(zze, this.zzbud, this.zzbuc, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzrwVar.write(this.zzbuf.zzbq(((zzsd) it.next()).zzbum));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return zzrwVar.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            sb.append(arrayList2.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        return zzbp(sb.toString());
    }
}
