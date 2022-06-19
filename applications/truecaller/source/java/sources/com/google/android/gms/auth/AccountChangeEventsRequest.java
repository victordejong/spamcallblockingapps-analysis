package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsRequest.class */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5329a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f5330b;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: c */
    public String f5331c;
    @SafeParcelable.Field

    /* renamed from: d */
    public Account f5332d;

    public AccountChangeEventsRequest() {
        this.f5329a = 1;
    }

    @SafeParcelable.Constructor
    public AccountChangeEventsRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) Account account) {
        this.f5329a = i;
        this.f5330b = i2;
        this.f5331c = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f5332d = account;
        } else {
            this.f5332d = new Account(str, "com.google");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5329a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.f5330b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        SafeParcelWriter.m38846q(parcel, 3, this.f5331c, false);
        SafeParcelWriter.m38847p(parcel, 4, this.f5332d, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
