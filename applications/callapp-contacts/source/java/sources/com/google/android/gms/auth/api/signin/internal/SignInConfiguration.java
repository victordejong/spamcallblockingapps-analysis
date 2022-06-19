package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C11765y();
    private final String zzcu;
    private GoogleSignInOptions zzcv;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.zzcu = C12045o.m19160a(str);
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
        return new C11741a().m19551a(this.zzcu).m19551a(this.zzcv).f39061b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzcu, false);
        C12050a.m19107a(parcel, 5, this.zzcv, i, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final GoogleSignInOptions zzu() {
        return this.zzcv;
    }
}
