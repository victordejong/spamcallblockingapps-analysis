package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zat.class */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new zau();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6026a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Account f6027b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f6028c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final GoogleSignInAccount f6029d;

    @SafeParcelable.Constructor
    public zat(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Account account, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.f6026a = i;
        this.f6027b = account;
        this.f6028c = i2;
        this.f6029d = googleSignInAccount;
    }

    public zat(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this.f6026a = 2;
        this.f6027b = account;
        this.f6028c = i;
        this.f6029d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6026a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.f6027b, i, false);
        int i3 = this.f6028c;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38847p(parcel, 4, this.f6029d, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
