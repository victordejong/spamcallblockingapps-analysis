package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ca.class */
public abstract class ca extends bn implements cb {
    public ca() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.bn
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        cd cdVar = null;
        cd cdVar2 = null;
        if (i == 2) {
            Bundle bundle = (Bundle) bo.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                cdVar = queryLocalInterface instanceof cd ? (cd) queryLocalInterface : new cc(readStrongBinder);
            }
            a(bundle, cdVar);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            bo.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                cdVar2 = queryLocalInterface2 instanceof cd ? (cd) queryLocalInterface2 : new cc(readStrongBinder2);
            }
            a(cdVar2);
            return true;
        }
    }
}
