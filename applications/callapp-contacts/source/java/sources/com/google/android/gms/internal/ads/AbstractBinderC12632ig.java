package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ig */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ig.class */
public abstract class AbstractBinderC12632ig extends dvd implements AbstractC12629id {
    public AbstractBinderC12632ig() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14598a((ParcelFileDescriptor) dvc.m15675a(parcel, ParcelFileDescriptor.CREATOR));
            return true;
        }
        return false;
    }
}
