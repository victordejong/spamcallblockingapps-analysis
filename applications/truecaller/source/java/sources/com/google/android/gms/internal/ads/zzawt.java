package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawt.class */
public final class zzawt {
    @VisibleForTesting
    public int zza;
    private final Object zzb = new Object();
    private final List<zzaws> zzc = new LinkedList();

    public final zzaws zza(boolean z) {
        synchronized (this.zzb) {
            zzaws zzawsVar = null;
            if (this.zzc.size() == 0) {
                zzcgt.zzd("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzc.size() < 2) {
                zzaws zzawsVar2 = this.zzc.get(0);
                if (z) {
                    this.zzc.remove(0);
                } else {
                    zzawsVar2.zze();
                }
                return zzawsVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (zzaws zzawsVar3 : this.zzc) {
                int zzm = zzawsVar3.zzm();
                if (zzm > i2) {
                    i = i3;
                }
                int i4 = zzm > i2 ? zzm : i2;
                if (zzm > i2) {
                    zzawsVar = zzawsVar3;
                }
                i3++;
                i2 = i4;
            }
            this.zzc.remove(i);
            return zzawsVar;
        }
    }

    public final boolean zzb(zzaws zzawsVar) {
        synchronized (this.zzb) {
            return this.zzc.contains(zzawsVar);
        }
    }

    public final boolean zzc(zzaws zzawsVar) {
        synchronized (this.zzb) {
            Iterator<zzaws> it = this.zzc.iterator();
            while (it.hasNext()) {
                zzaws next = it.next();
                if (!zzt.zzg().zzp().zzd()) {
                    if (zzawsVar != next && next.zzb().equals(zzawsVar.zzb())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzt.zzg().zzp().zzh() && zzawsVar != next && next.zzd().equals(zzawsVar.zzd())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzd(zzaws zzawsVar) {
        synchronized (this.zzb) {
            if (this.zzc.size() >= 10) {
                int size = this.zzc.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzcgt.zzd(sb.toString());
                this.zzc.remove(0);
            }
            int i = this.zza;
            this.zza = i + 1;
            zzawsVar.zzn(i);
            zzawsVar.zzj();
            this.zzc.add(zzawsVar);
        }
    }
}
