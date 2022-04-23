package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxs.class */
public final class zzcxs implements zzeoy<zzcxl> {

    /* renamed from: a */
    public final zzeph<Context> f26716a;

    /* renamed from: b */
    public final zzeph<Executor> f26717b;

    /* renamed from: c */
    public final zzeph<zzcjj> f26718c;

    public zzcxs(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzcjj> zzephVar3) {
        this.f26716a = zzephVar;
        this.f26717b = zzephVar2;
        this.f26718c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcxl(this.f26716a.get(), this.f26717b.get(), this.f26718c.get());
    }
}
