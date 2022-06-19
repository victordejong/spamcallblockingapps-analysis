package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s00.class */
public abstract class s00 extends BinderC6649k2 implements t00 {
    public s00() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    /* renamed from: E6 */
    public static t00 m11186E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        return queryLocalInterface instanceof t00 ? (t00) queryLocalInterface : new r00(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        a10 a10Var;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                a10Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                a10Var = queryLocalInterface instanceof c10 ? (c10) queryLocalInterface : new a10(readStrongBinder);
            }
            mo9302y6(a10Var);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
