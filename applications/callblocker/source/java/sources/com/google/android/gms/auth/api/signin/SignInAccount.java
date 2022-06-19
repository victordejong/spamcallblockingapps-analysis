package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractC2663a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new C2446j();
    @Deprecated

    /* renamed from: a */
    private String f6925a;

    /* renamed from: b */
    private GoogleSignInAccount f6926b;
    @Deprecated

    /* renamed from: c */
    private String f6927c;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f6926b = googleSignInAccount;
        this.f6925a = C2662s.m13978a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.f6927c = C2662s.m13978a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
    }

    @Nullable
    /* renamed from: a */
    public final GoogleSignInAccount m14554a() {
        return this.f6926b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 4, this.f6925a, false);
        C2664b.m13937a(parcel, 7, (Parcelable) this.f6926b, i, false);
        C2664b.m13932a(parcel, 8, this.f6927c, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
