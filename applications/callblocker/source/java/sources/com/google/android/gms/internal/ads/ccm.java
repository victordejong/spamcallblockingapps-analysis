package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccm.class */
public final class ccm implements dht<ApplicationInfo> {

    /* renamed from: a */
    private final cck f12731a;

    public ccm(cck cckVar) {
        this.f12731a = cckVar;
    }

    /* renamed from: a */
    public static ApplicationInfo m11484a(cck cckVar) {
        return (ApplicationInfo) dhz.m9438a(cckVar.m11487f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11484a(this.f12731a);
    }
}
