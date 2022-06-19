package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aju.class */
public final class aju implements dht<View> {

    /* renamed from: a */
    private final ajr f9851a;

    public aju(ajr ajrVar) {
        this.f9851a = ajrVar;
    }

    /* renamed from: a */
    public static View m13050a(ajr ajrVar) {
        return (View) dhz.m9438a(ajrVar.m13057b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m13050a(this.f9851a);
    }
}
