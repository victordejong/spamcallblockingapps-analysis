package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpb.class */
public final class zzcpb implements zzeqb<zzcol> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzauh> zzgpx;
    private final zzeqo<zzbjd> zzgpy;
    private final zzeqo<zzaue> zzgpz;
    private final zzeqo<HashMap<String, zzcpa>> zzgqa;

    private zzcpb(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzauh> zzeqoVar3, zzeqo<zzbjd> zzeqoVar4, zzeqo<zzaue> zzeqoVar5, zzeqo<HashMap<String, zzcpa>> zzeqoVar6) {
        this.zzewk = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzgpx = zzeqoVar3;
        this.zzgpy = zzeqoVar4;
        this.zzgpz = zzeqoVar5;
        this.zzgqa = zzeqoVar6;
    }

    public static zzcpb zzb(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzauh> zzeqoVar3, zzeqo<zzbjd> zzeqoVar4, zzeqo<zzaue> zzeqoVar5, zzeqo<HashMap<String, zzcpa>> zzeqoVar6) {
        return new zzcpb(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcol(this.zzewk.get(), this.zzfux.get(), this.zzgpx.get(), this.zzgpy.get(), this.zzgpz.get(), this.zzgqa.get());
    }
}
