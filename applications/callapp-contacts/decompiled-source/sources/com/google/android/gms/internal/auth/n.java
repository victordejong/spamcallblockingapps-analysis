package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/n.class */
public interface n extends IInterface {
    Bundle a(Account account, String str, Bundle bundle) throws RemoteException;

    Bundle a(String str, Bundle bundle) throws RemoteException;
}
