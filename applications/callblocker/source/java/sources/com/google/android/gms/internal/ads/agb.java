package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agb.class */
public final class agb implements dht<AbstractC3438qk> {

    /* renamed from: a */
    private final dig<Context> f8123a;

    public agb(dig<Context> digVar) {
        this.f8123a = digVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Context mo9430a = this.f8123a.mo9430a();
        return (AbstractC3438qk) dhz.m9438a(new C3436qi(mo9430a, new C3444qq(mo9430a).mo7299a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
