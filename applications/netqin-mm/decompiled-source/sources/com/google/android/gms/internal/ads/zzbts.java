package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbts.class */
public final class zzbts implements zzeoy<Context> {

    /* renamed from: a */
    public final zzbtp f25534a;

    /* renamed from: b */
    public final zzeph<Context> f25535b;

    public zzbts(zzbtp zzbtpVar, zzeph<Context> zzephVar) {
        this.f25534a = zzbtpVar;
        this.f25535b = zzephVar;
    }

    /* renamed from: a */
    public static zzbts m15051a(zzbtp zzbtpVar, zzeph<Context> zzephVar) {
        return new zzbts(zzbtpVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Context a = this.f25534a.m15071a(this.f25535b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
