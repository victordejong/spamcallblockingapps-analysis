package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C5935w();

    /* renamed from: d */
    private final String f19029d;

    /* renamed from: e */
    private GoogleSignInOptions f19030e;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f19029d = C6155o.m17022f(str);
        this.f19030e = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (!this.f19029d.equals(signInConfiguration.f19029d)) {
            return false;
        }
        GoogleSignInOptions googleSignInOptions = this.f19030e;
        return googleSignInOptions == null ? signInConfiguration.f19030e == null : googleSignInOptions.equals(signInConfiguration.f19030e);
    }

    public final int hashCode() {
        return new C5913a().m17603a(this.f19029d).m17603a(this.f19030e).m17602b();
    }

    /* renamed from: k0 */
    public final GoogleSignInOptions m17611k0() {
        return this.f19030e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f19029d, false);
        C6170a.m16931q(parcel, 5, this.f19030e, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
