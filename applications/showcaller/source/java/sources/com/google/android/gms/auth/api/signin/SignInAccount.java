package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new C5937j();
    @Deprecated

    /* renamed from: d */
    private String f19012d;

    /* renamed from: e */
    private GoogleSignInAccount f19013e;
    @Deprecated

    /* renamed from: f */
    private String f19014f;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f19013e = googleSignInAccount;
        this.f19012d = C6155o.m17021g(str, "8.3 and 8.4 SDKs require non-null email");
        this.f19014f = C6155o.m17021g(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    /* renamed from: N */
    public final GoogleSignInAccount m17623N() {
        return this.f19013e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 4, this.f19012d, false);
        C6170a.m16931q(parcel, 7, this.f19013e, i, false);
        C6170a.m16930r(parcel, 8, this.f19014f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
