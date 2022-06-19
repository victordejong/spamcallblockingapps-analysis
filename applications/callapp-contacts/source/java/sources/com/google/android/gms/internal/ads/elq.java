package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elq.class */
public abstract class elq extends dvd implements eln {
    public elq() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12647iv c12647iv;
        switch (i) {
            case 1:
                mo14548a();
                parcel2.writeNoException();
                return true;
            case 2:
                mo14547a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                mo14542a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                mo14540a(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                mo14546a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo14541a(parcel.readString(), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float b = mo14539b();
                parcel2.writeNoException();
                parcel2.writeFloat(b);
                return true;
            case 8:
                boolean c = mo14537c();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, c);
                return true;
            case 9:
                String d = mo14536d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                return true;
            case 10:
                mo14538b(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo14544a(AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12647iv = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    c12647iv = queryLocalInterface instanceof AbstractC12645it ? (AbstractC12645it) queryLocalInterface : new C12647iv(readStrongBinder);
                }
                mo14545a(c12647iv);
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzajm> e = mo14535e();
                parcel2.writeNoException();
                parcel2.writeTypedList(e);
                return true;
            case 14:
                mo14543a((zzaat) dvc.m15675a(parcel, zzaat.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                mo14534f();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
