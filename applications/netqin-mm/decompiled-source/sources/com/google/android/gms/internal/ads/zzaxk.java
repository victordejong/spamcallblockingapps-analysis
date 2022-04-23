package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxk.class */
public abstract class zzaxk extends zzgt implements zzaxl {
    public zzaxk() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    /* renamed from: a */
    public static zzaxl m16214a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof zzaxl ? (zzaxl) queryLocalInterface : new zzaxn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaxg zzaxgVar;
        switch (i) {
            case 1:
                IObjectWrapper a = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzaxr zzaxrVar = (zzaxr) zzgw.m12080a(parcel, zzaxr.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzaxgVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzaxgVar = queryLocalInterface instanceof zzaxg ? (zzaxg) queryLocalInterface : new zzaxi(readStrongBinder);
                }
                mo13686a(a, zzaxrVar, zzaxgVar);
                parcel2.writeNoException();
                return true;
            case 2:
                mo13670s(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper c = mo13672c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, c);
                return true;
            case 4:
                IObjectWrapper g = mo13671g(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, g);
                return true;
            case 5:
                mo13673b(parcel.createTypedArrayList(Uri.CREATOR), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzars.m16393a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo13680a(parcel.createTypedArrayList(Uri.CREATOR), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzars.m16393a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo13685a((zzasa) zzgw.m12080a(parcel, zzasa.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
