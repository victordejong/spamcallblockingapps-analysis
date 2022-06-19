package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dze.class */
public abstract class dze extends dkl implements dzf {
    public dze() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7972a((dya) dkk.m9323a(parcel, dya.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                String b = mo7970b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            case 3:
                boolean a = mo7973a();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, a);
                z = true;
                break;
            case 4:
                String c = mo7969c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 5:
                mo7971a((dya) dkk.m9323a(parcel, dya.CREATOR), parcel.readInt());
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
