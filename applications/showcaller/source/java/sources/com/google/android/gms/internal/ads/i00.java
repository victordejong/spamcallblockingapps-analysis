package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i00.class */
public abstract class i00 extends BinderC6649k2 implements j00 {
    public i00() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    /* renamed from: E6 */
    public static j00 m14518E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        return queryLocalInterface instanceof j00 ? (j00) queryLocalInterface : new h00(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C7126wz c7126wz;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c7126wz = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                c7126wz = queryLocalInterface instanceof AbstractC7237zz ? (AbstractC7237zz) queryLocalInterface : new C7126wz(readStrongBinder);
            }
            mo14250w5(c7126wz, parcel.readString());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
