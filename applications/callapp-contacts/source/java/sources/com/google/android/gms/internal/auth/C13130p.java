package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.auth.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/p.class */
public final class C13130p extends C13115a implements AbstractC13128n {
    public C13130p(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override // com.google.android.gms.internal.auth.AbstractC13128n
    /* renamed from: a */
    public final Bundle mo13616a(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel m13621a = m13621a();
        C13126l.m13618a(m13621a, account);
        m13621a.writeString(str);
        C13126l.m13618a(m13621a, bundle);
        Parcel m13620a = m13620a(5, m13621a);
        Bundle bundle2 = (Bundle) C13126l.m13619a(m13620a, Bundle.CREATOR);
        m13620a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.AbstractC13128n
    /* renamed from: a */
    public final Bundle mo13615a(String str, Bundle bundle) throws RemoteException {
        Parcel m13621a = m13621a();
        m13621a.writeString(str);
        C13126l.m13618a(m13621a, bundle);
        Parcel m13620a = m13620a(2, m13621a);
        Bundle bundle2 = (Bundle) C13126l.m13619a(m13620a, Bundle.CREATOR);
        m13620a.recycle();
        return bundle2;
    }
}
