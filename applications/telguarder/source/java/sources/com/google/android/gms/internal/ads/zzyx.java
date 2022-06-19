package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyx.class */
public interface zzyx extends IInterface {
    List<zzvw> getAdapterResponses() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    String getResponseId() throws RemoteException;
}
