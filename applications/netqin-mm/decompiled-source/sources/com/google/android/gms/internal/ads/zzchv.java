package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchv.class */
public final class zzchv implements zzeoy<zzchs> {

    /* renamed from: a */
    public final zzeph<Executor> f26036a;

    /* renamed from: b */
    public final zzeph<zzbnd> f26037b;

    /* renamed from: c */
    public final zzeph<zzcae> f26038c;

    public zzchv(zzeph<Executor> zzephVar, zzeph<zzbnd> zzephVar2, zzeph<zzcae> zzephVar3) {
        this.f26036a = zzephVar;
        this.f26037b = zzephVar2;
        this.f26038c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzchs(this.f26036a.get(), this.f26037b.get(), this.f26038c.get());
    }
}
