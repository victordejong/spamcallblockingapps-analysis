package com.google.android.gms.internal.vision;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzg.class */
public interface zzg extends IInterface {
    Barcode[] zza(IObjectWrapper iObjectWrapper, zzp zzpVar) throws RemoteException;

    Barcode[] zzb(IObjectWrapper iObjectWrapper, zzp zzpVar) throws RemoteException;

    void zzm() throws RemoteException;
}
