package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjl.class */
public final class bjl implements dht<String> {

    /* renamed from: a */
    private final dig<Context> f11390a;

    private bjl(dig<Context> digVar) {
        this.f11390a = digVar;
    }

    /* renamed from: a */
    public static bjl m11851a(dig<Context> digVar) {
        return new bjl(digVar);
    }

    /* renamed from: a */
    public static String m11852a(Context context) {
        return (String) dhz.m9438a(context.getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11852a(this.f11390a.mo9430a());
    }
}
