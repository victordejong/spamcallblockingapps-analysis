package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zbc();
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: a */
    public String f5545a;
    @SafeParcelable.Field

    /* renamed from: b */
    public GoogleSignInAccount f5546b;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: c */
    public String f5547c;

    @SafeParcelable.Constructor
    public SignInAccount(@SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 7) GoogleSignInAccount googleSignInAccount, @SafeParcelable.Param(id = 8) String str2) {
        this.f5546b = googleSignInAccount;
        Preconditions.m38900h(str, "8.3 and 8.4 SDKs require non-null email");
        this.f5545a = str;
        Preconditions.m38900h(str2, "8.3 and 8.4 SDKs require non-null userId");
        this.f5547c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 4, this.f5545a, false);
        SafeParcelWriter.m38847p(parcel, 7, this.f5546b, i, false);
        SafeParcelWriter.m38846q(parcel, 8, this.f5547c, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
