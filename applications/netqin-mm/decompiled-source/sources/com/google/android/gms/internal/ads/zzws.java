package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzws.class */
public abstract class zzws extends zzgt implements zzwt {
    public zzws() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo11159A();
                break;
            case 2:
                mo11157a(parcel.readInt());
                break;
            case 3:
                mo11155k();
                break;
            case 4:
                mo11153x();
                break;
            case 5:
                mo11154t();
                break;
            case 6:
                onAdClicked();
                break;
            case 7:
                mo11158M();
                break;
            case 8:
                mo11156b((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
