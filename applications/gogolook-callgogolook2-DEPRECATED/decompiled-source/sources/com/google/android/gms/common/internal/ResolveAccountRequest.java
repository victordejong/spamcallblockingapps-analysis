package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C6992h0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountRequest.class */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new C6992h0();

    /* renamed from: a */
    public final int f6598a;

    /* renamed from: b */
    public final Account f6599b;

    /* renamed from: c */
    public final int f6600c;

    /* renamed from: d */
    public final GoogleSignInAccount f6601d;

    public ResolveAccountRequest(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f6598a = i;
        this.f6599b = account;
        this.f6600c = i2;
        this.f6601d = googleSignInAccount;
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    /* renamed from: H */
    public int m31947H() {
        return this.f6600c;
    }

    @Nullable
    /* renamed from: I */
    public GoogleSignInAccount m31946I() {
        return this.f6601d;
    }

    /* renamed from: c */
    public Account m31945c() {
        return this.f6599b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6598a);
        C7031b.m21220a(parcel, 2, (Parcelable) m31945c(), i, false);
        C7031b.m21225a(parcel, 3, m31947H());
        C7031b.m21220a(parcel, 4, (Parcelable) m31946I(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
