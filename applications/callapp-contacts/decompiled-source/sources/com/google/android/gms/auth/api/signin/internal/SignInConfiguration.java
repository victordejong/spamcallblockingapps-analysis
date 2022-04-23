package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new y();
    private final String zzcu;
    private GoogleSignInOptions zzcv;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.zzcu = o.a(str);
        this.zzcv = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (!this.zzcu.equals(signInConfiguration.zzcu)) {
            return false;
        }
        GoogleSignInOptions googleSignInOptions = this.zzcv;
        return googleSignInOptions == null ? signInConfiguration.zzcv == null : googleSignInOptions.equals(signInConfiguration.zzcv);
    }

    public final int hashCode() {
        return new a().a(this.zzcu).a(this.zzcv).f22507b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzcu, false);
        a.a(parcel, 5, this.zzcv, i, false);
        a.b(parcel, a2);
    }

    public final GoogleSignInOptions zzu() {
        return this.zzcv;
    }
}
