package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzd.class */
public abstract class dzd extends dkl implements dza {
    public dzd() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo8139a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo8138a(parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo8137b();
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo8136c();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo8135d();
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo8134e();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo8133f();
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
