package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zac.class */
public interface zac extends IInterface {
    /* renamed from: C0 */
    void mo10850C0(ConnectionResult connectionResult, zab zabVar) throws RemoteException;

    /* renamed from: E */
    void mo10849E(zak zakVar) throws RemoteException;

    /* renamed from: Z */
    void mo10848Z(Status status) throws RemoteException;

    /* renamed from: i0 */
    void mo10847i0(Status status) throws RemoteException;

    /* renamed from: k */
    void mo10846k(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException;
}
