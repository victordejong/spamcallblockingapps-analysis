package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.internal.auth-api.zbad;
import com.google.android.gms.internal.auth-api.zbaf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbz.class */
public final class zbz extends zba implements IInterface {
    public zbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService");
    }

    public final void zbc(zbad zbadVar, SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbadVar);
        zbc.zbb(zba, saveAccountLinkingTokenRequest);
        zbb(1, zba);
    }

    public final void zbd(zbaf zbafVar, SavePasswordRequest savePasswordRequest) throws RemoteException {
        Parcel zba = zba();
        zbc.zbc(zba, zbafVar);
        zbc.zbb(zba, savePasswordRequest);
        zbb(2, zba);
    }
}
