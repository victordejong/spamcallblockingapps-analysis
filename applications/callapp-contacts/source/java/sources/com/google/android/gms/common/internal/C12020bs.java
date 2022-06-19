package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p357c.C13161a;
import com.google.android.gms.internal.p357c.C13163c;
/* renamed from: com.google.android.gms.common.internal.bs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bs.class */
public final class C12020bs extends C13161a implements AbstractC12036i {
    public C12020bs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.AbstractC12036i
    /* renamed from: a */
    public final Account mo19175a() throws RemoteException {
        Parcel m13592a = m13592a(2, m13591c());
        Account account = (Account) C13163c.m13587a(m13592a, Account.CREATOR);
        m13592a.recycle();
        return account;
    }
}
