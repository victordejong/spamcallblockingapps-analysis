package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bx.class */
public interface bx extends IInterface {
    void a(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException;

    void a(String str, Bundle bundle, bz bzVar) throws RemoteException;

    void a(String str, List<Bundle> list, Bundle bundle, bz bzVar) throws RemoteException;

    void b(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException;

    void b(String str, Bundle bundle, bz bzVar) throws RemoteException;

    void c(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException;

    void d(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException;
}
