package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.er */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/er.class */
public abstract class AbstractBinderC12535er extends dvd implements AbstractC12532eo {
    public AbstractBinderC12535er() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    /* renamed from: a */
    public static AbstractC12532eo m14696a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof AbstractC12532eo ? (AbstractC12532eo) queryLocalInterface : new C12534eq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String a = mo14709a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 2:
                AbstractC12394dr b = mo14706b(parcel.readString());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, b);
                return true;
            case 3:
                List<String> a2 = mo14711a();
                parcel2.writeNoException();
                parcel2.writeStringList(a2);
                return true;
            case 4:
                String b2 = mo14708b();
                parcel2.writeNoException();
                parcel2.writeString(b2);
                return true;
            case 5:
                mo14704c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo14705c();
                parcel2.writeNoException();
                return true;
            case 7:
                emk d = mo14703d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 8:
                mo14702e();
                parcel2.writeNoException();
                return true;
            case 9:
                AbstractC12126b f = mo14701f();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, f);
                return true;
            case 10:
                boolean a3 = mo14710a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15673a(parcel2, a3);
                return true;
            case 11:
                AbstractC12126b g = mo14700g();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, g);
                return true;
            case 12:
                boolean h = mo14699h();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, h);
                return true;
            case 13:
                boolean i3 = mo14698i();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, i3);
                return true;
            case 14:
                mo14707b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo14697j();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
