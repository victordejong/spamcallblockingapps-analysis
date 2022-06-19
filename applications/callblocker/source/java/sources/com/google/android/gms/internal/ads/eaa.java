package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eaa.class */
public abstract class eaa extends dkl implements dzx {
    public eaa() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                dzn a = mo8119a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR), parcel.readString(), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 2:
                dzn b = mo8115b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR), parcel.readString(), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b);
                z = true;
                break;
            case 3:
                dzg a2 = mo8117a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readString(), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a2);
                z = true;
                break;
            case 4:
                eae b2 = mo8116b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b2);
                z = true;
                break;
            case 5:
                AbstractC2849by a3 = mo8122a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a3);
                z = true;
                break;
            case 6:
                AbstractC3452qy a4 = mo8118a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a4);
                z = true;
                break;
            case 7:
                AbstractC3383oj c = mo8113c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, c);
                z = true;
                break;
            case 8:
                AbstractC3371ny a5 = mo8124a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a5);
                z = true;
                break;
            case 9:
                eae a6 = mo8123a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a6);
                z = true;
                break;
            case 10:
                dzn a7 = mo8120a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a7);
                z = true;
                break;
            case 11:
                AbstractC2858cg a8 = mo8121a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a8);
                z = true;
                break;
            case 12:
                AbstractC3475ru b3 = mo8114b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readString(), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b3);
                z = true;
                break;
            case 13:
                dzn c2 = mo8112c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR), parcel.readString(), AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, c2);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
