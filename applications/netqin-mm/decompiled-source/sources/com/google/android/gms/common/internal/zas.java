package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zas.class */
public final class zas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zas> CREATOR = new zar();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23473a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Account f23474b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f23475c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final GoogleSignInAccount f23476d;

    @SafeParcelable.Constructor
    public zas(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Account account, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.f23473a = i;
        this.f23474b = account;
        this.f23475c = i2;
        this.f23476d = googleSignInAccount;
    }

    public zas(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23473a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f23474b, i, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f23475c);
        SafeParcelWriter.m17226a(parcel, 4, (Parcelable) this.f23476d, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
