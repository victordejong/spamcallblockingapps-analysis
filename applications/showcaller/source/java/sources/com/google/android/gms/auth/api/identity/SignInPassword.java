package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInPassword.class */
public class SignInPassword extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInPassword> CREATOR = new C5896i();

    /* renamed from: d */
    private final String f18947d;

    /* renamed from: e */
    private final String f18948e;

    public SignInPassword(String str, String str2) {
        this.f18947d = C6155o.m17021g(((String) C6155o.m17017k(str, "Account identifier cannot be null")).trim(), "Account identifier cannot be empty");
        this.f18948e = C6155o.m17022f(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return C6147m.m17044a(this.f18947d, signInPassword.f18947d) && C6147m.m17044a(this.f18948e, signInPassword.f18948e);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18947d, this.f18948e);
    }

    /* renamed from: k0 */
    public String m17666k0() {
        return this.f18947d;
    }

    /* renamed from: l0 */
    public String m17665l0() {
        return this.f18948e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17666k0(), false);
        C6170a.m16930r(parcel, 2, m17665l0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
