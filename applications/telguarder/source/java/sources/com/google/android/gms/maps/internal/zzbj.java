package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzbj.class */
public interface zzbj extends IInterface {
    void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation) throws RemoteException;
}
