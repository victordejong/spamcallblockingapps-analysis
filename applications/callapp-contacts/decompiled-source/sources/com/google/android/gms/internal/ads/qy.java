package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qy.class */
public abstract class qy extends dvd implements qz {
    public qy() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static qz zzaj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return queryLocalInterface instanceof qz ? (qz) queryLocalInterface : new rb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                onCreate((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                onRestart();
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
                Bundle bundle = (Bundle) dvc.a(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                dvc.b(parcel2, bundle);
                return true;
            case 7:
                onStop();
                parcel2.writeNoException();
                return true;
            case 8:
                onDestroy();
                parcel2.writeNoException();
                return true;
            case 9:
                zzdq();
                parcel2.writeNoException();
                return true;
            case 10:
                onBackPressed();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zzwh = zzwh();
                parcel2.writeNoException();
                dvc.a(parcel2, zzwh);
                return true;
            case 12:
                onActivityResult(parcel.readInt(), parcel.readInt(), (Intent) dvc.a(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzae(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                onUserLeaveHint();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
