package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafn.class */
public interface zzafn extends IInterface {
    void destroy() throws RemoteException;

    List<String> getAvailableAssetNames() throws RemoteException;

    String getCustomTemplateId() throws RemoteException;

    zzzc getVideoController() throws RemoteException;

    void performClick(String str) throws RemoteException;

    void recordImpression() throws RemoteException;

    String zzct(String str) throws RemoteException;

    zzaer zzcu(String str) throws RemoteException;

    boolean zzp(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzq(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zztm() throws RemoteException;

    IObjectWrapper zztr() throws RemoteException;

    boolean zzts() throws RemoteException;

    boolean zztt() throws RemoteException;

    void zztu() throws RemoteException;
}
