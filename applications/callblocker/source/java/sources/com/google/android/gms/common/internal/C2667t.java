package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public class C2667t extends AbstractC2663a {
    public static final Parcelable.Creator<C2667t> CREATOR = new C2602ae();

    /* renamed from: a */
    private final int f7419a;

    /* renamed from: b */
    private final Account f7420b;

    /* renamed from: c */
    private final int f7421c;

    /* renamed from: d */
    private final GoogleSignInAccount f7422d;

    public C2667t(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f7419a = i;
        this.f7420b = account;
        this.f7421c = i2;
        this.f7422d = googleSignInAccount;
    }

    public C2667t(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    /* renamed from: a */
    public Account m13918a() {
        return this.f7420b;
    }

    /* renamed from: b */
    public int m13917b() {
        return this.f7421c;
    }

    /* renamed from: c */
    public GoogleSignInAccount m13916c() {
        return this.f7422d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7419a);
        C2664b.m13937a(parcel, 2, (Parcelable) m13918a(), i, false);
        C2664b.m13941a(parcel, 3, m13917b());
        C2664b.m13937a(parcel, 4, (Parcelable) m13916c(), i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
