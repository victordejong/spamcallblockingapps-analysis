package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.C6765g;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/SignInAccount.class */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new C6765g();
    @Deprecated

    /* renamed from: a */
    public String f6466a;

    /* renamed from: b */
    public GoogleSignInAccount f6467b;
    @Deprecated

    /* renamed from: c */
    public String f6468c;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f6467b = googleSignInAccount;
        C7021t.m21287a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.f6466a = str;
        C7021t.m21287a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
        this.f6468c = str2;
    }

    @Nullable
    /* renamed from: c */
    public final GoogleSignInAccount m32011c() {
        return this.f6467b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 4, this.f6466a, false);
        C7031b.m21220a(parcel, 7, (Parcelable) this.f6467b, i, false);
        C7031b.m21215a(parcel, 8, this.f6468c, false);
        C7031b.m21229a(parcel, a);
    }
}
