package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbad.class */
public class zzbad<T> {
    private final zzbaa<T> zzeio;
    private final AtomicInteger zzeip = new AtomicInteger(0);

    public zzbad() {
        zzbaa<T> zzbaaVar = new zzbaa<>();
        this.zzeio = zzbaaVar;
        zzdzk.zza(zzbaaVar, new zzbag(this), zzazp.zzeih);
    }

    @Deprecated
    public final int getStatus() {
        return this.zzeip.get();
    }

    @Deprecated
    public final void reject() {
        this.zzeio.setException(new Exception());
    }

    @Deprecated
    public final void zza(zzbae<T> zzbaeVar, zzbac zzbacVar) {
        zzdzk.zza(this.zzeio, new zzbaf(this, zzbaeVar, zzbacVar), zzazp.zzeih);
    }

    @Deprecated
    public final void zzl(T t) {
        this.zzeio.set(t);
    }
}
