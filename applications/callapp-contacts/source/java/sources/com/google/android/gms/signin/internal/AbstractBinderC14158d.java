package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.BinderC13152b;
import com.google.android.gms.internal.base.C13153c;
/* renamed from: com.google.android.gms.signin.internal.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/d.class */
public abstract class AbstractBinderC14158d extends BinderC13152b implements AbstractC14159e {
    public AbstractBinderC14158d() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.BinderC13152b
    /* renamed from: a */
    public final boolean mo11509a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 3:
                C13153c.m13598a(parcel, ConnectionResult.CREATOR);
                C13153c.m13598a(parcel, zaa.CREATOR);
                break;
            case 4:
                C13153c.m13598a(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                C13153c.m13598a(parcel, Status.CREATOR);
                break;
            case 7:
                C13153c.m13598a(parcel, Status.CREATOR);
                C13153c.m13598a(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                mo11508a((zak) C13153c.m13598a(parcel, zak.CREATOR));
                break;
            case 9:
                C13153c.m13598a(parcel, zag.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
