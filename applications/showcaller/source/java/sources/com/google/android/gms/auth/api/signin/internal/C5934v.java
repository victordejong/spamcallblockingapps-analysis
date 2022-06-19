package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.auth_api.C7274d;
import com.google.android.gms.internal.auth_api.C7275e;
/* renamed from: com.google.android.gms.auth.api.signin.internal.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/v.class */
public final class C5934v extends C7274d implements AbstractC5931s {
    public C5934v(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC5931s
    /* renamed from: W4 */
    public final void mo17569W4(AbstractC5929q abstractC5929q, GoogleSignInOptions googleSignInOptions) {
        Parcel m7818c0 = m7818c0();
        C7275e.m7816b(m7818c0, abstractC5929q);
        C7275e.m7815c(m7818c0, googleSignInOptions);
        m7819D0(102, m7818c0);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC5931s
    /* renamed from: f4 */
    public final void mo17568f4(AbstractC5929q abstractC5929q, GoogleSignInOptions googleSignInOptions) {
        Parcel m7818c0 = m7818c0();
        C7275e.m7816b(m7818c0, abstractC5929q);
        C7275e.m7815c(m7818c0, googleSignInOptions);
        m7819D0(103, m7818c0);
    }
}
