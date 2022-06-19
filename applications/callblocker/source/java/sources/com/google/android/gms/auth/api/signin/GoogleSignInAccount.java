package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2711h;
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
public class GoogleSignInAccount extends AbstractC2663a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C2416f();

    /* renamed from: a */
    private static AbstractC2708e f6883a = C2711h.m13859d();

    /* renamed from: b */
    private final int f6884b;

    /* renamed from: c */
    private String f6885c;

    /* renamed from: d */
    private String f6886d;

    /* renamed from: e */
    private String f6887e;

    /* renamed from: f */
    private String f6888f;

    /* renamed from: g */
    private Uri f6889g;

    /* renamed from: h */
    private String f6890h;

    /* renamed from: i */
    private long f6891i;

    /* renamed from: j */
    private String f6892j;

    /* renamed from: k */
    private List<Scope> f6893k;

    /* renamed from: l */
    private String f6894l;

    /* renamed from: m */
    private String f6895m;

    /* renamed from: n */
    private Set<Scope> f6896n = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f6884b = i;
        this.f6885c = str;
        this.f6886d = str2;
        this.f6887e = str3;
        this.f6888f = str4;
        this.f6889g = uri;
        this.f6890h = str5;
        this.f6891i = j;
        this.f6892j = str6;
        this.f6893k = list;
        this.f6894l = str7;
        this.f6895m = str8;
    }

    /* renamed from: a */
    public static GoogleSignInAccount m14596a(String str) {
        GoogleSignInAccount m14595a;
        if (TextUtils.isEmpty(str)) {
            m14595a = null;
        } else {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("photoUrl", null);
            Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
            long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
            HashSet hashSet = new HashSet();
            JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                hashSet.add(new Scope(jSONArray.getString(i)));
            }
            m14595a = m14595a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
            m14595a.f6890h = jSONObject.optString("serverAuthCode", null);
        }
        return m14595a;
    }

    /* renamed from: a */
    private static GoogleSignInAccount m14595a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        Long l2 = l;
        if (l == null) {
            l2 = Long.valueOf(f6883a.mo13862a() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l2.longValue(), C2662s.m13979a(str7), new ArrayList((Collection) C2662s.m13981a(set)), str5, str6);
    }

    /* renamed from: m */
    private final JSONObject m14583m() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (m14598a() != null) {
                jSONObject.put("id", m14598a());
            }
            if (m14594b() != null) {
                jSONObject.put("tokenId", m14594b());
            }
            if (m14593c() != null) {
                jSONObject.put("email", m14593c());
            }
            if (m14591e() != null) {
                jSONObject.put("displayName", m14591e());
            }
            if (m14590f() != null) {
                jSONObject.put("givenName", m14590f());
            }
            if (m14589g() != null) {
                jSONObject.put("familyName", m14589g());
            }
            if (m14588h() != null) {
                jSONObject.put("photoUrl", m14588h().toString());
            }
            if (m14587i() != null) {
                jSONObject.put("serverAuthCode", m14587i());
            }
            jSONObject.put("expirationTime", this.f6891i);
            jSONObject.put("obfuscatedIdentifier", this.f6892j);
            JSONArray jSONArray = new JSONArray();
            Scope[] scopeArr = (Scope[]) this.f6893k.toArray(new Scope[this.f6893k.size()]);
            Arrays.sort(scopeArr, C2415e.f6937a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.m14463a());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public String m14598a() {
        return this.f6885c;
    }

    /* renamed from: b */
    public String m14594b() {
        return this.f6886d;
    }

    /* renamed from: c */
    public String m14593c() {
        return this.f6887e;
    }

    /* renamed from: d */
    public Account m14592d() {
        return this.f6887e == null ? null : new Account(this.f6887e, "com.google");
    }

    /* renamed from: e */
    public String m14591e() {
        return this.f6888f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof GoogleSignInAccount)) {
                z = false;
            } else {
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
                if (!googleSignInAccount.f6892j.equals(this.f6892j) || !googleSignInAccount.m14585k().equals(m14585k())) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public String m14590f() {
        return this.f6894l;
    }

    /* renamed from: g */
    public String m14589g() {
        return this.f6895m;
    }

    /* renamed from: h */
    public Uri m14588h() {
        return this.f6889g;
    }

    public int hashCode() {
        return ((this.f6892j.hashCode() + 527) * 31) + m14585k().hashCode();
    }

    /* renamed from: i */
    public String m14587i() {
        return this.f6890h;
    }

    /* renamed from: j */
    public final String m14586j() {
        return this.f6892j;
    }

    /* renamed from: k */
    public Set<Scope> m14585k() {
        HashSet hashSet = new HashSet(this.f6893k);
        hashSet.addAll(this.f6896n);
        return hashSet;
    }

    /* renamed from: l */
    public final String m14584l() {
        JSONObject m14583m = m14583m();
        m14583m.remove("serverAuthCode");
        return m14583m.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6884b);
        C2664b.m13932a(parcel, 2, m14598a(), false);
        C2664b.m13932a(parcel, 3, m14594b(), false);
        C2664b.m13932a(parcel, 4, m14593c(), false);
        C2664b.m13932a(parcel, 5, m14591e(), false);
        C2664b.m13937a(parcel, 6, (Parcelable) m14588h(), i, false);
        C2664b.m13932a(parcel, 7, m14587i(), false);
        C2664b.m13940a(parcel, 8, this.f6891i);
        C2664b.m13932a(parcel, 9, this.f6892j, false);
        C2664b.m13921c(parcel, 10, this.f6893k, false);
        C2664b.m13932a(parcel, 11, m14590f(), false);
        C2664b.m13932a(parcel, 12, m14589g(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
