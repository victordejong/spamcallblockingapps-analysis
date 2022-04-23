package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnb.class */
public final class zzcnb implements zzeoy<zzcmz> {

    /* renamed from: a */
    public final zzeph<Executor> f26283a;

    /* renamed from: b */
    public final zzeph<zzbbu> f26284b;

    /* renamed from: c */
    public final zzeph<Context> f26285c;

    /* renamed from: d */
    public final zzeph<zzbbx> f26286d;

    public zzcnb(zzeph<Executor> zzephVar, zzeph<zzbbu> zzephVar2, zzeph<Context> zzephVar3, zzeph<zzbbx> zzephVar4) {
        this.f26283a = zzephVar;
        this.f26284b = zzephVar2;
        this.f26285c = zzephVar3;
        this.f26286d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcmz(this.f26283a.get(), this.f26284b.get(), this.f26285c.get(), this.f26286d.get());
    }
}
