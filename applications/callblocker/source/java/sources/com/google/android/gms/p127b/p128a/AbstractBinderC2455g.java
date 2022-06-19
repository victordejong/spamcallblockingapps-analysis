package com.google.android.gms.p127b.p128a;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p137d.BinderC3713a;
import com.google.android.gms.internal.p137d.C3716d;
/* renamed from: com.google.android.gms.b.a.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/g.class */
public abstract class AbstractBinderC2455g extends BinderC3713a implements AbstractC2452d {
    public AbstractBinderC2455g() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.p137d.BinderC3713a
    /* renamed from: a */
    protected boolean mo6528a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 3:
                mo14483a((C2579b) C3716d.m6524a(parcel, C2579b.CREATOR), (C2451c) C3716d.m6524a(parcel, C2451c.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo14485a((Status) C3716d.m6524a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
            default:
                z = false;
                break;
            case 6:
                mo14482b((Status) C3716d.m6524a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo14484a((Status) C3716d.m6524a(parcel, Status.CREATOR), (GoogleSignInAccount) C3716d.m6524a(parcel, GoogleSignInAccount.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo14384a((C2460l) C3716d.m6524a(parcel, C2460l.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
