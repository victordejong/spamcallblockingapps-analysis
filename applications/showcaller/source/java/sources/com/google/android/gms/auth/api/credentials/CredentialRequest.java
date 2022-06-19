package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest.class */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new C5885e();

    /* renamed from: d */
    private final int f18903d;

    /* renamed from: e */
    private final boolean f18904e;

    /* renamed from: f */
    private final String[] f18905f;

    /* renamed from: g */
    private final CredentialPickerConfig f18906g;

    /* renamed from: h */
    private final CredentialPickerConfig f18907h;

    /* renamed from: i */
    private final boolean f18908i;

    /* renamed from: j */
    private final String f18909j;

    /* renamed from: k */
    private final String f18910k;

    /* renamed from: l */
    private final boolean f18911l;

    public CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.f18903d = i;
        this.f18904e = z;
        this.f18905f = (String[]) C6155o.m17018j(strArr);
        this.f18906g = credentialPickerConfig == null ? new CredentialPickerConfig.C5880a().m17707a() : credentialPickerConfig;
        this.f18907h = credentialPickerConfig2 == null ? new CredentialPickerConfig.C5880a().m17707a() : credentialPickerConfig2;
        if (i < 3) {
            this.f18908i = true;
            this.f18909j = null;
            this.f18910k = null;
        } else {
            this.f18908i = z2;
            this.f18909j = str;
            this.f18910k = str2;
        }
        this.f18911l = z3;
    }

    /* renamed from: k0 */
    public final String[] m17703k0() {
        return this.f18905f;
    }

    /* renamed from: l0 */
    public final CredentialPickerConfig m17702l0() {
        return this.f18907h;
    }

    /* renamed from: m0 */
    public final CredentialPickerConfig m17701m0() {
        return this.f18906g;
    }

    /* renamed from: n0 */
    public final String m17700n0() {
        return this.f18910k;
    }

    /* renamed from: o0 */
    public final String m17699o0() {
        return this.f18909j;
    }

    /* renamed from: p0 */
    public final boolean m17698p0() {
        return this.f18908i;
    }

    /* renamed from: q0 */
    public final boolean m17697q0() {
        return this.f18904e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, m17697q0());
        C6170a.m16929s(parcel, 2, m17703k0(), false);
        C6170a.m16931q(parcel, 3, m17701m0(), i, false);
        C6170a.m16931q(parcel, 4, m17702l0(), i, false);
        C6170a.m16945c(parcel, 5, m17698p0());
        C6170a.m16930r(parcel, 6, m17699o0(), false);
        C6170a.m16930r(parcel, 7, m17700n0(), false);
        C6170a.m16945c(parcel, 8, this.f18911l);
        C6170a.m16937k(parcel, 1000, this.f18903d);
        C6170a.m16946b(parcel, m16947a);
    }
}
