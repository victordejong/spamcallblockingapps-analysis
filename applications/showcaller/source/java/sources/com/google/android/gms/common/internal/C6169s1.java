package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import p078c.p084c.p085a.p086a.p088b.p091c.C1847a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.common.internal.s1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s1.class */
public final class C6169s1 extends C1847a implements AbstractC6134i {
    public C6169s1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.AbstractC6134i
    /* renamed from: b */
    public final Account mo16986b() {
        Parcel m28795c0 = m28795c0(2, m28796D0());
        Account account = (Account) C1849c.m28792c(m28795c0, Account.CREATOR);
        m28795c0.recycle();
        return account;
    }
}
