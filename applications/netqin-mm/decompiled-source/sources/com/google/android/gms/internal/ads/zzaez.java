package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaez.class */
public abstract class zzaez extends zzgt implements zzafa {
    public zzaez() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    /* renamed from: a */
    public static zzafa m16809a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzafa ? (zzafa) queryLocalInterface : new zzafc(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String v = mo14212v(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(v);
                return true;
            case 2:
                zzaee o = mo14218o(parcel.readString());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, o);
                return true;
            case 3:
                List<String> p1 = mo14217p1();
                parcel2.writeNoException();
                parcel2.writeStringList(p1);
                return true;
            case 4:
                String c0 = mo14221c0();
                parcel2.writeNoException();
                parcel2.writeString(c0);
                return true;
            case 5:
                mo14215s(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo14219m();
                parcel2.writeNoException();
                return true;
            case 7:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper H1 = mo14224H1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, H1);
                return true;
            case 10:
                boolean w = mo14211w(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, w);
                return true;
            case 11:
                IObjectWrapper v2 = mo14213v();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, v2);
                return true;
            case 12:
                boolean s1 = mo14214s1();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, s1);
                return true;
            case 13:
                boolean j1 = mo14220j1();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, j1);
                return true;
            case 14:
                mo14216q(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo14223V0();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
