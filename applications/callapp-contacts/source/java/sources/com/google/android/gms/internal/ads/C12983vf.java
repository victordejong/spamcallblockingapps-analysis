package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.vf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vf.class */
final /* synthetic */ class C12983vf implements AbstractC13089zb {

    /* renamed from: a */
    static final AbstractC13089zb f49904a = new C12983vf();

    private C12983vf() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13089zb
    /* renamed from: a */
    public final Object mo13903a(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof AbstractC12973uw ? (AbstractC12973uw) queryLocalInterface : new C12972uv(iBinder);
    }
}
