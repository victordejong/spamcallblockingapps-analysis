package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.internal.auth_api.BinderC7273c;
/* renamed from: com.google.android.gms.auth.api.signin.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/r.class */
public abstract class AbstractBinderC5930r extends BinderC7273c implements AbstractC5927o {
    public AbstractBinderC5930r() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.auth_api.BinderC7273c
    /* renamed from: c0 */
    protected final boolean mo7820c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo17570l();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo17571k();
            return true;
        }
    }
}
