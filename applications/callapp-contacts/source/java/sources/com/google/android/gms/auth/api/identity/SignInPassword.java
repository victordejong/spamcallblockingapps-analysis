package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInPassword.class */
public class SignInPassword extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInPassword> CREATOR = new C11724i();
    private final String zzbf;
    private final String zzbk;

    public SignInPassword(String str, String str2) {
        this.zzbf = C12045o.m19159a(((String) C12045o.m19161a(str, (Object) "Account identifier cannot be null")).trim(), (Object) "Account identifier cannot be empty");
        this.zzbk = C12045o.m19160a(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return C12041m.m19168a(this.zzbf, signInPassword.zzbf) && C12041m.m19168a(this.zzbk, signInPassword.zzbk);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, getId(), false);
        C12050a.m19104a(parcel, 2, getPassword(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}
