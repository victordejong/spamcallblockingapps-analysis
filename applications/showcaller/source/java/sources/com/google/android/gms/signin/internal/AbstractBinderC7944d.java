package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.BinderC7283b;
import com.google.android.gms.internal.base.C7284c;
/* renamed from: com.google.android.gms.signin.internal.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/d.class */
public abstract class AbstractBinderC7944d extends BinderC7283b implements AbstractC7945e {
    public AbstractBinderC7944d() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.BinderC7283b
    /* renamed from: m2 */
    protected final boolean mo5852m2(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 3:
                ConnectionResult connectionResult = (ConnectionResult) C7284c.m7810a(parcel, ConnectionResult.CREATOR);
                zaa zaaVar = (zaa) C7284c.m7810a(parcel, zaa.CREATOR);
                break;
            case 4:
                Status status = (Status) C7284c.m7810a(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) C7284c.m7810a(parcel, Status.CREATOR);
                break;
            case 7:
                Status status3 = (Status) C7284c.m7810a(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) C7284c.m7810a(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                mo5851K1((zak) C7284c.m7810a(parcel, zak.CREATOR));
                break;
            case 9:
                zag zagVar = (zag) C7284c.m7810a(parcel, zag.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
