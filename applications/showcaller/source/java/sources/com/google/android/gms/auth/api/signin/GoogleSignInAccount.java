package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.common.util.C6230h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C5908f();
    @RecentlyNonNull

    /* renamed from: d */
    public static AbstractC6227e f18970d = C6230h.m16804d();

    /* renamed from: e */
    final int f18971e;

    /* renamed from: f */
    private String f18972f;

    /* renamed from: g */
    private String f18973g;

    /* renamed from: h */
    private String f18974h;

    /* renamed from: i */
    private String f18975i;

    /* renamed from: j */
    private Uri f18976j;

    /* renamed from: k */
    private String f18977k;

    /* renamed from: l */
    private long f18978l;

    /* renamed from: m */
    private String f18979m;

    /* renamed from: n */
    List<Scope> f18980n;

    /* renamed from: o */
    private String f18981o;

    /* renamed from: p */
    private String f18982p;

    /* renamed from: q */
    private Set<Scope> f18983q = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f18971e = i;
        this.f18972f = str;
        this.f18973g = str2;
        this.f18974h = str3;
        this.f18975i = str4;
        this.f18976j = uri;
        this.f18977k = str5;
        this.f18978l = j;
        this.f18979m = str6;
        this.f18980n = list;
        this.f18981o = str7;
        this.f18982p = str8;
    }

    @RecentlyNullable
    /* renamed from: t0 */
    public static GoogleSignInAccount m17654t0(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount m17653u0 = m17653u0(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        String str2 = null;
        if (jSONObject.has("serverAuthCode")) {
            str2 = jSONObject.optString("serverAuthCode");
        }
        m17653u0.f18977k = str2;
        return m17653u0;
    }

    @RecentlyNonNull
    /* renamed from: u0 */
    public static GoogleSignInAccount m17653u0(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, @RecentlyNonNull String str7, @RecentlyNonNull Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), C6155o.m17022f(str7), new ArrayList((Collection) C6155o.m17018j(set)), str5, str6);
    }

    @RecentlyNullable
    /* renamed from: P */
    public Account m17664P() {
        String str = this.f18974h;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f18979m.equals(this.f18979m) && googleSignInAccount.m17656r0().equals(m17656r0());
    }

    public int hashCode() {
        return ((this.f18979m.hashCode() + 527) * 31) + m17656r0().hashCode();
    }

    @RecentlyNullable
    /* renamed from: k0 */
    public String m17663k0() {
        return this.f18975i;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public String m17662l0() {
        return this.f18974h;
    }

    @RecentlyNullable
    /* renamed from: m0 */
    public String m17661m0() {
        return this.f18982p;
    }

    @RecentlyNullable
    /* renamed from: n0 */
    public String m17660n0() {
        return this.f18981o;
    }

    @RecentlyNullable
    /* renamed from: o0 */
    public String m17659o0() {
        return this.f18972f;
    }

    @RecentlyNullable
    /* renamed from: p0 */
    public String m17658p0() {
        return this.f18973g;
    }

    @RecentlyNullable
    /* renamed from: q0 */
    public Uri m17657q0() {
        return this.f18976j;
    }

    /* renamed from: r0 */
    public Set<Scope> m17656r0() {
        HashSet hashSet = new HashSet(this.f18980n);
        hashSet.addAll(this.f18983q);
        return hashSet;
    }

    @RecentlyNullable
    /* renamed from: s0 */
    public String m17655s0() {
        return this.f18977k;
    }

    /* renamed from: v0 */
    public final String m17652v0() {
        return this.f18979m;
    }

    @RecentlyNonNull
    /* renamed from: w0 */
    public final String m17651w0() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (m17659o0() != null) {
                jSONObject.put("id", m17659o0());
            }
            if (m17658p0() != null) {
                jSONObject.put("tokenId", m17658p0());
            }
            if (m17662l0() != null) {
                jSONObject.put("email", m17662l0());
            }
            if (m17663k0() != null) {
                jSONObject.put("displayName", m17663k0());
            }
            if (m17660n0() != null) {
                jSONObject.put("givenName", m17660n0());
            }
            if (m17661m0() != null) {
                jSONObject.put("familyName", m17661m0());
            }
            Uri m17657q0 = m17657q0();
            if (m17657q0 != null) {
                jSONObject.put("photoUrl", m17657q0.toString());
            }
            if (m17655s0() != null) {
                jSONObject.put("serverAuthCode", m17655s0());
            }
            jSONObject.put("expirationTime", this.f18978l);
            jSONObject.put("obfuscatedIdentifier", this.f18979m);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.f18980n;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, C5907e.f19024d);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.m17492k0());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18971e);
        C6170a.m16930r(parcel, 2, m17659o0(), false);
        C6170a.m16930r(parcel, 3, m17658p0(), false);
        C6170a.m16930r(parcel, 4, m17662l0(), false);
        C6170a.m16930r(parcel, 5, m17663k0(), false);
        C6170a.m16931q(parcel, 6, m17657q0(), i, false);
        C6170a.m16930r(parcel, 7, m17655s0(), false);
        C6170a.m16934n(parcel, 8, this.f18978l);
        C6170a.m16930r(parcel, 9, this.f18979m, false);
        C6170a.m16926v(parcel, 10, this.f18980n, false);
        C6170a.m16930r(parcel, 11, m17660n0(), false);
        C6170a.m16930r(parcel, 12, m17661m0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
