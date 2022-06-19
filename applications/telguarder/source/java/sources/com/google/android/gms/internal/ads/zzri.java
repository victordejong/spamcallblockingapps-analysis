package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzri.class */
public final class zzri {
    private int zzbsg;
    private final Object lock = new Object();
    private List<zzrj> zzbsh = new LinkedList();

    public final boolean zza(zzrj zzrjVar) {
        synchronized (this.lock) {
            return this.zzbsh.contains(zzrjVar);
        }
    }

    public final boolean zzb(zzrj zzrjVar) {
        synchronized (this.lock) {
            Iterator<zzrj> it = this.zzbsh.iterator();
            while (it.hasNext()) {
                zzrj next = it.next();
                if (!zzr.zzkv().zzxs().zzyi()) {
                    if (zzrjVar != next && next.zzlz().equals(zzrjVar.zzlz())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzr.zzkv().zzxs().zzyk() && zzrjVar != next && next.zzmb().equals(zzrjVar.zzmb())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzrj zzrjVar) {
        synchronized (this.lock) {
            if (this.zzbsh.size() >= 10) {
                int size = this.zzbsh.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzd.zzdy(sb.toString());
                this.zzbsh.remove(0);
            }
            int i = this.zzbsg;
            this.zzbsg = i + 1;
            zzrjVar.zzbt(i);
            zzrjVar.zzmf();
            this.zzbsh.add(zzrjVar);
        }
    }

    public final zzrj zzo(boolean z) {
        synchronized (this.lock) {
            zzrj zzrjVar = null;
            if (this.zzbsh.size() == 0) {
                zzd.zzdy("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzbsh.size() < 2) {
                zzrj zzrjVar2 = this.zzbsh.get(0);
                if (z) {
                    this.zzbsh.remove(0);
                } else {
                    zzrjVar2.zzmc();
                }
                return zzrjVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (zzrj zzrjVar3 : this.zzbsh) {
                int score = zzrjVar3.getScore();
                int i4 = i2;
                if (score > i2) {
                    i = i3;
                    zzrjVar = zzrjVar3;
                    i4 = score;
                }
                i3++;
                i2 = i4;
            }
            this.zzbsh.remove(i);
            return zzrjVar;
        }
    }
}
