package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasj.class */
public interface zzasj extends IInterface {
    void onError(String str) throws RemoteException;

    void onSuccess(List<Uri> list) throws RemoteException;
}
