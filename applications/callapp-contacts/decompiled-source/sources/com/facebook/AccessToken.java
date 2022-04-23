package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.ae;
import com.facebook.internal.af;
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
    private final c source;
    private final String token;
    private final String userId;
    private static final Date DEFAULT_LAST_REFRESH_TIME = new Date();
    private static final c DEFAULT_ACCESS_TOKEN_SOURCE = c.FACEBOOK_APPLICATION_WEB;
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

    /* loaded from: classes3-dex2jar.jar:com/facebook/AccessToken$a.class */
    public interface a {
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/AccessToken$b.class */
    public interface b {
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
        this.source = c.valueOf(parcel.readString());
        this.lastRefresh = new Date(parcel.readLong());
        this.applicationId = parcel.readString();
        this.userId = parcel.readString();
        this.dataAccessExpirationTime = new Date(parcel.readLong());
        this.graphDomain = parcel.readString();
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, c cVar, Date date, Date date2, Date date3) {
        this(str, str2, str3, collection, collection2, collection3, cVar, date, date2, date3, null);
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, c cVar, Date date, Date date2, Date date3, String str4) {
        af.a(str, "accessToken");
        af.a(str2, "applicationId");
        af.a(str3, "userId");
        this.expires = date == null ? DEFAULT_EXPIRATION_TIME : date;
        this.permissions = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.declinedPermissions = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.expiredPermissions = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.token = str;
        this.source = cVar == null ? DEFAULT_ACCESS_TOKEN_SOURCE : cVar;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static AccessToken createFromBundle(List<String> list, Bundle bundle, c cVar, Date date, String str) {
        String string = bundle.getString(ACCESS_TOKEN_KEY);
        Date a2 = ae.a(bundle, EXPIRES_IN_KEY, date);
        String string2 = bundle.getString(USER_ID_KEY);
        Date a3 = ae.a(bundle, DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        if (ae.a(string) || a2 == null) {
            return null;
        }
        return new AccessToken(string, str, string2, list, null, null, cVar, a2, new Date(), a3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken createFromJSONObject(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt(VERSION_KEY) <= 1) {
            String string = jSONObject.getString(TOKEN_KEY);
            Date date = new Date(jSONObject.getLong(EXPIRES_AT_KEY));
            JSONArray jSONArray = jSONObject.getJSONArray(PERMISSIONS_KEY);
            JSONArray jSONArray2 = jSONObject.getJSONArray(DECLINED_PERMISSIONS_KEY);
            JSONArray optJSONArray = jSONObject.optJSONArray(EXPIRED_PERMISSIONS_KEY);
            Date date2 = new Date(jSONObject.getLong(LAST_REFRESH_KEY));
            c valueOf = c.valueOf(jSONObject.getString("source"));
            return new AccessToken(string, jSONObject.getString(APPLICATION_ID_KEY), jSONObject.getString(USER_ID_KEY), ae.b(jSONArray), ae.b(jSONArray2), optJSONArray == null ? new ArrayList() : ae.b(optJSONArray), valueOf, date, date2, new Date(jSONObject.optLong(DATA_ACCESS_EXPIRATION_TIME, 0L)), jSONObject.optString(GRAPH_DOMAIN, null));
        }
        throw new FacebookException("Unknown AccessToken serialization format.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken createFromLegacyCache(Bundle bundle) {
        List<String> permissionsFromBundle = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> permissionsFromBundle2 = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        List<String> permissionsFromBundle3 = getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
        String d2 = l.d(bundle);
        String str = d2;
        if (ae.a(d2)) {
            str = g.m();
        }
        String b2 = l.b(bundle);
        try {
            return new AccessToken(b2, str, ae.g(b2).getString("id"), permissionsFromBundle, permissionsFromBundle2, permissionsFromBundle3, l.c(bundle), l.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), l.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            return null;
        }
    }

    public static void createFromNativeLinkingIntent(Intent intent, final String str, final a aVar) {
        af.a(intent, Constants.INTENT_SCHEME);
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
            ae.a(string, new ae.a() { // from class: com.facebook.AccessToken.1
                @Override // com.facebook.internal.ae.a
                public final void a(FacebookException facebookException) {
                }

                @Override // com.facebook.internal.ae.a
                public final void a(JSONObject jSONObject) {
                    try {
                        bundle.putString(AccessToken.USER_ID_KEY, jSONObject.getString("id"));
                        AccessToken.createFromBundle(null, bundle, c.FACEBOOK_APPLICATION_WEB, new Date(), str);
                    } catch (JSONException e) {
                        new FacebookException("Unable to generate access token due to missing user id");
                    }
                }
            });
        } else {
            createFromBundle(null, bundle, c.FACEBOOK_APPLICATION_WEB, new Date(), str);
        }
    }

    static AccessToken createFromRefresh(AccessToken accessToken, Bundle bundle) {
        if (accessToken.source == c.FACEBOOK_APPLICATION_WEB || accessToken.source == c.FACEBOOK_APPLICATION_NATIVE || accessToken.source == c.FACEBOOK_APPLICATION_SERVICE) {
            Date a2 = ae.a(bundle, EXPIRES_IN_KEY, new Date(0L));
            String string = bundle.getString(ACCESS_TOKEN_KEY);
            String string2 = bundle.getString(GRAPH_DOMAIN);
            Date a3 = ae.a(bundle, DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
            if (ae.a(string)) {
                return null;
            }
            return new AccessToken(string, accessToken.applicationId, accessToken.getUserId(), accessToken.getPermissions(), accessToken.getDeclinedPermissions(), accessToken.getExpiredPermissions(), accessToken.source, a2, new Date(), a3, string2);
        }
        throw new FacebookException("Invalid token source: " + accessToken.source);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void expireCurrentAccessToken() {
        AccessToken accessToken = com.facebook.b.a().f19680b;
        if (accessToken != null) {
            setCurrentAccessToken(createExpired(accessToken));
        }
    }

    public static AccessToken getCurrentAccessToken() {
        return com.facebook.b.a().f19680b;
    }

    static List<String> getPermissionsFromBundle(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        return stringArrayList == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public static boolean isCurrentAccessTokenActive() {
        AccessToken accessToken = com.facebook.b.a().f19680b;
        return accessToken != null && !accessToken.isExpired();
    }

    public static boolean isDataAccessActive() {
        AccessToken accessToken = com.facebook.b.a().f19680b;
        return accessToken != null && !accessToken.isDataAccessExpired();
    }

    public static void refreshCurrentAccessTokenAsync() {
        com.facebook.b.a().a((b) null);
    }

    public static void refreshCurrentAccessTokenAsync(b bVar) {
        com.facebook.b.a().a(bVar);
    }

    public static void setCurrentAccessToken(AccessToken accessToken) {
        com.facebook.b.a().a(accessToken, true);
    }

    private String tokenToString() {
        return this.token == null ? JsonReaderKt.NULL : g.b(m.INCLUDE_ACCESS_TOKENS) ? this.token : "ACCESS_TOKEN_REMOVED";
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

    public final c getSource() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
