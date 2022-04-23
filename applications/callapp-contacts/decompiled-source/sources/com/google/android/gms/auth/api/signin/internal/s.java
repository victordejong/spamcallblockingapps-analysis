package com.google.android.gms.auth.api.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/s.class */
public interface s extends IInterface {
    void a(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException;

    void a(Status status) throws RemoteException;

    void b(Status status) throws RemoteException;
}
