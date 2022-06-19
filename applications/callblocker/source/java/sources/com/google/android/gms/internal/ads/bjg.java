package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjg.class */
public final class bjg implements dht<ApplicationInfo> {

    /* renamed from: a */
    private final dig<Context> f11385a;

    private bjg(dig<Context> digVar) {
        this.f11385a = digVar;
    }

    /* renamed from: a */
    public static ApplicationInfo m11859a(Context context) {
        return (ApplicationInfo) dhz.m9438a(context.getApplicationInfo(), "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: a */
    public static bjg m11858a(dig<Context> digVar) {
        return new bjg(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11859a(this.f11385a.mo9430a());
    }
}
