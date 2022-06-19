package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest.class */
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new C5890c();

    /* renamed from: d */
    private final String f18934d;

    /* renamed from: e */
    private final String f18935e;

    /* renamed from: f */
    private String f18936f;

    public GetSignInIntentRequest(String str, String str2, String str3) {
        C6155o.m17018j(str);
        this.f18934d = str;
        this.f18935e = str2;
        this.f18936f = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return C6147m.m17044a(this.f18934d, getSignInIntentRequest.f18934d) && C6147m.m17044a(this.f18935e, getSignInIntentRequest.f18935e) && C6147m.m17044a(this.f18936f, getSignInIntentRequest.f18936f);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18934d, this.f18935e, this.f18936f);
    }

    /* renamed from: k0 */
    public String m17677k0() {
        return this.f18935e;
    }

    /* renamed from: l0 */
    public String m17676l0() {
        return this.f18934d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17676l0(), false);
        C6170a.m16930r(parcel, 2, m17677k0(), false);
        C6170a.m16930r(parcel, 3, this.f18936f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
