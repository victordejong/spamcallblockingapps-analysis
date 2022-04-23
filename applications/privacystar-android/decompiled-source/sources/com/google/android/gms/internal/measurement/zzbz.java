package com.google.android.gms.internal.measurement;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbz.class */
public abstract class zzbz {
    private static volatile Handler handler;
    private final zzaw zzvy;
    private final Runnable zzyo = new zzca(this);
    private volatile long zzyp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbz(zzaw zzawVar) {
        Preconditions.checkNotNull(zzawVar);
        this.zzvy = zzawVar;
    }

    private final Handler getHandler() {
        Handler handler2;
        if (handler != null) {
            return handler;
        }
        synchronized (zzbz.class) {
            try {
                if (handler == null) {
                    handler = new zzdx(this.zzvy.getContext().getMainLooper());
                }
                handler2 = handler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler2;
    }

    public final void cancel() {
        this.zzyp = 0L;
        getHandler().removeCallbacks(this.zzyo);
    }

    public abstract void run();

    public final long zzei() {
        if (this.zzyp == 0) {
            return 0L;
        }
        return Math.abs(this.zzvy.zzbx().currentTimeMillis() - this.zzyp);
    }

    public final boolean zzej() {
        return this.zzyp != 0;
    }

    public final void zzh(long j) {
        cancel();
        if (j >= 0) {
            this.zzyp = this.zzvy.zzbx().currentTimeMillis();
            if (!getHandler().postDelayed(this.zzyo, j)) {
                this.zzvy.zzby().zze("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(long r8) {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.zzej()
            if (r0 != 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0013
            r0 = r7
            r0.cancel()
            return
        L_0x0013:
            r0 = r8
            r1 = r7
            com.google.android.gms.internal.measurement.zzaw r1 = r1.zzvy
            com.google.android.gms.common.util.Clock r1 = r1.zzbx()
            long r1 = r1.currentTimeMillis()
            r2 = r7
            long r2 = r2.zzyp
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)
            long r0 = r0 - r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0034
            r0 = 0
            r8 = r0
        L_0x0034:
            r0 = r7
            android.os.Handler r0 = r0.getHandler()
            r1 = r7
            java.lang.Runnable r1 = r1.zzyo
            r0.removeCallbacks(r1)
            r0 = r7
            android.os.Handler r0 = r0.getHandler()
            r1 = r7
            java.lang.Runnable r1 = r1.zzyo
            r2 = r8
            boolean r0 = r0.postDelayed(r1, r2)
            if (r0 != 0) goto L_0x005e
            r0 = r7
            com.google.android.gms.internal.measurement.zzaw r0 = r0.zzvy
            com.google.android.gms.internal.measurement.zzcp r0 = r0.zzby()
            java.lang.String r1 = "Failed to adjust delayed post. time"
            r2 = r8
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r0.zze(r1, r2)
        L_0x005e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbz.zzi(long):void");
    }
}
