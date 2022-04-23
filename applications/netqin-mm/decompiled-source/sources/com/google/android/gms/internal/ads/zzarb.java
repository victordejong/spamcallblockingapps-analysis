package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarb.class */
public abstract class zzarb extends zzgt implements zzaqy {
    public zzarb() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    /* renamed from: a */
    public static zzaqy m16401a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return queryLocalInterface instanceof zzaqy ? (zzaqy) queryLocalInterface : new zzara(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                onCreate((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo16406N1();
                parcel2.writeNoException();
                return true;
            case 3:
                onStart();
                parcel2.writeNoException();
                return true;
            case 4:
                onResume();
                parcel2.writeNoException();
                return true;
            case 5:
                onPause();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, bundle);
                return true;
            case 7:
                mo16403l0();
                parcel2.writeNoException();
                return true;
            case 8:
                onDestroy();
                parcel2.writeNoException();
                return true;
            case 9:
                mo16402w0();
                parcel2.writeNoException();
                return true;
            case 10:
                onBackPressed();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean W1 = mo16405W1();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, W1);
                return true;
            case 12:
                mo16404a(parcel.readInt(), parcel.readInt(), (Intent) zzgw.m12080a(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo16407G(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
