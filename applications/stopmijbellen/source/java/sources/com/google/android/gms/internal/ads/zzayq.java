package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayq.class */
public final class zzayq {
    @VisibleForTesting
    public int zza;
    private final Object zzb = new Object();
    private final List<zzayp> zzc = new LinkedList();

    public final zzayp zza(boolean z) {
        synchronized (this.zzb) {
            zzayp zzaypVar = null;
            if (this.zzc.size() == 0) {
                zzciz.zze("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzc.size() < 2) {
                zzayp zzaypVar2 = this.zzc.get(0);
                if (z) {
                    this.zzc.remove(0);
                } else {
                    zzaypVar2.zzi();
                }
                return zzaypVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (zzayp zzaypVar3 : this.zzc) {
                int zzb = zzaypVar3.zzb();
                if (zzb > i2) {
                    i = i3;
                }
                int i4 = zzb > i2 ? zzb : i2;
                if (zzb > i2) {
                    zzaypVar = zzaypVar3;
                }
                i3++;
                i2 = i4;
            }
            this.zzc.remove(i);
            return zzaypVar;
        }
    }

    public final void zzb(zzayp zzaypVar) {
        synchronized (this.zzb) {
            if (this.zzc.size() >= 10) {
                int size = this.zzc.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzciz.zze(sb.toString());
                this.zzc.remove(0);
            }
            int i = this.zza;
            this.zza = i + 1;
            zzaypVar.zzj(i);
            zzaypVar.zzn();
            this.zzc.add(zzaypVar);
        }
    }

    public final boolean zzc(zzayp zzaypVar) {
        synchronized (this.zzb) {
            Iterator<zzayp> it2 = this.zzc.iterator();
            while (it2.hasNext()) {
                zzayp next = it2.next();
                if (!zzt.zzo().zzh().zzI()) {
                    if (zzaypVar != next && next.zzd().equals(zzaypVar.zzd())) {
                        it2.remove();
                        return true;
                    }
                } else if (!zzt.zzo().zzh().zzJ() && zzaypVar != next && next.zzf().equals(zzaypVar.zzf())) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final boolean zzd(zzayp zzaypVar) {
        synchronized (this.zzb) {
            return this.zzc.contains(zzaypVar);
        }
    }
}
