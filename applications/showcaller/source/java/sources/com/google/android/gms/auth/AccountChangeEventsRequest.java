package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsRequest.class */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new C5947d();

    /* renamed from: d */
    private final int f18840d;

    /* renamed from: e */
    private int f18841e;
    @Deprecated

    /* renamed from: f */
    private String f18842f;

    /* renamed from: g */
    private Account f18843g;

    public AccountChangeEventsRequest() {
        this.f18840d = 1;
    }

    public AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.f18840d = i;
        this.f18841e = i2;
        this.f18842f = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f18843g = account;
        } else {
            this.f18843g = new Account(str, "com.google");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18840d);
        C6170a.m16937k(parcel, 2, this.f18841e);
        C6170a.m16930r(parcel, 3, this.f18842f, false);
        C6170a.m16931q(parcel, 4, this.f18843g, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
