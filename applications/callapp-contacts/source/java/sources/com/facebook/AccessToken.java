package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/AccessToken.class */
public final class AccessToken implements Parcelable {
    public static final String ACCESS_TOKEN_KEY = "access_token";
    private static final String APPLICATION_ID_KEY = "application_id";
    private static final int CURRENT_JSON_FORMAT = 1;
    public static final String DATA_ACCESS_EXPIRATION_TIME = "data_access_expiration_time";
    private static final String DECLINED_PERMISSIONS_KEY = "declined_permissions";
    private static final Date DEFAULT_EXPIRATION_TIME;
    private static final String EXPIRED_PERMISSIONS_KEY = "expired_permissions";
    private static final String EXPIRES_AT_KEY = "expires_at";
    public static final String EXPIRES_IN_KEY = "expires_in";
    private static final String GRAPH_DOMAIN = "graph_domain";
    private static final String LAST_REFRESH_KEY = "last_refresh";
    private static final Date MAX_DATE;
    private static final String PERMISSIONS_KEY = "permissions";
    private static final String SOURCE_KEY = "source";
    private static final String TOKEN_KEY = "token";
    public static final String USER_ID_KEY = "user_id";
    private static final String VERSION_KEY = "version";
    private final String applicationId;
    private final Date dataAccessExpirationTime;
    private final Set<String> declinedPermissions;
    private final Set<String> expiredPermissions;
    private final Date expires;
    private final String graphDomain;
    private final Date lastRefresh;
    private final Set<String> permissions;
    private final EnumC10164c source;
    private final String token;
    private final String userId;
    private static final Date DEFAULT_LAST_REFRESH_TIME = new Date();
    private static final EnumC10164c DEFAULT_ACCESS_TOKEN_SOURCE = EnumC10164c.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator() { // from class: com.facebook.AccessToken.2
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AccessToken[i];
        }
    };

    /* renamed from: com.facebook.AccessToken$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/AccessToken$a.class */
    public interface AbstractC9918a {
    }

    /* renamed from: com.facebook.AccessToken$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/AccessToken$b.class */
    public interface AbstractC9919b {
    }

    static {
        Date date = new Date(Long.MAX_VALUE);
        MAX_DATE = date;
        DEFAULT_EXPIRATION_TIME = date;
    }

    AccessToken(Parcel parcel) {
        this.expires = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.permissions = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.declinedPermissions = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.expiredPermissions = Collections.unmodifiableSet(new HashSet(arrayList));
        this.token = parcel.readString();
        this.source = EnumC10164c.valueOf(parcel.readString());
        this.lastRefresh = new Date(parcel.readLong());
        this.applicationId = parcel.readString();
        this.userId = parcel.readString();
        this.dataAccessExpirationTime = new Date(parcel.readLong());
        this.graphDomain = parcel.readString();
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC10164c enumC10164c, Date date, Date date2, Date date3) {
        this(str, str2, str3, collection, collection2, collection3, enumC10164c, date, date2, date3, null);
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC10164c enumC10164c, Date date, Date date2, Date date3, String str4) {
        C10218af.m23178a(str, "accessToken");
        C10218af.m23178a(str2, "applicationId");
        C10218af.m23178a(str3, "userId");
        this.expires = date == null ? DEFAULT_EXPIRATION_TIME : date;
        this.permissions = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.declinedPermissions = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.expiredPermissions = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.token = str;
        this.source = enumC10164c == null ? DEFAULT_ACCESS_TOKEN_SOURCE : enumC10164c;
        this.lastRefresh = date2 == null ? DEFAULT_LAST_REFRESH_TIME : date2;
        this.applicationId = str2;
        this.userId = str3;
        this.dataAccessExpirationTime = (date3 == null || date3.getTime() == 0) ? DEFAULT_EXPIRATION_TIME : date3;
        this.graphDomain = str4;
    }

    private void appendPermissions(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.permissions == null) {
            sb.append(JsonReaderKt.NULL);
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.permissions));
        sb.append("]");
    }

    static AccessToken createExpired(AccessToken accessToken) {
        return new AccessToken(accessToken.token, accessToken.applicationId, accessToken.getUserId(), accessToken.getPermissions(), accessToken.getDeclinedPermissions(), accessToken.getExpiredPermissions(), accessToken.source, new Date(), new Date(), accessToken.dataAccessExpirationTime);
    }

    public static AccessToken createFromBundle(List<String> list, Bundle bundle, EnumC10164c enumC10164c, Date date, String str) {
        String string = bundle.getString(ACCESS_TOKEN_KEY);
        Date m23242a = C10213ae.m23242a(bundle, EXPIRES_IN_KEY, date);
        String string2 = bundle.getString(USER_ID_KEY);
        Date m23242a2 = C10213ae.m23242a(bundle, DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        if (C10213ae.m23230a(string) || m23242a == null) {
            return null;
        }
        return new AccessToken(string, str, string2, list, null, null, enumC10164c, m23242a, new Date(), m23242a2);
    }

    public static AccessToken createFromJSONObject(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt(VERSION_KEY) <= 1) {
            String string = jSONObject.getString(TOKEN_KEY);
            Date date = new Date(jSONObject.getLong(EXPIRES_AT_KEY));
            JSONArray jSONArray = jSONObject.getJSONArray(PERMISSIONS_KEY);
            JSONArray jSONArray2 = jSONObject.getJSONArray(DECLINED_PERMISSIONS_KEY);
            JSONArray optJSONArray = jSONObject.optJSONArray(EXPIRED_PERMISSIONS_KEY);
            Date date2 = new Date(jSONObject.getLong(LAST_REFRESH_KEY));
            EnumC10164c valueOf = EnumC10164c.valueOf(jSONObject.getString("source"));
            return new AccessToken(string, jSONObject.getString(APPLICATION_ID_KEY), jSONObject.getString(USER_ID_KEY), C10213ae.m23207b(jSONArray), C10213ae.m23207b(jSONArray2), optJSONArray == null ? new ArrayList() : C10213ae.m23207b(optJSONArray), valueOf, date, date2, new Date(jSONObject.optLong(DATA_ACCESS_EXPIRATION_TIME, 0L)), jSONObject.optString(GRAPH_DOMAIN, null));
        }
        throw new FacebookException("Unknown AccessToken serialization format.");
    }

    public static AccessToken createFromLegacyCache(Bundle bundle) {
        List<String> permissionsFromBundle = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> permissionsFromBundle2 = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        List<String> permissionsFromBundle3 = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
        String m22924d = C10353l.m22924d(bundle);
        String str = m22924d;
        if (C10213ae.m23230a(m22924d)) {
            str = C10181g.m23286m();
        }
        String m22926b = C10353l.m22926b(bundle);
        try {
            return new AccessToken(m22926b, str, C10213ae.m23187g(m22926b).getString("id"), permissionsFromBundle, permissionsFromBundle2, permissionsFromBundle3, C10353l.m22925c(bundle), C10353l.m22929a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), C10353l.m22929a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            return null;
        }
    }

    public static void createFromNativeLinkingIntent(Intent intent, final String str, final AbstractC9918a abstractC9918a) {
        C10218af.m23179a(intent, Constants.INTENT_SCHEME);
        if (intent.getExtras() == null) {
            new FacebookException("No extras found on intent");
            return;
        }
        final Bundle bundle = new Bundle(intent.getExtras());
        String string = bundle.getString(ACCESS_TOKEN_KEY);
        if (string == null || string.isEmpty()) {
            new FacebookException("No access token found on intent");
            return;
        }
        String string2 = bundle.getString(USER_ID_KEY);
        if (string2 == null || string2.isEmpty()) {
            C10213ae.m23229a(string, new C10213ae.AbstractC10214a() { // from class: com.facebook.AccessToken.1
                @Override // com.facebook.internal.C10213ae.AbstractC10214a
                /* renamed from: a */
                public final void mo22902a(FacebookException facebookException) {
                }

                @Override // com.facebook.internal.C10213ae.AbstractC10214a
                /* renamed from: a */
                public final void mo22901a(JSONObject jSONObject) {
                    try {
                        bundle.putString(AccessToken.USER_ID_KEY, jSONObject.getString("id"));
                        AccessToken.createFromBundle(null, bundle, EnumC10164c.FACEBOOK_APPLICATION_WEB, new Date(), str);
                    } catch (JSONException e) {
                        new FacebookException("Unable to generate access token due to missing user id");
                    }
                }
            });
        } else {
            createFromBundle(null, bundle, EnumC10164c.FACEBOOK_APPLICATION_WEB, new Date(), str);
        }
    }

    static AccessToken createFromRefresh(AccessToken accessToken, Bundle bundle) {
        if (accessToken.source != EnumC10164c.FACEBOOK_APPLICATION_WEB && accessToken.source != EnumC10164c.FACEBOOK_APPLICATION_NATIVE && accessToken.source != EnumC10164c.FACEBOOK_APPLICATION_SERVICE) {
            throw new FacebookException("Invalid token source: " + accessToken.source);
        }
        Date m23242a = C10213ae.m23242a(bundle, EXPIRES_IN_KEY, new Date(0L));
        String string = bundle.getString(ACCESS_TOKEN_KEY);
        String string2 = bundle.getString(GRAPH_DOMAIN);
        Date m23242a2 = C10213ae.m23242a(bundle, DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        if (!C10213ae.m23230a(string)) {
            return new AccessToken(string, accessToken.applicationId, accessToken.getUserId(), accessToken.getPermissions(), accessToken.getDeclinedPermissions(), accessToken.getExpiredPermissions(), accessToken.source, m23242a, new Date(), m23242a2, string2);
        }
        return null;
    }

    public static void expireCurrentAccessToken() {
        AccessToken accessToken = C10107b.m23388a().f33474b;
        if (accessToken != null) {
            setCurrentAccessToken(createExpired(accessToken));
        }
    }

    public static AccessToken getCurrentAccessToken() {
        return C10107b.m23388a().f33474b;
    }

    static List<String> getPermissionsFromBundle(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        return stringArrayList == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public static boolean isCurrentAccessTokenActive() {
        AccessToken accessToken = C10107b.m23388a().f33474b;
        return accessToken != null && !accessToken.isExpired();
    }

    public static boolean isDataAccessActive() {
        AccessToken accessToken = C10107b.m23388a().f33474b;
        return accessToken != null && !accessToken.isDataAccessExpired();
    }

    public static void refreshCurrentAccessTokenAsync() {
        C10107b.m23388a().m23387a((AbstractC9919b) null);
    }

    public static void refreshCurrentAccessTokenAsync(AbstractC9919b abstractC9919b) {
        C10107b.m23388a().m23387a(abstractC9919b);
    }

    public static void setCurrentAccessToken(AccessToken accessToken) {
        C10107b.m23388a().m23384a(accessToken, true);
    }

    private String tokenToString() {
        return this.token == null ? JsonReaderKt.NULL : C10181g.m23298b(EnumC10396m.INCLUDE_ACCESS_TOKENS) ? this.token : "ACCESS_TOKEN_REMOVED";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (!this.expires.equals(accessToken.expires) || !this.permissions.equals(accessToken.permissions) || !this.declinedPermissions.equals(accessToken.declinedPermissions) || !this.expiredPermissions.equals(accessToken.expiredPermissions) || !this.token.equals(accessToken.token) || this.source != accessToken.source || !this.lastRefresh.equals(accessToken.lastRefresh)) {
            return false;
        }
        String str = this.applicationId;
        if (str == null) {
            if (accessToken.applicationId != null) {
                return false;
            }
        } else if (!str.equals(accessToken.applicationId)) {
            return false;
        }
        if (!this.userId.equals(accessToken.userId) || !this.dataAccessExpirationTime.equals(accessToken.dataAccessExpirationTime)) {
            return false;
        }
        String str2 = this.graphDomain;
        String str3 = accessToken.graphDomain;
        return str2 == null ? str3 == null : str2.equals(str3);
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public final Date getDataAccessExpirationTime() {
        return this.dataAccessExpirationTime;
    }

    public final Set<String> getDeclinedPermissions() {
        return this.declinedPermissions;
    }

    public final Set<String> getExpiredPermissions() {
        return this.expiredPermissions;
    }

    public final Date getExpires() {
        return this.expires;
    }

    public final String getGraphDomain() {
        return this.graphDomain;
    }

    public final Date getLastRefresh() {
        return this.lastRefresh;
    }

    public final Set<String> getPermissions() {
        return this.permissions;
    }

    public final EnumC10164c getSource() {
        return this.source;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final int hashCode() {
        int hashCode = this.expires.hashCode();
        int hashCode2 = this.permissions.hashCode();
        int hashCode3 = this.declinedPermissions.hashCode();
        int hashCode4 = this.expiredPermissions.hashCode();
        int hashCode5 = this.token.hashCode();
        int hashCode6 = this.source.hashCode();
        int hashCode7 = this.lastRefresh.hashCode();
        String str = this.applicationId;
        int i = 0;
        int hashCode8 = str == null ? 0 : str.hashCode();
        int hashCode9 = this.userId.hashCode();
        int hashCode10 = this.dataAccessExpirationTime.hashCode();
        String str2 = this.graphDomain;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public final boolean isDataAccessExpired() {
        return new Date().after(this.dataAccessExpirationTime);
    }

    public final boolean isExpired() {
        return new Date().after(this.expires);
    }

    public final JSONObject toJSONObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(VERSION_KEY, 1);
        jSONObject.put(TOKEN_KEY, this.token);
        jSONObject.put(EXPIRES_AT_KEY, this.expires.getTime());
        jSONObject.put(PERMISSIONS_KEY, new JSONArray((Collection) this.permissions));
        jSONObject.put(DECLINED_PERMISSIONS_KEY, new JSONArray((Collection) this.declinedPermissions));
        jSONObject.put(EXPIRED_PERMISSIONS_KEY, new JSONArray((Collection) this.expiredPermissions));
        jSONObject.put(LAST_REFRESH_KEY, this.lastRefresh.getTime());
        jSONObject.put("source", this.source.name());
        jSONObject.put(APPLICATION_ID_KEY, this.applicationId);
        jSONObject.put(USER_ID_KEY, this.userId);
        jSONObject.put(DATA_ACCESS_EXPIRATION_TIME, this.dataAccessExpirationTime.getTime());
        String str = this.graphDomain;
        if (str != null) {
            jSONObject.put(GRAPH_DOMAIN, str);
        }
        return jSONObject;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:");
        sb.append(tokenToString());
        appendPermissions(sb);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.expires.getTime());
        parcel.writeStringList(new ArrayList(this.permissions));
        parcel.writeStringList(new ArrayList(this.declinedPermissions));
        parcel.writeStringList(new ArrayList(this.expiredPermissions));
        parcel.writeString(this.token);
        parcel.writeString(this.source.name());
        parcel.writeLong(this.lastRefresh.getTime());
        parcel.writeString(this.applicationId);
        parcel.writeString(this.userId);
        parcel.writeLong(this.dataAccessExpirationTime.getTime());
        parcel.writeString(this.graphDomain);
    }
}
