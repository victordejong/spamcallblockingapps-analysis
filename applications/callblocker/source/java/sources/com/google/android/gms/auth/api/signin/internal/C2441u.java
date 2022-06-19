package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.p135b.C3701d;
import com.google.android.gms.internal.p135b.C3703f;
/* renamed from: com.google.android.gms.auth.api.signin.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/u.class */
public final class C2441u extends C3701d implements AbstractC2442v {
    public C2441u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC2442v
    /* renamed from: a */
    public final void mo14500a(AbstractC2440t abstractC2440t, GoogleSignInOptions googleSignInOptions) {
        Parcel m6535a = m6535a();
        C3703f.m6533a(m6535a, abstractC2440t);
        C3703f.m6531a(m6535a, googleSignInOptions);
        m6534a(102, m6535a);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC2442v
    /* renamed from: b */
    public final void mo14499b(AbstractC2440t abstractC2440t, GoogleSignInOptions googleSignInOptions) {
        Parcel m6535a = m6535a();
        C3703f.m6533a(m6535a, abstractC2440t);
        C3703f.m6531a(m6535a, googleSignInOptions);
        m6534a(103, m6535a);
    }
}
