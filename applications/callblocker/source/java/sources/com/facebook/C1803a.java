package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
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
/* renamed from: com.facebook.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a.class */
public final class C1803a implements Parcelable {

    /* renamed from: e */
    private final Date f5486e;

    /* renamed from: f */
    private final Set<String> f5487f;

    /* renamed from: g */
    private final Set<String> f5488g;

    /* renamed from: h */
    private final Set<String> f5489h;

    /* renamed from: i */
    private final String f5490i;

    /* renamed from: j */
    private final EnumC1981d f5491j;

    /* renamed from: k */
    private final Date f5492k;

    /* renamed from: l */
    private final String f5493l;

    /* renamed from: m */
    private final String f5494m;

    /* renamed from: n */
    private final Date f5495n;

    /* renamed from: o */
    private final String f5496o;

    /* renamed from: a */
    private static final Date f5482a = new Date(Long.MAX_VALUE);

    /* renamed from: b */
    private static final Date f5483b = f5482a;

    /* renamed from: c */
    private static final Date f5484c = new Date();

    /* renamed from: d */
    private static final EnumC1981d f5485d = EnumC1981d.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<C1803a> CREATOR = new Parcelable.Creator() { // from class: com.facebook.a.1
        /* renamed from: a */
        public C1803a createFromParcel(Parcel parcel) {
            return new C1803a(parcel);
        }

        /* renamed from: a */
        public C1803a[] newArray(int i) {
            return new C1803a[i];
        }
    };

    /* renamed from: com.facebook.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a$a.class */
    public interface AbstractC1805a {
        /* renamed from: a */
        void m16233a(FacebookException facebookException);

        /* renamed from: a */
        void m16232a(C1803a c1803a);
    }

    C1803a(Parcel parcel) {
        this.f5486e = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f5487f = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f5488g = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f5489h = Collections.unmodifiableSet(new HashSet(arrayList));
        this.f5490i = parcel.readString();
        this.f5491j = EnumC1981d.valueOf(parcel.readString());
        this.f5492k = new Date(parcel.readLong());
        this.f5493l = parcel.readString();
        this.f5494m = parcel.readString();
        this.f5495n = new Date(parcel.readLong());
        this.f5496o = parcel.readString();
    }

    public C1803a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC1981d enumC1981d, Date date, Date date2, Date date3) {
        this(str, str2, str3, collection, collection2, collection3, enumC1981d, date, date2, date3, null);
    }

    public C1803a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC1981d enumC1981d, Date date, Date date2, Date date3, String str4) {
        C2084y.m15416a(str, "accessToken");
        C2084y.m15416a(str2, "applicationId");
        C2084y.m15416a(str3, "userId");
        this.f5486e = date == null ? f5483b : date;
        this.f5487f = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f5488g = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.f5489h = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.f5490i = str;
        this.f5491j = enumC1981d == null ? f5485d : enumC1981d;
        this.f5492k = date2 == null ? f5484c : date2;
        this.f5493l = str2;
        this.f5494m = str3;
        this.f5495n = (date3 == null || date3.getTime() == 0) ? f5483b : date3;
        this.f5496o = str4;
    }

    /* renamed from: a */
    public static C1803a m16259a() {
        return C1938c.m15811a().m15803b();
    }

    /* renamed from: a */
    public static C1803a m16258a(Bundle bundle) {
        C1803a c1803a;
        List<String> m16257a = m16257a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> m16257a2 = m16257a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        List<String> m16257a3 = m16257a(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
        String m14972d = C2196p.m14972d(bundle);
        String str = m14972d;
        if (C2079x.m15472a(m14972d)) {
            str = C2095j.m15356l();
        }
        String m14974b = C2196p.m14974b(bundle);
        try {
            c1803a = new C1803a(m14974b, str, C2079x.m15431f(m14974b).getString("id"), m16257a, m16257a2, m16257a3, C2196p.m14973c(bundle), C2196p.m14977a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), C2196p.m14977a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            c1803a = null;
        }
        return c1803a;
    }

    /* renamed from: a */
    public static C1803a m16254a(JSONObject jSONObject) {
        if (jSONObject.getInt("version") > 1) {
            throw new FacebookException("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        EnumC1981d valueOf = EnumC1981d.valueOf(jSONObject.getString("source"));
        return new C1803a(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), C2079x.m15448b(jSONArray), C2079x.m15448b(jSONArray2), optJSONArray == null ? new ArrayList() : C2079x.m15448b(optJSONArray), valueOf, date, date2, new Date(jSONObject.optLong("data_access_expiration_time", 0L)), jSONObject.optString("graph_domain", null));
    }

    /* renamed from: a */
    static List<String> m16257a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        return stringArrayList == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    /* renamed from: a */
    public static void m16256a(C1803a c1803a) {
        C1938c.m15811a().m15809a(c1803a);
    }

    /* renamed from: a */
    private void m16255a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f5487f == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f5487f));
        sb.append("]");
    }

    /* renamed from: b */
    static C1803a m16252b(C1803a c1803a) {
        return new C1803a(c1803a.f5490i, c1803a.f5493l, c1803a.m16241m(), c1803a.m16247g(), c1803a.m16246h(), c1803a.m16245i(), c1803a.f5491j, new Date(), new Date(), c1803a.f5495n);
    }

    /* renamed from: b */
    public static boolean m16253b() {
        C1803a m15803b = C1938c.m15811a().m15803b();
        return m15803b != null && !m15803b.m16239o();
    }

    /* renamed from: c */
    public static void m16251c() {
        C1803a m15803b = C1938c.m15811a().m15803b();
        if (m15803b != null) {
            m16256a(m16252b(m15803b));
        }
    }

    /* renamed from: q */
    private String m16237q() {
        return this.f5490i == null ? "null" : C2095j.m15370a(EnumC2197q.INCLUDE_ACCESS_TOKENS) ? this.f5490i : "ACCESS_TOKEN_REMOVED";
    }

    /* renamed from: d */
    public String m16250d() {
        return this.f5490i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Date m16249e() {
        return this.f5486e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C1803a)) {
                z = false;
            } else {
                C1803a c1803a = (C1803a) obj;
                if (!this.f5486e.equals(c1803a.f5486e) || !this.f5487f.equals(c1803a.f5487f) || !this.f5488g.equals(c1803a.f5488g) || !this.f5489h.equals(c1803a.f5489h) || !this.f5490i.equals(c1803a.f5490i) || this.f5491j != c1803a.f5491j || !this.f5492k.equals(c1803a.f5492k) || (this.f5493l != null ? !this.f5493l.equals(c1803a.f5493l) : c1803a.f5493l != null) || !this.f5494m.equals(c1803a.f5494m) || !this.f5495n.equals(c1803a.f5495n) || (this.f5496o != null ? !this.f5496o.equals(c1803a.f5496o) : c1803a.f5496o != null)) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public Date m16248f() {
        return this.f5495n;
    }

    /* renamed from: g */
    public Set<String> m16247g() {
        return this.f5487f;
    }

    /* renamed from: h */
    public Set<String> m16246h() {
        return this.f5488g;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f5486e.hashCode();
        int hashCode2 = this.f5487f.hashCode();
        int hashCode3 = this.f5488g.hashCode();
        int hashCode4 = this.f5489h.hashCode();
        int hashCode5 = this.f5490i.hashCode();
        int hashCode6 = this.f5491j.hashCode();
        int hashCode7 = this.f5492k.hashCode();
        int hashCode8 = this.f5493l == null ? 0 : this.f5493l.hashCode();
        int hashCode9 = this.f5494m.hashCode();
        int hashCode10 = this.f5495n.hashCode();
        if (this.f5496o != null) {
            i = this.f5496o.hashCode();
        }
        return ((((((hashCode8 + ((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31)) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    /* renamed from: i */
    public Set<String> m16245i() {
        return this.f5489h;
    }

    /* renamed from: j */
    public EnumC1981d m16244j() {
        return this.f5491j;
    }

    /* renamed from: k */
    public Date m16243k() {
        return this.f5492k;
    }

    /* renamed from: l */
    public String m16242l() {
        return this.f5493l;
    }

    /* renamed from: m */
    public String m16241m() {
        return this.f5494m;
    }

    /* renamed from: n */
    public String m16240n() {
        return this.f5496o;
    }

    /* renamed from: o */
    public boolean m16239o() {
        return new Date().after(this.f5486e);
    }

    /* renamed from: p */
    public JSONObject m16238p() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.f5490i);
        jSONObject.put("expires_at", this.f5486e.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f5487f));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f5488g));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f5489h));
        jSONObject.put("last_refresh", this.f5492k.getTime());
        jSONObject.put("source", this.f5491j.name());
        jSONObject.put("application_id", this.f5493l);
        jSONObject.put("user_id", this.f5494m);
        jSONObject.put("data_access_expiration_time", this.f5495n.getTime());
        if (this.f5496o != null) {
            jSONObject.put("graph_domain", this.f5496o);
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(m16237q());
        m16255a(sb);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f5486e.getTime());
        parcel.writeStringList(new ArrayList(this.f5487f));
        parcel.writeStringList(new ArrayList(this.f5488g));
        parcel.writeStringList(new ArrayList(this.f5489h));
        parcel.writeString(this.f5490i);
        parcel.writeString(this.f5491j.name());
        parcel.writeLong(this.f5492k.getTime());
        parcel.writeString(this.f5493l);
        parcel.writeString(this.f5494m);
        parcel.writeLong(this.f5495n.getTime());
        parcel.writeString(this.f5496o);
    }
}
