package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.sq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sq.class */
final /* synthetic */ class C6969sq implements gi0 {

    /* renamed from: a */
    static final gi0 f29606a = new C6969sq();

    private C6969sq() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.gi0
    /* renamed from: a */
    public final Object mo10935a(Object obj) {
        C7045us c7045us;
        if (obj == 0) {
            c7045us = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            c7045us = queryLocalInterface instanceof C7045us ? (C7045us) queryLocalInterface : new C7045us(obj);
        }
        return c7045us;
    }
}
