package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vf.class */
final /* synthetic */ class vf implements zb {

    /* renamed from: a  reason: collision with root package name */
    static final zb f28426a = new vf();

    private vf() {
    }

    @Override // com.google.android.gms.internal.ads.zb
    public final Object a(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof uw ? (uw) queryLocalInterface : new uv(iBinder);
    }
}
