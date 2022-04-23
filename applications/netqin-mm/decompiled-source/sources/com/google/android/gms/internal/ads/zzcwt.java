package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwt.class */
public final class zzcwt implements zzeoy<zzcwr> {

    /* renamed from: a */
    public final zzeph<Context> f26680a;

    /* renamed from: b */
    public final zzeph<Executor> f26681b;

    /* renamed from: c */
    public final zzeph<zzcjj> f26682c;

    public zzcwt(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzcjj> zzephVar3) {
        this.f26680a = zzephVar;
        this.f26681b = zzephVar2;
        this.f26682c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcwr(this.f26680a.get(), this.f26681b.get(), this.f26682c.get());
    }
}
