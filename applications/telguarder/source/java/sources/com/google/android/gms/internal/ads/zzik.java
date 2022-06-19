package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzik.class */
public final class zzik {
    private final Handler handler;
    private final zzil zzajd;

    public zzik(Handler handler, zzil zzilVar) {
        this.handler = zzilVar != null ? (Handler) zzpg.checkNotNull(handler) : null;
        this.zzajd = zzilVar;
    }

    public final void zza(int i, long j, long j2) {
        if (this.zzajd != null) {
            this.handler.post(new zzio(this, i, j, j2));
        }
    }

    public final void zza(zzjm zzjmVar) {
        if (this.zzajd != null) {
            this.handler.post(new zzin(this, zzjmVar));
        }
    }

    public final void zza(String str, long j, long j2) {
        if (this.zzajd != null) {
            this.handler.post(new zzim(this, str, j, j2));
        }
    }

    public final void zzb(zzht zzhtVar) {
        if (this.zzajd != null) {
            this.handler.post(new zzip(this, zzhtVar));
        }
    }

    public final void zzb(zzjm zzjmVar) {
        if (this.zzajd != null) {
            this.handler.post(new zzir(this, zzjmVar));
        }
    }

    public final void zzw(int i) {
        if (this.zzajd != null) {
            this.handler.post(new zziq(this, i));
        }
    }
}
