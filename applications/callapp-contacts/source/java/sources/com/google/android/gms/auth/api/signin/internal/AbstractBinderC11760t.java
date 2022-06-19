package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth_api.BinderC13134c;
/* renamed from: com.google.android.gms.auth.api.signin.internal.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/t.class */
public abstract class AbstractBinderC11760t extends BinderC13134c implements AbstractC11757q {
    public AbstractBinderC11760t() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.auth_api.BinderC13134c
    /* renamed from: a */
    public final boolean mo13612a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            mo19522a();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo19521b();
            return true;
        }
    }
}
