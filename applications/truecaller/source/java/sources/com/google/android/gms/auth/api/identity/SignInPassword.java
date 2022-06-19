package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInPassword.class */
public class SignInPassword extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SignInPassword> CREATOR = new zbm();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5487a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5488b;

    @SafeParcelable.Constructor
    public SignInPassword(@RecentlyNonNull @SafeParcelable.Param(id = 1) String str, @RecentlyNonNull @SafeParcelable.Param(id = 2) String str2) {
        Preconditions.m38897k(str, "Account identifier cannot be null");
        String trim = str.trim();
        Preconditions.m38900h(trim, "Account identifier cannot be empty");
        this.f5487a = trim;
        Preconditions.m38901g(str2);
        this.f5488b = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return Objects.m38910a(this.f5487a, signInPassword.f5487a) && Objects.m38910a(this.f5488b, signInPassword.f5488b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5487a, this.f5488b});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5487a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5488b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
