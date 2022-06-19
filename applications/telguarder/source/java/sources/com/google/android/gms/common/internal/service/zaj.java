package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zab;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zaj.class */
public abstract class zaj extends zab implements zak {
    public zaj() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zab
    protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zab(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
