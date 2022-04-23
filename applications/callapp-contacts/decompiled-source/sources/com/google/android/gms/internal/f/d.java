package com.google.android.gms.internal.f;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/d.class */
public interface d extends IInterface {
    int a(int i, String str, String str2) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException;

    Bundle a(String str, String str2, Bundle bundle) throws RemoteException;

    Bundle a(String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException;

    Bundle a(String str, String str2, String str3) throws RemoteException;

    Bundle a(String str, String str2, String str3, Bundle bundle) throws RemoteException;

    Bundle a(String str, List<String> list, String str2) throws RemoteException;

    Bundle b(String str, String str2, Bundle bundle) throws RemoteException;

    Bundle b(String str, String str2, String str3) throws RemoteException;

    Bundle c(String str, String str2, Bundle bundle) throws RemoteException;
}
