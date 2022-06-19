package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.zs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zs.class */
public abstract class AbstractBinderC7230zs extends BinderC6649k2 implements AbstractC6304at {
    public AbstractBinderC7230zs() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    /* renamed from: E6 */
    public static AbstractC6304at m8197E6(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        return queryLocalInterface instanceof AbstractC6304at ? (AbstractC6304at) queryLocalInterface : new C7193ys(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8701R5(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
