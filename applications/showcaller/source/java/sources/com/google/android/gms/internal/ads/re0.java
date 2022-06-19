package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/re0.class */
final /* synthetic */ class re0 implements gi0 {

    /* renamed from: a */
    static final gi0 f28890a = new re0();

    private re0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.gi0
    /* renamed from: a */
    public final Object mo10935a(Object obj) {
        je0 je0Var;
        if (obj == 0) {
            je0Var = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
            je0Var = queryLocalInterface instanceof je0 ? (je0) queryLocalInterface : new je0(obj);
        }
        return je0Var;
    }
}
