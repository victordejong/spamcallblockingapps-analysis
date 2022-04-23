package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.c;
import com.google.android.gms.internal.auth_api.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/v.class */
public abstract class v extends c implements s {
    public v() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.auth_api.c
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 101:
                a((GoogleSignInAccount) f.a(parcel, GoogleSignInAccount.CREATOR), (Status) f.a(parcel, Status.CREATOR));
                break;
            case 102:
                a((Status) f.a(parcel, Status.CREATOR));
                break;
            case 103:
                b((Status) f.a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
