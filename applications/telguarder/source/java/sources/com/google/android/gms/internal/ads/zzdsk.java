package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsk.class */
public final class zzdsk implements zzeqb<zzdsh> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;

    public zzdsk(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzfqo = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsh(this.zzewk.get(), this.zzfqo.get());
    }
}
