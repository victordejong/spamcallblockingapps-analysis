package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential.class */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new C5882b();

    /* renamed from: d */
    private final String f18887d;

    /* renamed from: e */
    private final String f18888e;

    /* renamed from: f */
    private final Uri f18889f;

    /* renamed from: g */
    private final List<IdToken> f18890g;

    /* renamed from: h */
    private final String f18891h;

    /* renamed from: i */
    private final String f18892i;

    /* renamed from: j */
    private final String f18893j;

    /* renamed from: k */
    private final String f18894k;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a0, code lost:
        if ("https".equalsIgnoreCase(r0.getScheme()) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Credential(java.lang.String r5, java.lang.String r6, android.net.Uri r7, java.util.List<com.google.android.gms.auth.api.credentials.IdToken> r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.credentials.Credential.<init>(java.lang.String, java.lang.String, android.net.Uri, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f18887d, credential.f18887d) && TextUtils.equals(this.f18888e, credential.f18888e) && C6147m.m17044a(this.f18889f, credential.f18889f) && TextUtils.equals(this.f18891h, credential.f18891h) && TextUtils.equals(this.f18892i, credential.f18892i);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18887d, this.f18888e, this.f18889f, this.f18891h, this.f18892i);
    }

    /* renamed from: k0 */
    public String m17718k0() {
        return this.f18892i;
    }

    /* renamed from: l0 */
    public String m17717l0() {
        return this.f18894k;
    }

    /* renamed from: m0 */
    public String m17716m0() {
        return this.f18893j;
    }

    /* renamed from: n0 */
    public String m17715n0() {
        return this.f18887d;
    }

    /* renamed from: o0 */
    public List<IdToken> m17714o0() {
        return this.f18890g;
    }

    /* renamed from: p0 */
    public String m17713p0() {
        return this.f18888e;
    }

    /* renamed from: q0 */
    public String m17712q0() {
        return this.f18891h;
    }

    /* renamed from: r0 */
    public Uri m17711r0() {
        return this.f18889f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17715n0(), false);
        C6170a.m16930r(parcel, 2, m17713p0(), false);
        C6170a.m16931q(parcel, 3, m17711r0(), i, false);
        C6170a.m16926v(parcel, 4, m17714o0(), false);
        C6170a.m16930r(parcel, 5, m17712q0(), false);
        C6170a.m16930r(parcel, 6, m17718k0(), false);
        C6170a.m16930r(parcel, 9, m17716m0(), false);
        C6170a.m16930r(parcel, 10, m17717l0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
