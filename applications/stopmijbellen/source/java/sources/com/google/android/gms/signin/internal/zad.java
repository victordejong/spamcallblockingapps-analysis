package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zad.class */
public abstract class zad extends zab implements zae {
    public zad() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zab
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 3:
                ConnectionResult connectionResult = (ConnectionResult) zac.zab(parcel, ConnectionResult.CREATOR);
                zaa zaaVar = (zaa) zac.zab(parcel, zaa.CREATOR);
                break;
            case 4:
                Status status = (Status) zac.zab(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) zac.zab(parcel, Status.CREATOR);
                break;
            case 7:
                Status status3 = (Status) zac.zab(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) zac.zab(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                zab((zak) zac.zab(parcel, zak.CREATOR));
                break;
            case 9:
                zag zagVar = (zag) zac.zab(parcel, zag.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
