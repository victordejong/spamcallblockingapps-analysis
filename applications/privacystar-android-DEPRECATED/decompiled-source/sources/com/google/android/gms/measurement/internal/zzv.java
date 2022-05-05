package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzv.class */
public abstract class zzv {
    private static volatile Handler handler;
    private final zzcq zzahw;
    private final Runnable zzyo;
    private volatile long zzyp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzcq zzcqVar) {
        Preconditions.checkNotNull(zzcqVar);
        this.zzahw = zzcqVar;
        this.zzyo = new zzw(this, zzcqVar);
    }

    private final Handler getHandler() {
        Handler handler2;
        if (handler != null) {
            return handler;
        }
        synchronized (zzv.class) {
            try {
                if (handler == null) {
                    handler = new zzdx(this.zzahw.getContext().getMainLooper());
                }
                handler2 = handler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void cancel() {
        this.zzyp = 0L;
        getHandler().removeCallbacks(this.zzyo);
    }

    public abstract void run();

    public final boolean zzej() {
        return this.zzyp != 0;
    }

    public final void zzh(long j) {
        cancel();
        if (j >= 0) {
            this.zzyp = this.zzahw.zzbx().currentTimeMillis();
            if (!getHandler().postDelayed(this.zzyo, j)) {
                this.zzahw.zzgo().zzjd().zzg("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }
}
