package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInCredential.class */
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new C5895h();

    /* renamed from: d */
    private final String f18940d;

    /* renamed from: e */
    private final String f18941e;

    /* renamed from: f */
    private final String f18942f;

    /* renamed from: g */
    private final String f18943g;

    /* renamed from: h */
    private final Uri f18944h;

    /* renamed from: i */
    private final String f18945i;

    /* renamed from: j */
    private final String f18946j;

    public SignInCredential(String str, String str2, String str3, String str4, Uri uri, String str5, String str6) {
        this.f18940d = C6155o.m17022f(str);
        this.f18941e = str2;
        this.f18942f = str3;
        this.f18943g = str4;
        this.f18944h = uri;
        this.f18945i = str5;
        this.f18946j = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return C6147m.m17044a(this.f18940d, signInCredential.f18940d) && C6147m.m17044a(this.f18941e, signInCredential.f18941e) && C6147m.m17044a(this.f18942f, signInCredential.f18942f) && C6147m.m17044a(this.f18943g, signInCredential.f18943g) && C6147m.m17044a(this.f18944h, signInCredential.f18944h) && C6147m.m17044a(this.f18945i, signInCredential.f18945i) && C6147m.m17044a(this.f18946j, signInCredential.f18946j);
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f18940d, this.f18941e, this.f18942f, this.f18943g, this.f18944h, this.f18945i, this.f18946j);
    }

    /* renamed from: k0 */
    public final String m17673k0() {
        return this.f18941e;
    }

    /* renamed from: l0 */
    public final String m17672l0() {
        return this.f18943g;
    }

    /* renamed from: m0 */
    public final String m17671m0() {
        return this.f18942f;
    }

    /* renamed from: n0 */
    public final String m17670n0() {
        return this.f18946j;
    }

    /* renamed from: o0 */
    public final String m17669o0() {
        return this.f18940d;
    }

    /* renamed from: p0 */
    public final String m17668p0() {
        return this.f18945i;
    }

    /* renamed from: q0 */
    public final Uri m17667q0() {
        return this.f18944h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17669o0(), false);
        C6170a.m16930r(parcel, 2, m17673k0(), false);
        C6170a.m16930r(parcel, 3, m17671m0(), false);
        C6170a.m16930r(parcel, 4, m17672l0(), false);
        C6170a.m16931q(parcel, 5, m17667q0(), i, false);
        C6170a.m16930r(parcel, 6, m17668p0(), false);
        C6170a.m16930r(parcel, 7, m17670n0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
