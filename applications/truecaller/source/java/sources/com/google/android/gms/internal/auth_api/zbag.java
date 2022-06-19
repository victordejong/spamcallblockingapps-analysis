package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.auth-api.zbab;
import com.google.android.gms.internal.auth-api.zby;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbag.class */
public final class zbag extends zba implements IInterface {
    public zbag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    public final void zbc(zby zbyVar, BeginSignInRequest beginSignInRequest) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbyVar);
        zbc.zbb(zba, beginSignInRequest);
        zbb(1, zba);
    }

    public final void zbd(zbab zbabVar, GetSignInIntentRequest getSignInIntentRequest) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbabVar);
        zbc.zbb(zba, getSignInIntentRequest);
        zbb(3, zba);
    }

    public final void zbe(IStatusCallback iStatusCallback, String str) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, iStatusCallback);
        zba.writeString(str);
        zbb(2, zba);
    }
}
