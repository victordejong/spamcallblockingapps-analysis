package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zbu();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5552a;
    @SafeParcelable.Field

    /* renamed from: b */
    public GoogleSignInOptions f5553b;

    @SafeParcelable.Constructor
    public SignInConfiguration(@RecentlyNonNull @SafeParcelable.Param(id = 2) String str, @RecentlyNonNull @SafeParcelable.Param(id = 5) GoogleSignInOptions googleSignInOptions) {
        Preconditions.m38901g(str);
        this.f5552a = str;
        this.f5553b = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (!this.f5552a.equals(signInConfiguration.f5552a)) {
            return false;
        }
        GoogleSignInOptions googleSignInOptions = this.f5553b;
        GoogleSignInOptions googleSignInOptions2 = signInConfiguration.f5553b;
        return googleSignInOptions == null ? googleSignInOptions2 == null : googleSignInOptions.equals(googleSignInOptions2);
    }

    public final int hashCode() {
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.m39116a(this.f5552a);
        hashAccumulator.m39116a(this.f5553b);
        return hashAccumulator.f5551a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.f5552a, false);
        SafeParcelWriter.m38847p(parcel, 5, this.f5553b, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
