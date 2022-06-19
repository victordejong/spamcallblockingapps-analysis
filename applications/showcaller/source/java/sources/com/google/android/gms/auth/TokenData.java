package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/TokenData.class */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new C5953j();

    /* renamed from: d */
    private final int f18846d;

    /* renamed from: e */
    private final String f18847e;

    /* renamed from: f */
    private final Long f18848f;

    /* renamed from: g */
    private final boolean f18849g;

    /* renamed from: h */
    private final boolean f18850h;

    /* renamed from: i */
    private final List<String> f18851i;

    /* renamed from: j */
    private final String f18852j;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list, String str2) {
        this.f18846d = i;
        this.f18847e = C6155o.m17022f(str);
        this.f18848f = l;
        this.f18849g = z;
        this.f18850h = z2;
        this.f18851i = list;
        this.f18852j = str2;
    }

    /* renamed from: k0 */
    public static TokenData m17725k0(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f18847e, tokenData.f18847e) && C6147m.m17044a(this.f18848f, tokenData.f18848f) && this.f18849g == tokenData.f18849g && this.f18850h == tokenData.f18850h && C6147m.m17044a(this.f18851i, tokenData.f18851i) && C6147m.m17044a(this.f18852j, tokenData.f18852j);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18847e, this.f18848f, Boolean.valueOf(this.f18849g), Boolean.valueOf(this.f18850h), this.f18851i, this.f18852j);
    }

    /* renamed from: l0 */
    public final String m17724l0() {
        return this.f18847e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18846d);
        C6170a.m16930r(parcel, 2, this.f18847e, false);
        C6170a.m16933o(parcel, 3, this.f18848f, false);
        C6170a.m16945c(parcel, 4, this.f18849g);
        C6170a.m16945c(parcel, 5, this.f18850h);
        C6170a.m16928t(parcel, 6, this.f18851i, false);
        C6170a.m16930r(parcel, 7, this.f18852j, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
