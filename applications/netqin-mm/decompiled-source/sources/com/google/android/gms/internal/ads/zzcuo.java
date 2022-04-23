package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuo.class */
public final class zzcuo implements zzeoy<zzcuj> {

    /* renamed from: a */
    public final zzeph<Context> f26557a;

    /* renamed from: b */
    public final zzeph<Executor> f26558b;

    /* renamed from: c */
    public final zzeph<zzcce> f26559c;

    /* renamed from: d */
    public final zzeph<zzdnt> f26560d;

    public zzcuo(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzcce> zzephVar3, zzeph<zzdnt> zzephVar4) {
        this.f26557a = zzephVar;
        this.f26558b = zzephVar2;
        this.f26559c = zzephVar3;
        this.f26560d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcuj(this.f26557a.get(), this.f26558b.get(), this.f26559c.get(), this.f26560d.get());
    }
}
