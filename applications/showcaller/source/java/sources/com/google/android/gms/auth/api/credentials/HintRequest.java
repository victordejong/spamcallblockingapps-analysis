package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest.class */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new C5886f();

    /* renamed from: d */
    private final int f18912d;

    /* renamed from: e */
    private final CredentialPickerConfig f18913e;

    /* renamed from: f */
    private final boolean f18914f;

    /* renamed from: g */
    private final boolean f18915g;

    /* renamed from: h */
    private final String[] f18916h;

    /* renamed from: i */
    private final boolean f18917i;

    /* renamed from: j */
    private final String f18918j;

    /* renamed from: k */
    private final String f18919k;

    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.f18912d = i;
        this.f18913e = (CredentialPickerConfig) C6155o.m17018j(credentialPickerConfig);
        this.f18914f = z;
        this.f18915g = z2;
        this.f18916h = (String[]) C6155o.m17018j(strArr);
        if (i < 2) {
            this.f18917i = true;
            this.f18918j = null;
            this.f18919k = null;
            return;
        }
        this.f18917i = z3;
        this.f18918j = str;
        this.f18919k = str2;
    }

    /* renamed from: k0 */
    public final String[] m17696k0() {
        return this.f18916h;
    }

    /* renamed from: l0 */
    public final CredentialPickerConfig m17695l0() {
        return this.f18913e;
    }

    /* renamed from: m0 */
    public final String m17694m0() {
        return this.f18919k;
    }

    /* renamed from: n0 */
    public final String m17693n0() {
        return this.f18918j;
    }

    /* renamed from: o0 */
    public final boolean m17692o0() {
        return this.f18914f;
    }

    /* renamed from: p0 */
    public final boolean m17691p0() {
        return this.f18917i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17695l0(), i, false);
        C6170a.m16945c(parcel, 2, m17692o0());
        C6170a.m16945c(parcel, 3, this.f18915g);
        C6170a.m16929s(parcel, 4, m17696k0(), false);
        C6170a.m16945c(parcel, 5, m17691p0());
        C6170a.m16930r(parcel, 6, m17693n0(), false);
        C6170a.m16930r(parcel, 7, m17694m0(), false);
        C6170a.m16937k(parcel, 1000, this.f18912d);
        C6170a.m16946b(parcel, m16947a);
    }
}
