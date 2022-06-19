package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.nf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nf.class */
public abstract class AbstractBinderC12767nf extends dvd implements AbstractC12764nc {
    public AbstractBinderC12767nf() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String a = mo14410a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 3:
                List b = mo14407b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case 4:
                String c = mo14405c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 5:
                AbstractC12394dr d = mo14403d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 6:
                String e = mo14402e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 7:
                String f = mo14401f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                mo14400g();
                parcel2.writeNoException();
                return true;
            case 9:
                mo14409a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                mo14406b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                boolean h = mo14399h();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, h);
                return true;
            case 12:
                boolean i3 = mo14398i();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, i3);
                return true;
            case 13:
                Bundle j = mo14397j();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, j);
                return true;
            case 14:
                mo14404c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC12126b k = mo14396k();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, k);
                return true;
            case 16:
                emk l = mo14395l();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, l);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                AbstractC12371dj m = mo14394m();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, m);
                return true;
            case 20:
                AbstractC12126b n = mo14393n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 21:
                AbstractC12126b o = mo14392o();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, o);
                return true;
            case 22:
                mo14408a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
