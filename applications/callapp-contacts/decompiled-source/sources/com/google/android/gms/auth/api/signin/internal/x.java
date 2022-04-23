package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.auth_api.d;
import com.google.android.gms.internal.auth_api.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/x.class */
public final class x extends d implements u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public x(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.u
    public final void a(s sVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        f.a(a2, sVar);
        f.a(a2, googleSignInOptions);
        a(101, a2);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.u
    public final void b(s sVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        f.a(a2, sVar);
        f.a(a2, googleSignInOptions);
        a(102, a2);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.u
    public final void c(s sVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        f.a(a2, sVar);
        f.a(a2, googleSignInOptions);
        a(103, a2);
    }
}
