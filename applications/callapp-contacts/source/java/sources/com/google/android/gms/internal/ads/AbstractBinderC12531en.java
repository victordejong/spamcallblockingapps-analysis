package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.en */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/en.class */
public abstract class AbstractBinderC12531en extends dvd implements AbstractC12527ek {
    public AbstractBinderC12531en() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                AbstractC12126b a = mo14801a();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 3:
                String b = mo14799b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 4:
                List c = mo14797c();
                parcel2.writeNoException();
                parcel2.writeList(c);
                return true;
            case 5:
                String d = mo14795d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                return true;
            case 6:
                AbstractC12394dr e = mo14794e();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, e);
                return true;
            case 7:
                String f = mo14793f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                String g = mo14792g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 9:
                Bundle h = mo14791h();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, h);
                return true;
            case 10:
                mo14790i();
                parcel2.writeNoException();
                return true;
            case 11:
                emk j = mo14789j();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, j);
                return true;
            case 12:
                mo14800a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean b2 = mo14798b((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.m15673a(parcel2, b2);
                return true;
            case 14:
                mo14796c((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC12371dj k = mo14788k();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, k);
                return true;
            case 16:
                AbstractC12126b l = mo14787l();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, l);
                return true;
            case 17:
                String m = mo14786m();
                parcel2.writeNoException();
                parcel2.writeString(m);
                return true;
            default:
                return false;
        }
    }
}
