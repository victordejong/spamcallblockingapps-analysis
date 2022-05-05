package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import gogolook.callgogolook2.gson.UserProfile;
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
import p081h.p154f.C6106b;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.C6150u;
import p081h.p154f.EnumC6114c;
import p081h.p154f.EnumC6151v;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/facebook/AccessToken.class */
public final class AccessToken implements Parcelable {

    /* renamed from: a */
    public final Date f2526a;

    /* renamed from: b */
    public final Set<String> f2527b;

    /* renamed from: c */
    public final Set<String> f2528c;

    /* renamed from: d */
    public final Set<String> f2529d;

    /* renamed from: e */
    public final String f2530e;

    /* renamed from: f */
    public final EnumC6114c f2531f;

    /* renamed from: g */
    public final Date f2532g;

    /* renamed from: h */
    public final String f2533h;

    /* renamed from: i */
    public final String f2534i;

    /* renamed from: j */
    public final Date f2535j;

    /* renamed from: k */
    public static final Date f2522k = new Date(Long.MAX_VALUE);

    /* renamed from: l */
    public static final Date f2523l = f2522k;

    /* renamed from: m */
    public static final Date f2524m = new Date();

    /* renamed from: n */
    public static final EnumC6114c f2525n = EnumC6114c.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new C2217a();

    /* renamed from: com.facebook.AccessToken$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/AccessToken$a.class */
    public static final class C2217a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    }

    /* renamed from: com.facebook.AccessToken$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/AccessToken$b.class */
    public interface AbstractC2218b {
        /* renamed from: a */
        void m35486a(AccessToken accessToken);

        /* renamed from: a */
        void m35485a(C6131k kVar);
    }

    public AccessToken(Parcel parcel) {
        this.f2526a = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f2527b = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f2528c = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f2529d = Collections.unmodifiableSet(new HashSet(arrayList));
        this.f2530e = parcel.readString();
        this.f2531f = EnumC6114c.valueOf(parcel.readString());
        this.f2532g = new Date(parcel.readLong());
        this.f2533h = parcel.readString();
        this.f2534i = parcel.readString();
        this.f2535j = new Date(parcel.readLong());
    }

    public AccessToken(String str, String str2, String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable Collection<String> collection3, @Nullable EnumC6114c cVar, @Nullable Date date, @Nullable Date date2, @Nullable Date date3) {
        C2416h0.m34790a(str, "accessToken");
        C2416h0.m34790a(str2, "applicationId");
        C2416h0.m34790a(str3, "userId");
        this.f2526a = date == null ? f2523l : date;
        this.f2527b = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f2528c = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.f2529d = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.f2530e = str;
        this.f2531f = cVar == null ? f2525n : cVar;
        this.f2532g = date2 == null ? f2524m : date2;
        this.f2533h = str2;
        this.f2534i = str3;
        this.f2535j = (date3 == null || date3.getTime() == 0) ? f2523l : date3;
    }

    /* renamed from: A */
    public static void m35508A() {
        AccessToken c = C6106b.m23822g().m23826c();
        if (c != null) {
            m35498b(m35502a(c));
        }
    }

    /* renamed from: B */
    public static AccessToken m35507B() {
        return C6106b.m23822g().m23826c();
    }

    /* renamed from: C */
    public static boolean m35506C() {
        AccessToken c = C6106b.m23822g().m23826c();
        return c != null && !c.m35489x();
    }

    /* renamed from: a */
    public static AccessToken m35504a(Bundle bundle) {
        List<String> a = m35503a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> a2 = m35503a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        List<String> a3 = m35503a(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
        String a4 = C6150u.m23696a(bundle);
        String str = a4;
        if (C2408g0.m34816d(a4)) {
            str = C6135n.m23745f();
        }
        String c = C6150u.m23691c(bundle);
        try {
            return new AccessToken(c, str, C2408g0.m34831b(c).getString("id"), a, a2, a3, C6150u.m23692b(bundle), C6150u.m23695a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), C6150u.m23695a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static AccessToken m35502a(AccessToken accessToken) {
        return new AccessToken(accessToken.f2530e, accessToken.f2533h, accessToken.m35490w(), accessToken.m35493t(), accessToken.m35497c(), accessToken.m35496q(), accessToken.f2531f, new Date(), new Date(), accessToken.f2535j);
    }

    /* renamed from: a */
    public static AccessToken m35500a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt("version") <= 1) {
            String string = jSONObject.getString("token");
            Date date = new Date(jSONObject.getLong("expires_at"));
            JSONArray jSONArray = jSONObject.getJSONArray("permissions");
            JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
            JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
            Date date2 = new Date(jSONObject.getLong("last_refresh"));
            EnumC6114c valueOf = EnumC6114c.valueOf(jSONObject.getString("source"));
            return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), C2408g0.m34829b(jSONArray), C2408g0.m34829b(jSONArray2), optJSONArray == null ? new ArrayList() : C2408g0.m34829b(optJSONArray), valueOf, date, date2, new Date(jSONObject.optLong("data_access_expiration_time", 0L)));
        }
        throw new C6131k("Unknown AccessToken serialization format.");
    }

    /* renamed from: a */
    public static List<String> m35503a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        return stringArrayList == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    /* renamed from: b */
    public static void m35498b(AccessToken accessToken) {
        C6106b.m23822g().m23835a(accessToken);
    }

    /* renamed from: a */
    public String m35505a() {
        return this.f2533h;
    }

    /* renamed from: a */
    public final void m35501a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f2527b == null) {
            sb.append(C14247d.f31851f);
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(UserProfile.CARD_CATE_SEPARATOR, this.f2527b));
        sb.append("]");
    }

    /* renamed from: b */
    public Date m35499b() {
        return this.f2535j;
    }

    /* renamed from: c */
    public Set<String> m35497c() {
        return this.f2528c;
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
        if (!this.f2526a.equals(accessToken.f2526a) || !this.f2527b.equals(accessToken.f2527b) || !this.f2528c.equals(accessToken.f2528c) || !this.f2529d.equals(accessToken.f2529d) || !this.f2530e.equals(accessToken.f2530e) || this.f2531f != accessToken.f2531f || !this.f2532g.equals(accessToken.f2532g) || ((str = this.f2533h) != null ? !str.equals(accessToken.f2533h) : accessToken.f2533h != null) || !this.f2534i.equals(accessToken.f2534i) || !this.f2535j.equals(accessToken.f2535j)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2526a.hashCode();
        int hashCode2 = this.f2527b.hashCode();
        int hashCode3 = this.f2528c.hashCode();
        int hashCode4 = this.f2529d.hashCode();
        int hashCode5 = this.f2530e.hashCode();
        int hashCode6 = this.f2531f.hashCode();
        int hashCode7 = this.f2532g.hashCode();
        String str = this.f2533h;
        return ((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f2534i.hashCode()) * 31) + this.f2535j.hashCode();
    }

    /* renamed from: q */
    public Set<String> m35496q() {
        return this.f2529d;
    }

    /* renamed from: r */
    public Date m35495r() {
        return this.f2526a;
    }

    /* renamed from: s */
    public Date m35494s() {
        return this.f2532g;
    }

    /* renamed from: t */
    public Set<String> m35493t() {
        return this.f2527b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:");
        sb.append(m35487z());
        m35501a(sb);
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    /* renamed from: u */
    public EnumC6114c m35492u() {
        return this.f2531f;
    }

    /* renamed from: v */
    public String m35491v() {
        return this.f2530e;
    }

    /* renamed from: w */
    public String m35490w() {
        return this.f2534i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2526a.getTime());
        parcel.writeStringList(new ArrayList(this.f2527b));
        parcel.writeStringList(new ArrayList(this.f2528c));
        parcel.writeStringList(new ArrayList(this.f2529d));
        parcel.writeString(this.f2530e);
        parcel.writeString(this.f2531f.name());
        parcel.writeLong(this.f2532g.getTime());
        parcel.writeString(this.f2533h);
        parcel.writeString(this.f2534i);
        parcel.writeLong(this.f2535j.getTime());
    }

    /* renamed from: x */
    public boolean m35489x() {
        return new Date().after(this.f2526a);
    }

    /* renamed from: y */
    public JSONObject m35488y() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.f2530e);
        jSONObject.put("expires_at", this.f2526a.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f2527b));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f2528c));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f2529d));
        jSONObject.put("last_refresh", this.f2532g.getTime());
        jSONObject.put("source", this.f2531f.name());
        jSONObject.put("application_id", this.f2533h);
        jSONObject.put("user_id", this.f2534i);
        jSONObject.put("data_access_expiration_time", this.f2535j.getTime());
        return jSONObject;
    }

    /* renamed from: z */
    public final String m35487z() {
        return this.f2530e == null ? C14247d.f31851f : C6135n.m23752b(EnumC6151v.INCLUDE_ACCESS_TOKENS) ? this.f2530e : "ACCESS_TOKEN_REMOVED";
    }
}
