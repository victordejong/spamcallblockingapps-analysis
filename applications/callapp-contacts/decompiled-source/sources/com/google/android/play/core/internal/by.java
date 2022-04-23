package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/by.class */
public abstract class by extends bn implements bz {
    public by() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.bn
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                int readInt = parcel.readInt();
                bo.a(parcel, Bundle.CREATOR);
                a(readInt);
                return true;
            case 3:
                int readInt2 = parcel.readInt();
                bo.a(parcel, Bundle.CREATOR);
                b(readInt2);
                return true;
            case 4:
                int readInt3 = parcel.readInt();
                bo.a(parcel, Bundle.CREATOR);
                c(readInt3);
                return true;
            case 5:
                a(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                bo.a(parcel, Bundle.CREATOR);
                b((Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                a((Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                bo.a(parcel, Bundle.CREATOR);
                c((Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 9:
            default:
                return false;
            case 10:
                bo.a(parcel, Bundle.CREATOR);
                d((Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 11:
                a((Bundle) bo.a(parcel, Bundle.CREATOR), (Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 12:
                b((Bundle) bo.a(parcel, Bundle.CREATOR), (Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 13:
                bo.a(parcel, Bundle.CREATOR);
                bo.a(parcel, Bundle.CREATOR);
                a();
                return true;
            case 14:
                bo.a(parcel, Bundle.CREATOR);
                bo.a(parcel, Bundle.CREATOR);
                c();
                return true;
            case 15:
                bo.a(parcel, Bundle.CREATOR);
                b();
                return true;
        }
    }
}
