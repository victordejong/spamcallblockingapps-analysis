package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzans.class */
public abstract class zzans extends zzgt implements zzanp {
    public zzans() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String e = mo16587e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 3:
                List i3 = mo16582i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 4:
                String g = mo16584g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 5:
                zzaee p0 = mo16580p0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, p0);
                return true;
            case 6:
                String f = mo16585f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 7:
                String C = mo16596C();
                parcel2.writeNoException();
                parcel2.writeString(C);
                return true;
            case 8:
                mo16581m();
                parcel2.writeNoException();
                return true;
            case 9:
                mo16589c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                mo16586e(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                boolean J = mo16595J();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, J);
                return true;
            case 12:
                boolean U = mo16592U();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, U);
                return true;
            case 13:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 14:
                mo16591a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                IObjectWrapper R = mo16593R();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, R);
                return true;
            case 16:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                zzadw d = mo16588d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 20:
                IObjectWrapper N = mo16594N();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, N);
                return true;
            case 21:
                IObjectWrapper h = mo16583h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 22:
                mo16590a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
