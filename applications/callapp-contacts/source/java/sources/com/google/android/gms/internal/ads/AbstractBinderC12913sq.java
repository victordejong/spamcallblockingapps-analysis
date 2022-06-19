package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* renamed from: com.google.android.gms.internal.ads.sq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sq.class */
public abstract class AbstractBinderC12913sq extends dvd implements AbstractC12914sr {
    public AbstractBinderC12913sq() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14188a((ParcelFileDescriptor) dvc.m15675a(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo14187a((zzaq) dvc.m15675a(parcel, zzaq.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
