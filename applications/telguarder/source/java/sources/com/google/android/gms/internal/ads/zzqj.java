package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqj.class */
public final class zzqj {
    private final Handler handler;
    private final zzqk zzbmz;

    public zzqj(Handler handler, zzqk zzqkVar) {
        this.handler = zzqkVar != null ? (Handler) zzpg.checkNotNull(handler) : null;
        this.zzbmz = zzqkVar;
    }

    public final void zza(int i, int i2, int i3, float f) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqq(this, i, i2, i3, f));
        }
    }

    public final void zza(Surface surface) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqp(this, surface));
        }
    }

    public final void zza(zzjm zzjmVar) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqm(this, zzjmVar));
        }
    }

    public final void zza(String str, long j, long j2) {
        if (this.zzbmz != null) {
            this.handler.post(new zzql(this, str, j, j2));
        }
    }

    public final void zzb(zzht zzhtVar) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqo(this, zzhtVar));
        }
    }

    public final void zzb(zzjm zzjmVar) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqr(this, zzjmVar));
        }
    }

    public final void zzf(int i, long j) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqn(this, i, j));
        }
    }
}
