package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.dp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dp.class */
public abstract class AbstractBinderC12388dp extends dvd implements AbstractC12389dq {
    public AbstractBinderC12388dp() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    /* renamed from: a */
    public static AbstractC12389dq m16205a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        return queryLocalInterface instanceof AbstractC12389dq ? (AbstractC12389dq) queryLocalInterface : new C12424ds(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12553fi c12553fi;
        switch (i) {
            case 2:
                float a = mo15788a();
                parcel2.writeNoException();
                parcel2.writeFloat(a);
                return true;
            case 3:
                mo15787a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                AbstractC12126b b = mo15785b();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, b);
                return true;
            case 5:
                float c = mo15784c();
                parcel2.writeNoException();
                parcel2.writeFloat(c);
                return true;
            case 6:
                float d = mo15783d();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case 7:
                emk e = mo15782e();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, e);
                return true;
            case 8:
                boolean f = mo15781f();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, f);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12553fi = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    c12553fi = queryLocalInterface instanceof AbstractC12550ff ? (AbstractC12550ff) queryLocalInterface : new C12553fi(readStrongBinder);
                }
                mo15786a(c12553fi);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
