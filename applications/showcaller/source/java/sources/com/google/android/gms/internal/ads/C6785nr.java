package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.nr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nr.class */
final /* synthetic */ class C6785nr implements gi0 {

    /* renamed from: a */
    static final gi0 f27270a = new C6785nr();

    private C6785nr() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.gi0
    /* renamed from: a */
    public final Object mo10935a(Object obj) {
        C6897qs c6897qs;
        if (obj == 0) {
            c6897qs = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            c6897qs = queryLocalInterface instanceof C6897qs ? (C6897qs) queryLocalInterface : new C6897qs(obj);
        }
        return c6897qs;
    }
}
