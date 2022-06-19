package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afn.class */
public final class afn implements dht<Context> {

    /* renamed from: a */
    private final afk f8104a;

    public afn(afk afkVar) {
        this.f8104a = afkVar;
    }

    /* renamed from: a */
    public static Context m13396a(afk afkVar) {
        return (Context) dhz.m9438a(afkVar.m13406a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m13396a(this.f8104a);
    }
}
