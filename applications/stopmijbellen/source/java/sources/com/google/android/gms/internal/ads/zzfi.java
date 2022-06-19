package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfi.class */
public final class zzfi implements zzei {
    private static final List<zzfh> zza = new ArrayList(50);
    private final Handler zzb;

    public zzfi(Handler handler) {
        this.zzb = handler;
    }

    public static /* bridge */ /* synthetic */ void zzk(zzfh zzfhVar) {
        List<zzfh> list = zza;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(zzfhVar);
            }
        }
    }

    private static zzfh zzl() {
        zzfh zzfhVar;
        List<zzfh> list = zza;
        synchronized (list) {
            zzfhVar = list.isEmpty() ? new zzfh(null) : list.remove(list.size() - 1);
        }
        return zzfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final zzeh zza(int i) {
        zzfh zzl = zzl();
        zzl.zzb(this.zzb.obtainMessage(i), this);
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final zzeh zzb(int i, Object obj) {
        zzfh zzl = zzl();
        zzl.zzb(this.zzb.obtainMessage(i, obj), this);
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final zzeh zzc(int i, int i2, int i3) {
        zzfh zzl = zzl();
        zzl.zzb(this.zzb.obtainMessage(1, i2, i3), this);
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final void zzd(Object obj) {
        this.zzb.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final void zze(int i) {
        this.zzb.removeMessages(2);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final boolean zzf(int i) {
        return this.zzb.hasMessages(0);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final boolean zzg(Runnable runnable) {
        return this.zzb.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final boolean zzh(int i) {
        return this.zzb.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final boolean zzi(int i, long j) {
        return this.zzb.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.gms.internal.ads.zzei
    public final boolean zzj(zzeh zzehVar) {
        return ((zzfh) zzehVar).zzc(this.zzb);
    }
}
