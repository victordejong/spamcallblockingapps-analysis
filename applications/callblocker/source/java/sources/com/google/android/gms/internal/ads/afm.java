package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afm.class */
public final class afm implements dht<WeakReference<Context>> {

    /* renamed from: a */
    private final afk f8103a;

    public afm(afk afkVar) {
        this.f8103a = afkVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (WeakReference) dhz.m9438a(this.f8103a.m13405b(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
