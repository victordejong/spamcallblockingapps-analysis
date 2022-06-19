package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aph.class */
public final class aph implements dht<apb.C2790a> {

    /* renamed from: a */
    private final apb f10183a;

    private aph(apb apbVar) {
        this.f10183a = apbVar;
    }

    /* renamed from: a */
    public static aph m12822a(apb apbVar) {
        return new aph(apbVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (apb.C2790a) dhz.m9438a(this.f10183a.m12847a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
