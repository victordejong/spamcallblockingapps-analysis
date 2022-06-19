package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqm.class */
public final class zzeqm<T> {
    private final List<zzeqo<T>> zzjcd;
    private final List<zzeqo<Collection<T>>> zzjce;

    /* JADX INFO: Access modifiers changed from: private */
    public zzeqm(int i, int i2) {
        this.zzjcd = zzeqa.zzid(i);
        this.zzjce = zzeqa.zzid(i2);
    }

    public final zzeqm<T> zzaw(zzeqo<? extends T> zzeqoVar) {
        this.zzjcd.add(zzeqoVar);
        return this;
    }

    public final zzeqm<T> zzax(zzeqo<? extends Collection<? extends T>> zzeqoVar) {
        this.zzjce.add(zzeqoVar);
        return this;
    }

    public final zzeqk<T> zzbmo() {
        return new zzeqk<>(this.zzjcd, this.zzjce);
    }
}
