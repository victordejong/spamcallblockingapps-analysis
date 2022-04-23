package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth_api.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/t.class */
public abstract class t extends c implements q {
    public t() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.auth_api.c
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            a();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            b();
            return true;
        }
    }
}
