package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcou.class */
public final class zzcou implements zzeoy<ApplicationInfo> {

    /* renamed from: a */
    public final zzeph<Context> f26355a;

    public zzcou(zzeph<Context> zzephVar) {
        this.f26355a = zzephVar;
    }

    /* renamed from: a */
    public static ApplicationInfo m13966a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        zzepe.m12187a(applicationInfo, "Cannot return null from a non-@Nullable @Provides method");
        return applicationInfo;
    }

    /* renamed from: a */
    public static zzcou m13965a(zzeph<Context> zzephVar) {
        return new zzcou(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13966a(this.f26355a.get());
    }
}
