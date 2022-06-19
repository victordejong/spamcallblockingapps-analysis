package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahd.class */
public final class zzahd {
    public static final boolean zza = zzahe.zzb;
    private final List<zzahc> zzb = new ArrayList();
    private boolean zzc = false;

    public final void finalize() throws Throwable {
        if (!this.zzc) {
            zzb("Request on the loose");
            zzahe.zzb("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    public final void zza(String str, long j) {
        synchronized (this) {
            if (this.zzc) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.zzb.add(new zzahc(str, j, SystemClock.elapsedRealtime()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    public final void zzb(String str) {
        char c;
        synchronized (this) {
            this.zzc = true;
            if (this.zzb.size() == 0) {
                c = 0;
            } else {
                long j = this.zzb.get(0).zzc;
                List<zzahc> list = this.zzb;
                c = list.get(list.size() - 1).zzc - j;
            }
            if (c <= 0) {
                return;
            }
            ?? r0 = this.zzb.get(0).zzc;
            zzahe.zza("(%-4d ms) %s", Long.valueOf(c), str);
            Iterator<zzahc> it2 = this.zzb.iterator();
            char c2 = r0;
            while (true) {
                char c3 = c2;
                if (!it2.hasNext()) {
                    return;
                }
                zzahc next = it2.next();
                ?? r02 = next.zzc;
                zzahe.zza("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.zzb), next.zza);
                c2 = r02;
            }
        }
    }
}
