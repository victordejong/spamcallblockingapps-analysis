package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.BinderC7273c;
import com.google.android.gms.internal.auth_api.C7275e;
/* renamed from: com.google.android.gms.auth.api.signin.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/t.class */
public abstract class AbstractBinderC5932t extends BinderC7273c implements AbstractC5929q {
    public AbstractBinderC5932t() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.auth_api.BinderC7273c
    /* renamed from: c0 */
    protected final boolean mo7820c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 101:
                mo17572s2((GoogleSignInAccount) C7275e.m7817a(parcel, GoogleSignInAccount.CREATOR), (Status) C7275e.m7817a(parcel, Status.CREATOR));
                break;
            case 102:
                mo17573c1((Status) C7275e.m7817a(parcel, Status.CREATOR));
                break;
            case 103:
                mo17574F1((Status) C7275e.m7817a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
