package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountRequest.class */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new zam();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7515f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final Account f7516g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final int f7517h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final GoogleSignInAccount f7518i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Account account, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.f7515f = i;
        this.f7516g = account;
        this.f7517h = i2;
        this.f7518i = googleSignInAccount;
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    /* renamed from: B */
    public int m14518B() {
        return this.f7517h;
    }

    @Nullable
    /* renamed from: I */
    public GoogleSignInAccount m14517I() {
        return this.f7518i;
    }

    /* renamed from: d */
    public Account m14516d() {
        return this.f7516g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7515f);
        SafeParcelWriter.m14448p(parcel, 2, m14516d(), i, false);
        SafeParcelWriter.m14453k(parcel, 3, m14518B());
        SafeParcelWriter.m14448p(parcel, 4, m14517I(), i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
