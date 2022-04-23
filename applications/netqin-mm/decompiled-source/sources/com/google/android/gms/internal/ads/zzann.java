package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzann.class */
public abstract class zzann extends zzgt implements zzano {
    public zzann() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String e = mo16570e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 3:
                List i3 = mo16565i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 4:
                String g = mo16567g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 5:
                zzaee q = mo16563q();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, q);
                return true;
            case 6:
                String f = mo16568f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 7:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 8:
                String D = mo16579D();
                parcel2.writeNoException();
                parcel2.writeString(D);
                return true;
            case 9:
                String s = mo16562s();
                parcel2.writeNoException();
                parcel2.writeString(s);
                return true;
            case 10:
                mo16564m();
                parcel2.writeNoException();
                return true;
            case 11:
                mo16572c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo16569e(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean J = mo16578J();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, J);
                return true;
            case 14:
                boolean U = mo16575U();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, U);
                return true;
            case 15:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 16:
                mo16574a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 18:
                IObjectWrapper R = mo16576R();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, R);
                return true;
            case 19:
                zzadw d = mo16571d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 20:
                IObjectWrapper N = mo16577N();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, N);
                return true;
            case 21:
                IObjectWrapper h = mo16566h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 22:
                mo16573a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
