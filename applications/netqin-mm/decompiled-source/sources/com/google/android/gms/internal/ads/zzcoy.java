package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoy.class */
public final class zzcoy implements zzeoy<String> {

    /* renamed from: a */
    public final zzeph<Context> f26359a;

    public zzcoy(zzeph<Context> zzephVar) {
        this.f26359a = zzephVar;
    }

    /* renamed from: a */
    public static zzcoy m13960a(zzeph<Context> zzephVar) {
        return new zzcoy(zzephVar);
    }

    /* renamed from: a */
    public static String m13961a(Context context) {
        String packageName = context.getPackageName();
        zzepe.m12187a(packageName, "Cannot return null from a non-@Nullable @Provides method");
        return packageName;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13961a(this.f26359a.get());
    }
}
