package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInPassword.class */
public class SignInPassword extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInPassword> CREATOR = new i();
    private final String zzbf;
    private final String zzbk;

    public SignInPassword(String str, String str2) {
        this.zzbf = o.a(((String) o.a(str, (Object) "Account identifier cannot be null")).trim(), (Object) "Account identifier cannot be empty");
        this.zzbk = o.a(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return m.a(this.zzbf, signInPassword.zzbf) && m.a(this.zzbk, signInPassword.zzbk);
    }

    public String getId() {
        return this.zzbf;
    }

    public String getPassword() {
        return this.zzbk;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbf, this.zzbk});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getId(), false);
        a.a(parcel, 2, getPassword(), false);
        a.b(parcel, a2);
    }
}
