package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.internal.p135b.BinderC3700c;
/* renamed from: com.google.android.gms.auth.api.signin.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/q.class */
public abstract class AbstractBinderC2437q extends BinderC3700c implements AbstractC2438r {
    public AbstractBinderC2437q() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.p135b.BinderC3700c
    /* renamed from: a */
    protected final boolean mo6536a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo14498a();
                z = true;
                break;
            case 2:
                mo14497b();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
