package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.bu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bu.class */
public abstract class AbstractBinderC6342bu extends BinderC6649k2 implements AbstractC6379cu {
    public AbstractBinderC6342bu() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    /* renamed from: E6 */
    public static AbstractC6379cu m16206E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return queryLocalInterface instanceof AbstractC6379cu ? (AbstractC6379cu) queryLocalInterface : new C6305au(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo12813j5((zzbdn) C6686l2.m13744c(parcel, zzbdn.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
