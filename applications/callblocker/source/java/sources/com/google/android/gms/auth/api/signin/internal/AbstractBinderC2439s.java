package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p135b.BinderC3700c;
import com.google.android.gms.internal.p135b.C3703f;
/* renamed from: com.google.android.gms.auth.api.signin.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/s.class */
public abstract class AbstractBinderC2439s extends BinderC3700c implements AbstractC2440t {
    public AbstractBinderC2439s() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.p135b.BinderC3700c
    /* renamed from: a */
    protected final boolean mo6536a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 101:
                mo14503a((GoogleSignInAccount) C3703f.m6532a(parcel, GoogleSignInAccount.CREATOR), (Status) C3703f.m6532a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 102:
                mo14502a((Status) C3703f.m6532a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 103:
                mo14501b((Status) C3703f.m6532a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
