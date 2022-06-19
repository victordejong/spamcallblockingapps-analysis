package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.fk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fk.class */
public abstract class AbstractBinderC12555fk extends dvd implements AbstractC12552fh {
    public AbstractBinderC12555fk() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14640a(ekv.zzc(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
