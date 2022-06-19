package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.internal.auth-api.zbp;
import com.google.android.gms.internal.auth-api.zbs;
import com.google.android.gms.internal.auth-api.zbu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbt.class */
public final class zbt extends zba implements IInterface {
    public zbt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    public final void zbc(zbs zbsVar, zbp zbpVar) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbsVar);
        zbc.zbb(zba, zbpVar);
        zbb(3, zba);
    }

    public final void zbd(zbs zbsVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbsVar);
        zbc.zbb(zba, credentialRequest);
        zbb(1, zba);
    }

    public final void zbe(zbs zbsVar, zbu zbuVar) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbsVar);
        zbc.zbb(zba, zbuVar);
        zbb(2, zba);
    }

    public final void zbf(zbs zbsVar) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbsVar);
        zbb(4, zba);
    }
}
