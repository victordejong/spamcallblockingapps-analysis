package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.BinderC13134c;
import com.google.android.gms.internal.auth_api.C13137f;
/* renamed from: com.google.android.gms.auth.api.signin.internal.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/v.class */
public abstract class AbstractBinderC11762v extends BinderC13134c implements AbstractC11759s {
    public AbstractBinderC11762v() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.auth_api.BinderC13134c
    /* renamed from: a */
    public final boolean mo13612a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 101:
                mo19525a((GoogleSignInAccount) C13137f.m13608a(parcel, GoogleSignInAccount.CREATOR), (Status) C13137f.m13608a(parcel, Status.CREATOR));
                break;
            case 102:
                mo19524a((Status) C13137f.m13608a(parcel, Status.CREATOR));
                break;
            case 103:
                mo19523b((Status) C13137f.m13608a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
