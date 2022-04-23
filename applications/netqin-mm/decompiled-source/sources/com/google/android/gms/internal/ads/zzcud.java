package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcud.class */
public final class zzcud implements zzeoy<zzcub> {

    /* renamed from: a */
    public final zzeph<Context> f26539a;

    /* renamed from: b */
    public final zzeph<zzbbx> f26540b;

    /* renamed from: c */
    public final zzeph<zzbpm> f26541c;

    /* renamed from: d */
    public final zzeph<Executor> f26542d;

    public zzcud(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzbpm> zzephVar3, zzeph<Executor> zzephVar4) {
        this.f26539a = zzephVar;
        this.f26540b = zzephVar2;
        this.f26541c = zzephVar3;
        this.f26542d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcub(this.f26539a.get(), this.f26540b.get(), this.f26541c.get(), this.f26542d.get());
    }
}
