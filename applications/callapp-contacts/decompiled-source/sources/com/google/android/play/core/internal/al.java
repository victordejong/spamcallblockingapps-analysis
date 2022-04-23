package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/al.class */
public abstract class al extends bn implements am {
    public al() {
        super("com.google.android.play.core.splitinstall.protocol.ISplitInstallServiceCallback");
    }

    @Override // com.google.android.play.core.internal.bn
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                a(parcel.readInt(), (Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                int readInt = parcel.readInt();
                bo.a(parcel, Bundle.CREATOR);
                b(readInt);
                return true;
            case 4:
                int readInt2 = parcel.readInt();
                bo.a(parcel, Bundle.CREATOR);
                a(readInt2);
                return true;
            case 5:
                b(parcel.readInt(), (Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 6:
                a((Bundle) bo.a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                parcel.createTypedArrayList(Bundle.CREATOR);
                a();
                return true;
            case 8:
                bo.a(parcel, Bundle.CREATOR);
                b();
                return true;
            case 9:
                bo.a(parcel, Bundle.CREATOR);
                c();
                return true;
            case 10:
                bo.a(parcel, Bundle.CREATOR);
                g();
                return true;
            case 11:
                bo.a(parcel, Bundle.CREATOR);
                f();
                return true;
            case 12:
                bo.a(parcel, Bundle.CREATOR);
                d();
                return true;
            case 13:
                bo.a(parcel, Bundle.CREATOR);
                e();
                return true;
            default:
                return false;
        }
    }
}
