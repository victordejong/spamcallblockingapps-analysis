package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxh.class */
public final class zzaxh {
    private final int zza;
    private final zzaxe zzb = new zzaxj();

    public zzaxh(int i) {
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
        String[] split = sb.toString().split(StringConstant.NEW_LINE);
        if (split.length == 0) {
            str = "";
        } else {
            zzaxg zzaxgVar = new zzaxg();
            PriorityQueue priorityQueue = new PriorityQueue(this.zza, new zzaxf(this));
            for (String str2 : split) {
                String[] zzb = zzaxi.zzb(str2, false);
                if (zzb.length != 0) {
                    zzaxm.zza(zzb, this.zza, 6, priorityQueue);
                }
            }
            Iterator it = priorityQueue.iterator();
            while (it.hasNext()) {
                try {
                    zzaxgVar.zzb.write(this.zzb.zza(((zzaxl) it.next()).zzb));
                } catch (IOException e) {
                    zzcgt.zzg("Error while writing hash to byteStream", e);
                }
            }
            str = zzaxgVar.toString();
        }
        return str;
    }
}
