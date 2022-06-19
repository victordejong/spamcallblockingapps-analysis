package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaer.class */
public interface zzaer extends IInterface {
    int getHeight() throws RemoteException;

    double getScale() throws RemoteException;

    Uri getUri() throws RemoteException;

    int getWidth() throws RemoteException;

    IObjectWrapper zzti() throws RemoteException;
}
