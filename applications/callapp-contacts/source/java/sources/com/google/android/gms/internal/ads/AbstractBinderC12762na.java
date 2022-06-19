package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.na */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/na.class */
public abstract class AbstractBinderC12762na extends dvd implements AbstractC12763nb {
    public AbstractBinderC12762na() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String a = mo14391a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 3:
                List b = mo14388b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case 4:
                String c = mo14386c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 5:
                AbstractC12394dr d = mo14384d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 6:
                String e = mo14383e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 7:
                double f = mo14382f();
                parcel2.writeNoException();
                parcel2.writeDouble(f);
                return true;
            case 8:
                String g = mo14381g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 9:
                String h = mo14380h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                mo14379i();
                parcel2.writeNoException();
                return true;
            case 11:
                mo14390a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo14387b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean j = mo14378j();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, j);
                return true;
            case 14:
                boolean k = mo14377k();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, k);
                return true;
            case 15:
                Bundle l = mo14376l();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, l);
                return true;
            case 16:
                mo14385c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                emk m = mo14375m();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, m);
                return true;
            case 18:
                AbstractC12126b n = mo14374n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 19:
                AbstractC12371dj o = mo14373o();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, o);
                return true;
            case 20:
                AbstractC12126b p = mo14372p();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, p);
                return true;
            case 21:
                AbstractC12126b q = mo14371q();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, q);
                return true;
            case 22:
                mo14389a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
