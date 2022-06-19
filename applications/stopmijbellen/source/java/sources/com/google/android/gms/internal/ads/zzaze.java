package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaze.class */
public final class zzaze {
    private final int zza;
    private final zzazb zzb = new zzazg();

    public zzaze(int i) {
        this.zza = i;
    }

    public final String zza(ArrayList<String> arrayList) {
        String str;
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(arrayList.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split("\n");
        if (split.length == 0) {
            str = "";
        } else {
            zzazd zzazdVar = new zzazd();
            PriorityQueue priorityQueue = new PriorityQueue(this.zza, new zzazc(this));
            for (String str2 : split) {
                String[] zzb = zzazf.zzb(str2, false);
                if (zzb.length != 0) {
                    zzazj.zzc(zzb, this.zza, 6, priorityQueue);
                }
            }
            Iterator it2 = priorityQueue.iterator();
            while (it2.hasNext()) {
                try {
                    zzazdVar.zzb.write(this.zzb.zzb(((zzazi) it2.next()).zzb));
                } catch (IOException e) {
                    zzciz.zzh("Error while writing hash to byteStream", e);
                }
            }
            str = zzazdVar.toString();
        }
        return str;
    }
}
