package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.auth.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/n.class */
public final class C7269n extends C7256a implements AbstractC7267l {
    public C7269n(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override // com.google.android.gms.internal.auth.AbstractC7267l
    /* renamed from: S5 */
    public final Bundle mo7824S5(Account account, String str, Bundle bundle) {
        Parcel m7828c0 = m7828c0();
        C7266k.m7826b(m7828c0, account);
        m7828c0.writeString(str);
        C7266k.m7826b(m7828c0, bundle);
        Parcel m7829D0 = m7829D0(5, m7828c0);
        Bundle bundle2 = (Bundle) C7266k.m7827a(m7829D0, Bundle.CREATOR);
        m7829D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.AbstractC7267l
    /* renamed from: i0 */
    public final Bundle mo7823i0(String str, Bundle bundle) {
        Parcel m7828c0 = m7828c0();
        m7828c0.writeString(str);
        C7266k.m7826b(m7828c0, bundle);
        Parcel m7829D0 = m7829D0(2, m7828c0);
        Bundle bundle2 = (Bundle) C7266k.m7827a(m7829D0, Bundle.CREATOR);
        m7829D0.recycle();
        return bundle2;
    }
}
