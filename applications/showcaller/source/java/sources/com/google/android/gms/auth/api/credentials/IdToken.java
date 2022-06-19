package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/IdToken.class */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new C5887g();

    /* renamed from: d */
    private final String f18920d;

    /* renamed from: e */
    private final String f18921e;

    public IdToken(String str, String str2) {
        C6155o.m17026b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        C6155o.m17026b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f18920d = str;
        this.f18921e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return C6147m.m17044a(this.f18920d, idToken.f18920d) && C6147m.m17044a(this.f18921e, idToken.f18921e);
    }

    /* renamed from: k0 */
    public final String m17690k0() {
        return this.f18920d;
    }

    /* renamed from: l0 */
    public final String m17689l0() {
        return this.f18921e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17690k0(), false);
        C6170a.m16930r(parcel, 2, m17689l0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
