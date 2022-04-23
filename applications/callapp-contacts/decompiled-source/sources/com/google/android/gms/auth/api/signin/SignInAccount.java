package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new k();
    @Deprecated
    private String zzcd;
    private GoogleSignInAccount zzce;
    @Deprecated
    private String zzcf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.zzce = googleSignInAccount;
        this.zzcd = o.a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.zzcf = o.a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
    }

    public final GoogleSignInAccount getGoogleSignInAccount() {
        return this.zzce;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 4, this.zzcd, false);
        a.a(parcel, 7, this.zzce, i, false);
        a.a(parcel, 8, this.zzcf, false);
        a.b(parcel, a2);
    }
}
