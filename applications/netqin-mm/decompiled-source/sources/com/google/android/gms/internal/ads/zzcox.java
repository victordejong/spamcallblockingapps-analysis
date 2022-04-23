package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcox.class */
public final class zzcox implements zzeoy<zzcpt> {

    /* renamed from: a */
    public final zzeph<Context> f26358a;

    public zzcox(zzeph<Context> zzephVar) {
        this.f26358a = zzephVar;
    }

    /* renamed from: a */
    public static zzcox m13962a(zzeph<Context> zzephVar) {
        return new zzcox(zzephVar);
    }

    /* renamed from: a */
    public static zzcpt m13963a(Context context) {
        zzcpt zzcptVar = new zzcpt(context);
        zzepe.m12187a(zzcptVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcptVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13963a(this.f26358a.get());
    }
}
