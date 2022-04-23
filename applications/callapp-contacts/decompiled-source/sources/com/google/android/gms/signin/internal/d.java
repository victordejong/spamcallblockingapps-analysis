package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.b;
import com.google.android.gms.internal.base.c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/d.class */
public abstract class d extends b implements e {
    public d() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 3:
                c.a(parcel, ConnectionResult.CREATOR);
                c.a(parcel, zaa.CREATOR);
                break;
            case 4:
                c.a(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                c.a(parcel, Status.CREATOR);
                break;
            case 7:
                c.a(parcel, Status.CREATOR);
                c.a(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                a((zak) c.a(parcel, zak.CREATOR));
                break;
            case 9:
                c.a(parcel, zag.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
