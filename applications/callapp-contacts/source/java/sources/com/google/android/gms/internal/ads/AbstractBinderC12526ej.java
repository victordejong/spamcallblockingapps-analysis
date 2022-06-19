package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ej */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ej.class */
public abstract class AbstractBinderC12526ej extends dvd implements AbstractC12442eg {
    public AbstractBinderC12526ej() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                AbstractC12126b a = mo14886a();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 3:
                String b = mo14884b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 4:
                List c = mo14882c();
                parcel2.writeNoException();
                parcel2.writeList(c);
                return true;
            case 5:
                String d = mo14880d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                return true;
            case 6:
                AbstractC12394dr e = mo14879e();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, e);
                return true;
            case 7:
                String f = mo14878f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                double g = mo14877g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                return true;
            case 9:
                String h = mo14876h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                String i3 = mo14875i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 11:
                Bundle j = mo14874j();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, j);
                return true;
            case 12:
                mo14873k();
                parcel2.writeNoException();
                return true;
            case 13:
                emk l = mo14872l();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, l);
                return true;
            case 14:
                mo14885a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean b2 = mo14883b((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.m15673a(parcel2, b2);
                return true;
            case 16:
                mo14881c((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                AbstractC12371dj m = mo14871m();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, m);
                return true;
            case 18:
                AbstractC12126b n = mo14870n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 19:
                String o = mo14869o();
                parcel2.writeNoException();
                parcel2.writeString(o);
                return true;
            default:
                return false;
        }
    }
}
