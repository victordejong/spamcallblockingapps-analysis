package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zac;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zam.class */
public final class zam extends zaa {
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final IObjectWrapper zae(IObjectWrapper iObjectWrapper, zax zaxVar) throws RemoteException {
        Parcel zaa = zaa();
        zac.zad(zaa, iObjectWrapper);
        zac.zac(zaa, zaxVar);
        return C0033h.m8887j(zab(2, zaa));
    }
}
