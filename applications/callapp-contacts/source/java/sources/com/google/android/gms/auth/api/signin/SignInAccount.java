package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new C11768k();
    @Deprecated
    private String zzcd;
    private GoogleSignInAccount zzce;
    @Deprecated
    private String zzcf;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.zzce = googleSignInAccount;
        this.zzcd = C12045o.m19159a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.zzcf = C12045o.m19159a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
    }

    public final GoogleSignInAccount getGoogleSignInAccount() {
        return this.zzce;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 4, this.zzcd, false);
        C12050a.m19107a(parcel, 7, this.zzce, i, false);
        C12050a.m19104a(parcel, 8, this.zzcf, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
