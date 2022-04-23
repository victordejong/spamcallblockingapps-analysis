package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvf.class */
public final class zzcvf implements zzeoy<zzcvd> {

    /* renamed from: a */
    public final zzeph<Context> f26587a;

    /* renamed from: b */
    public final zzeph<zzbbx> f26588b;

    /* renamed from: c */
    public final zzeph<zzcce> f26589c;

    /* renamed from: d */
    public final zzeph<Executor> f26590d;

    public zzcvf(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzcce> zzephVar3, zzeph<Executor> zzephVar4) {
        this.f26587a = zzephVar;
        this.f26588b = zzephVar2;
        this.f26589c = zzephVar3;
        this.f26590d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcvd(this.f26587a.get(), this.f26588b.get(), this.f26589c.get(), this.f26590d.get());
    }
}
