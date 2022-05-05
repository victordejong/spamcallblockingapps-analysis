package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.C6770g;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsRequest.class */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new C6770g();

    /* renamed from: a */
    public final int f6338a;

    /* renamed from: b */
    public int f6339b;
    @Deprecated

    /* renamed from: c */
    public String f6340c;

    /* renamed from: d */
    public Account f6341d;

    public AccountChangeEventsRequest() {
        this.f6338a = 1;
    }

    public AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.f6338a = i;
        this.f6339b = i2;
        this.f6340c = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f6341d = account;
        } else {
            this.f6341d = new Account(str, "com.google");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6338a);
        C7031b.m21225a(parcel, 2, this.f6339b);
        C7031b.m21215a(parcel, 3, this.f6340c, false);
        C7031b.m21220a(parcel, 4, (Parcelable) this.f6341d, i, false);
        C7031b.m21229a(parcel, a);
    }
}
