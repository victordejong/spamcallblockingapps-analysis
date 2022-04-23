package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyv.class */
public final class zzcyv implements zzeoy<zzcyr> {

    /* renamed from: a */
    public final zzeph<Context> f26773a;

    /* renamed from: b */
    public final zzeph<zzcce> f26774b;

    public zzcyv(zzeph<Context> zzephVar, zzeph<zzcce> zzephVar2) {
        this.f26773a = zzephVar;
        this.f26774b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcyr(this.f26773a.get(), this.f26774b.get());
    }
}
