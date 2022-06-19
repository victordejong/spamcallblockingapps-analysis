package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zat.class */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new C6149m0();

    /* renamed from: d */
    final int f19619d;

    /* renamed from: e */
    private final Account f19620e;

    /* renamed from: f */
    private final int f19621f;

    /* renamed from: g */
    private final GoogleSignInAccount f19622g;

    public zat(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f19619d = i;
        this.f19620e = account;
        this.f19621f = i2;
        this.f19622g = googleSignInAccount;
    }

    public zat(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19619d);
        C6170a.m16931q(parcel, 2, this.f19620e, i, false);
        C6170a.m16937k(parcel, 3, this.f19621f);
        C6170a.m16931q(parcel, 4, this.f19622g, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
