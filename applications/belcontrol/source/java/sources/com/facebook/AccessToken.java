package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/AccessToken.class */
public final class AccessToken implements Parcelable {

    /* renamed from: n */
    public static final Date f2427n;

    /* renamed from: o */
    public static final Date f2428o;

    /* renamed from: a */
    public final Date f2431a;

    /* renamed from: b */
    public final Set<String> f2432b;

    /* renamed from: c */
    public final Set<String> f2433c;

    /* renamed from: d */
    public final Set<String> f2434d;

    /* renamed from: f */
    public final String f2435f;

    /* renamed from: g */
    public final li0 f2436g;

    /* renamed from: h */
    public final Date f2437h;

    /* renamed from: j */
    public final String f2438j;

    /* renamed from: k */
    public final String f2439k;

    /* renamed from: l */
    public final Date f2440l;

    /* renamed from: m */
    public final String f2441m;

    /* renamed from: p */
    public static final Date f2429p = new Date();

    /* renamed from: q */
    public static final li0 f2430q = li0.c;
    public static final Parcelable.Creator<AccessToken> CREATOR = new C0332a();

    /* renamed from: com.facebook.AccessToken$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/AccessToken$a.class */
    public static final class C0332a implements Parcelable.Creator {
        /* renamed from: a */
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        /* renamed from: b */
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    }

    /* renamed from: com.facebook.AccessToken$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/AccessToken$b.class */
    public interface AbstractC0333b {
        /* renamed from: a */
        void m5232a(ri0 ri0Var);

        /* renamed from: b */
        void m5231b(AccessToken accessToken);
    }

    static {
        Date date = new Date(Long.MAX_VALUE);
        f2427n = date;
        f2428o = date;
    }

    public AccessToken(Parcel parcel) {
        this.f2431a = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f2432b = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f2433c = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f2434d = Collections.unmodifiableSet(new HashSet(arrayList));
        this.f2435f = parcel.readString();
        this.f2436g = li0.valueOf(parcel.readString());
        this.f2437h = new Date(parcel.readLong());
        this.f2438j = parcel.readString();
        this.f2439k = parcel.readString();
        this.f2440l = new Date(parcel.readLong());
        this.f2441m = parcel.readString();
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, li0 li0Var, Date date, Date date2, Date date3) {
        this(str, str2, str3, collection, collection2, collection3, li0Var, date, date2, date3, null);
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, li0 li0Var, Date date, Date date2, Date date3, String str4) {
        gn0.m(str, "accessToken");
        gn0.m(str2, "applicationId");
        gn0.m(str3, "userId");
        this.f2431a = date == null ? f2428o : date;
        this.f2432b = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f2433c = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.f2434d = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.f2435f = str;
        this.f2436g = li0Var == null ? f2430q : li0Var;
        this.f2437h = date2 == null ? f2429p : date2;
        this.f2438j = str2;
        this.f2439k = str3;
        this.f2440l = (date3 == null || date3.getTime() == 0) ? f2428o : date3;
        this.f2441m = str4;
    }

    /* renamed from: b */
    public static AccessToken m5256b(AccessToken accessToken) {
        return new AccessToken(accessToken.f2435f, accessToken.f2438j, accessToken.m5240r(), accessToken.m5244n(), accessToken.m5249i(), accessToken.m5248j(), accessToken.f2436g, new Date(), new Date(), accessToken.f2440l);
    }

    /* renamed from: c */
    public static AccessToken m5255c(JSONObject jSONObject) {
        if (jSONObject.getInt("version") <= 1) {
            String string = jSONObject.getString("token");
            Date date = new Date(jSONObject.getLong("expires_at"));
            JSONArray jSONArray = jSONObject.getJSONArray("permissions");
            JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
            JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
            Date date2 = new Date(jSONObject.getLong("last_refresh"));
            li0 valueOf = li0.valueOf(jSONObject.getString("source"));
            return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), fn0.U(jSONArray), fn0.U(jSONArray2), optJSONArray == null ? new ArrayList() : fn0.U(optJSONArray), valueOf, date, date2, new Date(jSONObject.optLong("data_access_expiration_time", 0L)), jSONObject.optString("graph_domain", null));
        }
        throw new ri0("Unknown AccessToken serialization format.");
    }

    /* renamed from: d */
    public static AccessToken m5254d(Bundle bundle) {
        List<String> m5243o = m5243o(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> m5243o2 = m5243o(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        List<String> m5243o3 = m5243o(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
        String m5327c = cj0.m5327c(bundle);
        String str = m5327c;
        if (fn0.Q(m5327c)) {
            str = ui0.f();
        }
        String m5324f = cj0.m5324f(bundle);
        try {
            return new AccessToken(m5324f, str, fn0.d(m5324f).getString("id"), m5243o, m5243o2, m5243o3, cj0.m5325e(bundle), cj0.m5326d(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), cj0.m5326d(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m5253e() {
        AccessToken g = ki0.h().g();
        if (g != null) {
            m5237u(m5256b(g));
        }
    }

    /* renamed from: g */
    public static AccessToken m5251g() {
        return ki0.h().g();
    }

    /* renamed from: o */
    public static List<String> m5243o(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        return stringArrayList == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    /* renamed from: s */
    public static boolean m5239s() {
        AccessToken g = ki0.h().g();
        return g != null && !g.m5238t();
    }

    /* renamed from: u */
    public static void m5237u(AccessToken accessToken) {
        ki0.h().m(accessToken);
    }

    /* renamed from: a */
    public final void m5257a(StringBuilder sb) {
        String str;
        sb.append(" permissions:");
        if (this.f2432b == null) {
            str = "null";
        } else {
            sb.append("[");
            sb.append(TextUtils.join(", ", this.f2432b));
            str = "]";
        }
        sb.append(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (this.f2431a.equals(accessToken.f2431a) && this.f2432b.equals(accessToken.f2432b) && this.f2433c.equals(accessToken.f2433c) && this.f2434d.equals(accessToken.f2434d) && this.f2435f.equals(accessToken.f2435f) && this.f2436g == accessToken.f2436g && this.f2437h.equals(accessToken.f2437h) && ((str = this.f2438j) != null ? str.equals(accessToken.f2438j) : accessToken.f2438j == null) && this.f2439k.equals(accessToken.f2439k) && this.f2440l.equals(accessToken.f2440l)) {
            String str2 = this.f2441m;
            String str3 = accessToken.f2441m;
            if (str2 != null) {
            }
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public String m5252f() {
        return this.f2438j;
    }

    /* renamed from: h */
    public Date m5250h() {
        return this.f2440l;
    }

    public int hashCode() {
        int hashCode = this.f2431a.hashCode();
        int hashCode2 = this.f2432b.hashCode();
        int hashCode3 = this.f2433c.hashCode();
        int hashCode4 = this.f2434d.hashCode();
        int hashCode5 = this.f2435f.hashCode();
        int hashCode6 = this.f2436g.hashCode();
        int hashCode7 = this.f2437h.hashCode();
        String str = this.f2438j;
        int i = 0;
        int hashCode8 = str == null ? 0 : str.hashCode();
        int hashCode9 = this.f2439k.hashCode();
        int hashCode10 = this.f2440l.hashCode();
        String str2 = this.f2441m;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    /* renamed from: i */
    public Set<String> m5249i() {
        return this.f2433c;
    }

    /* renamed from: j */
    public Set<String> m5248j() {
        return this.f2434d;
    }

    /* renamed from: k */
    public Date m5247k() {
        return this.f2431a;
    }

    /* renamed from: l */
    public String m5246l() {
        return this.f2441m;
    }

    /* renamed from: m */
    public Date m5245m() {
        return this.f2437h;
    }

    /* renamed from: n */
    public Set<String> m5244n() {
        return this.f2432b;
    }

    /* renamed from: p */
    public li0 m5242p() {
        return this.f2436g;
    }

    /* renamed from: q */
    public String m5241q() {
        return this.f2435f;
    }

    /* renamed from: r */
    public String m5240r() {
        return this.f2439k;
    }

    /* renamed from: t */
    public boolean m5238t() {
        return new Date().after(this.f2431a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:");
        sb.append(m5235w());
        m5257a(sb);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: v */
    public JSONObject m5236v() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.f2435f);
        jSONObject.put("expires_at", this.f2431a.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f2432b));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f2433c));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f2434d));
        jSONObject.put("last_refresh", this.f2437h.getTime());
        jSONObject.put("source", this.f2436g.name());
        jSONObject.put("application_id", this.f2438j);
        jSONObject.put("user_id", this.f2439k);
        jSONObject.put("data_access_expiration_time", this.f2440l.getTime());
        String str = this.f2441m;
        if (str != null) {
            jSONObject.put("graph_domain", str);
        }
        return jSONObject;
    }

    /* renamed from: w */
    public final String m5235w() {
        return this.f2435f == null ? "null" : ui0.z(dj0.INCLUDE_ACCESS_TOKENS) ? this.f2435f : "ACCESS_TOKEN_REMOVED";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2431a.getTime());
        parcel.writeStringList(new ArrayList(this.f2432b));
        parcel.writeStringList(new ArrayList(this.f2433c));
        parcel.writeStringList(new ArrayList(this.f2434d));
        parcel.writeString(this.f2435f);
        parcel.writeString(this.f2436g.name());
        parcel.writeLong(this.f2437h.getTime());
        parcel.writeString(this.f2438j);
        parcel.writeString(this.f2439k);
        parcel.writeLong(this.f2440l.getTime());
        parcel.writeString(this.f2441m);
    }
}
