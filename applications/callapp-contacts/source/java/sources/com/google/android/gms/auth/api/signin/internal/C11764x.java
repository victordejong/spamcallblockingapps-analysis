package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.auth_api.C13135d;
import com.google.android.gms.internal.auth_api.C13137f;
/* renamed from: com.google.android.gms.auth.api.signin.internal.x */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/x.class */
public final class C11764x extends C13135d implements AbstractC11761u {
    public C11764x(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC11761u
    /* renamed from: a */
    public final void mo19519a(AbstractC11759s abstractC11759s, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel m13611a = m13611a();
        C13137f.m13609a(m13611a, abstractC11759s);
        C13137f.m13607a(m13611a, googleSignInOptions);
        m13610a(101, m13611a);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC11761u
    /* renamed from: b */
    public final void mo19518b(AbstractC11759s abstractC11759s, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel m13611a = m13611a();
        C13137f.m13609a(m13611a, abstractC11759s);
        C13137f.m13607a(m13611a, googleSignInOptions);
        m13610a(102, m13611a);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC11761u
    /* renamed from: c */
    public final void mo19517c(AbstractC11759s abstractC11759s, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel m13611a = m13611a();
        C13137f.m13609a(m13611a, abstractC11759s);
        C13137f.m13607a(m13611a, googleSignInOptions);
        m13610a(103, m13611a);
    }
}
