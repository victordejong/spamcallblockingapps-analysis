package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.dy */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dy.class */
public abstract class AbstractBinderC12432dy extends dvd implements AbstractC12428dv {
    public AbstractBinderC12432dy() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    /* renamed from: a */
    public static AbstractC12428dv m15486a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof AbstractC12428dv ? (AbstractC12428dv) queryLocalInterface : new C12431dx(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12424ds c12424ds;
        switch (i) {
            case 1:
                mo14470a(parcel.readString(), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                AbstractC12126b a = mo14471a(parcel.readString());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 3:
                mo14474a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo14475a();
                parcel2.writeNoException();
                return true;
            case 5:
                mo14473a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                mo14469b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo14468c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12424ds = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    c12424ds = queryLocalInterface instanceof AbstractC12389dq ? (AbstractC12389dq) queryLocalInterface : new C12424ds(readStrongBinder);
                }
                mo14472a(c12424ds);
                parcel2.writeNoException();
                return true;
            case 9:
                mo14467d(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
