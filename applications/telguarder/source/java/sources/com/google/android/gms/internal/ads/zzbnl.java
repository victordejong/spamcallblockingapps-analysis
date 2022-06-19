package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnl.class */
public final class zzbnl implements zzeqb<zzbnm> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzdmw> zzfvr;

    public zzbnl(zzeqo<Context> zzeqoVar, zzeqo<zzbeb> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzazn> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzfuu = zzeqoVar2;
        this.zzfvr = zzeqoVar3;
        this.zzfqo = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnm(this.zzewk.get(), this.zzfuu.get(), this.zzfvr.get(), this.zzfqo.get());
    }
}
