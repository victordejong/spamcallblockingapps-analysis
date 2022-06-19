package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.fq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fq.class */
public abstract class AbstractBinderC12561fq extends dvd implements AbstractC12558fn {
    public AbstractBinderC12561fq() {
        super("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    /* renamed from: a */
    public static AbstractC12558fn m14678a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return queryLocalInterface instanceof AbstractC12558fn ? (AbstractC12558fn) queryLocalInterface : new C12560fp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            boolean a = mo14020a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            dvc.m15673a(parcel2, a);
            return true;
        }
        return false;
    }
}
