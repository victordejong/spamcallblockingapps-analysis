package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23265v;
import p193e.p1538j.EnumC23248n0;
import p193e.p1538j.EnumC23273w;
import s1.z.c.l;
@Metadata(d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� E2\u00020\u0001:\u0003CDEB\u0089\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0007\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0007\u0012\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0011B\u000f\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0014\u0010.\u001a\u00020/2\n\u00100\u001a\u000601j\u0002`2H\u0002J\u001a\u00103\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0002J\b\u00105\u001a\u000206H\u0016J\u0013\u00107\u001a\u00020!2\b\u00108\u001a\u0004\u0018\u000109H\u0096\u0002J\b\u0010:\u001a\u000206H\u0016J\r\u0010;\u001a\u00020<H��¢\u0006\u0002\b=J\b\u0010>\u001a\u00020\u0003H\u0016J\b\u0010?\u001a\u00020\u0003H\u0002J\u0018\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020\u00132\u0006\u0010B\u001a\u000206H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u000f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0019¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0019¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u0018R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u0016R\u0011\u0010 \u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b \u0010\"R\u0011\u0010#\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u0011\u0010$\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0011\u0010%\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b&\u0010\u0018R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0019¢\u0006\b\n��\u001a\u0004\b'\u0010\u001bR\u0011\u0010(\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b)\u0010*R\u0011\u0010+\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b,\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b-\u0010\u0016¨\u0006F"}, d2 = {"Lcom/facebook/AccessToken;", "Landroid/os/Parcelable;", "accessToken", "", "applicationId", "userId", "permissions", "", "declinedPermissions", "expiredPermissions", "accessTokenSource", "Lcom/facebook/AccessTokenSource;", "expirationTime", "Ljava/util/Date;", "lastRefreshTime", "dataAccessExpirationTime", "graphDomain", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getApplicationId", "()Ljava/lang/String;", "getDataAccessExpirationTime", "()Ljava/util/Date;", "", "getDeclinedPermissions", "()Ljava/util/Set;", "getExpiredPermissions", "expires", "getExpires", "getGraphDomain", "isDataAccessExpired", "", "()Z", "isExpired", "isInstagramToken", "lastRefresh", "getLastRefresh", "getPermissions", "source", "getSource", "()Lcom/facebook/AccessTokenSource;", AnalyticsConstants.TOKEN, "getToken", "getUserId", "appendPermissions", "", "builder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "convertTokenSourceForGraphDomain", "tokenSource", "describeContents", "", "equals", "other", "", "hashCode", "toJSONObject", "Lorg/json/JSONObject;", "toJSONObject$facebook_core_release", "toString", "tokenToString", "writeToParcel", "dest", "flags", "AccessTokenCreationCallback", "AccessTokenRefreshCallback", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/AccessToken.class */
public final class AccessToken implements Parcelable {

    /* renamed from: l */
    public static final C0907c f2460l = null;

    /* renamed from: m */
    public static final Date f2461m;

    /* renamed from: n */
    public static final Date f2462n;

    /* renamed from: a */
    public final Date f2465a;

    /* renamed from: b */
    public final Set<String> f2466b;

    /* renamed from: c */
    public final Set<String> f2467c;

    /* renamed from: d */
    public final Set<String> f2468d;

    /* renamed from: e */
    public final String f2469e;

    /* renamed from: f */
    public final EnumC23273w f2470f;

    /* renamed from: g */
    public final Date f2471g;

    /* renamed from: h */
    public final String f2472h;

    /* renamed from: i */
    public final String f2473i;

    /* renamed from: j */
    public final Date f2474j;

    /* renamed from: k */
    public final String f2475k;

    /* renamed from: o */
    public static final Date f2463o = new Date();

    /* renamed from: p */
    public static final EnumC23273w f2464p = EnumC23273w.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new C0906b();

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/facebook/AccessToken$AccessTokenRefreshCallback;", "", "OnTokenRefreshFailed", "", "exception", "Lcom/facebook/FacebookException;", "OnTokenRefreshed", "accessToken", "Lcom/facebook/AccessToken;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.AccessToken$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/AccessToken$a.class */
    public interface AbstractC0905a {
        /* renamed from: a */
        void m42033a(C23222c0 c23222c0);

        /* renamed from: b */
        void m42032b(AccessToken accessToken);
    }

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/AccessToken$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AccessToken;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/AccessToken;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.AccessToken$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/AccessToken$b.class */
    public static final class C0906b implements Parcelable.Creator<AccessToken> {
        @Override // android.os.Parcelable.Creator
        public AccessToken createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    }

    @Metadata(d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\bH��¢\u0006\u0002\b J<\u0010!\u001a\u0004\u0018\u00010\b2\u0010\u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0004H\u0002J\u0015\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,J\u0017\u0010-\u001a\u0004\u0018\u00010\b2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b.J \u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010(\u001a\u00020\u00042\u0006\u00103\u001a\u000204H\u0007J\u001f\u00105\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b6J\b\u00107\u001a\u000200H\u0007J\n\u00108\u001a\u0004\u0018\u00010\bH\u0007J'\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040#2\u0006\u0010$\u001a\u00020%2\b\u0010:\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0002\b;J\b\u0010<\u001a\u00020=H\u0007J\b\u0010>\u001a\u00020=H\u0007J\b\u0010?\u001a\u00020=H\u0007J\b\u0010@\u001a\u000200H\u0007J\u0012\u0010@\u001a\u0002002\b\u0010A\u001a\u0004\u0018\u00010BH\u0007J\u0012\u0010C\u001a\u0002002\b\u0010D\u001a\u0004\u0018\u00010\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006E"}, d2 = {"Lcom/facebook/AccessToken$Companion;", "", "()V", "ACCESS_TOKEN_KEY", "", "APPLICATION_ID_KEY", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AccessToken;", "CURRENT_JSON_FORMAT", "", "DATA_ACCESS_EXPIRATION_TIME", "DECLINED_PERMISSIONS_KEY", "DEFAULT_ACCESS_TOKEN_SOURCE", "Lcom/facebook/AccessTokenSource;", "DEFAULT_EXPIRATION_TIME", "Ljava/util/Date;", "DEFAULT_GRAPH_DOMAIN", "DEFAULT_LAST_REFRESH_TIME", "EXPIRED_PERMISSIONS_KEY", "EXPIRES_AT_KEY", "EXPIRES_IN_KEY", "GRAPH_DOMAIN", "LAST_REFRESH_KEY", "MAX_DATE", "PERMISSIONS_KEY", "SOURCE_KEY", "TOKEN_KEY", "USER_ID_KEY", "VERSION_KEY", "createExpired", "current", "createExpired$facebook_core_release", "createFromBundle", "requestedPermissions", "", "bundle", "Landroid/os/Bundle;", "source", "expirationBase", "applicationId", "createFromJSONObject", "jsonObject", "Lorg/json/JSONObject;", "createFromJSONObject$facebook_core_release", "createFromLegacyCache", "createFromLegacyCache$facebook_core_release", "createFromNativeLinkingIntent", "", "intent", "Landroid/content/Intent;", "accessTokenCallback", "Lcom/facebook/AccessToken$AccessTokenCreationCallback;", "createFromRefresh", "createFromRefresh$facebook_core_release", "expireCurrentAccessToken", "getCurrentAccessToken", "getPermissionsFromBundle", AnalyticsConstants.KEY, "getPermissionsFromBundle$facebook_core_release", "isCurrentAccessTokenActive", "", "isDataAccessActive", "isLoggedInWithInstagram", "refreshCurrentAccessTokenAsync", "callback", "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;", "setCurrentAccessToken", "accessToken", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.AccessToken$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/AccessToken$c.class */
    public static final class C0907c {
        /* renamed from: a */
        public static final AccessToken m42031a(JSONObject jSONObject) throws JSONException {
            l.e(jSONObject, "jsonObject");
            if (jSONObject.getInt("version") <= 1) {
                String string = jSONObject.getString(AnalyticsConstants.TOKEN);
                Date date = new Date(jSONObject.getLong("expires_at"));
                JSONArray jSONArray = jSONObject.getJSONArray("permissions");
                JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
                JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
                Date date2 = new Date(jSONObject.getLong("last_refresh"));
                String string2 = jSONObject.getString("source");
                l.d(string2, "jsonObject.getString(SOURCE_KEY)");
                EnumC23273w valueOf = EnumC23273w.valueOf(string2);
                String string3 = jSONObject.getString("application_id");
                String string4 = jSONObject.getString("user_id");
                Date date3 = new Date(jSONObject.optLong("data_access_expiration_time", 0L));
                String optString = jSONObject.optString("graph_domain", null);
                l.d(string, AnalyticsConstants.TOKEN);
                l.d(string3, "applicationId");
                l.d(string4, "userId");
                l.d(jSONArray, "permissionsArray");
                List<String> m41698D = C1168q0.m41698D(jSONArray);
                l.d(jSONArray2, "declinedPermissionsArray");
                return new AccessToken(string, string3, string4, m41698D, C1168q0.m41698D(jSONArray2), optJSONArray == null ? new ArrayList() : C1168q0.m41698D(optJSONArray), valueOf, date, date2, date3, optString);
            }
            throw new C23222c0("Unknown AccessToken serialization format.");
        }

        /* renamed from: b */
        public static final AccessToken m42030b() {
            return C23265v.f64388f.m7313a().f64392c;
        }

        /* renamed from: c */
        public static final boolean m42029c() {
            AccessToken accessToken = C23265v.f64388f.m7313a().f64392c;
            return accessToken != null && !accessToken.m42035a();
        }

        /* renamed from: d */
        public static final void m42028d(AccessToken accessToken) {
            C23265v.f64388f.m7313a().m7314c(accessToken, true);
        }
    }

    static {
        Date date = new Date((long) RecyclerView.FOREVER_NS);
        f2461m = date;
        f2462n = date;
    }

    public AccessToken(Parcel parcel) {
        l.e(parcel, "parcel");
        this.f2465a = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet = Collections.unmodifiableSet(new HashSet(arrayList));
        l.d(unmodifiableSet, "unmodifiableSet(HashSet(permissionsList))");
        this.f2466b = unmodifiableSet;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet2 = Collections.unmodifiableSet(new HashSet(arrayList));
        l.d(unmodifiableSet2, "unmodifiableSet(HashSet(permissionsList))");
        this.f2467c = unmodifiableSet2;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet3 = Collections.unmodifiableSet(new HashSet(arrayList));
        l.d(unmodifiableSet3, "unmodifiableSet(HashSet(permissionsList))");
        this.f2468d = unmodifiableSet3;
        String readString = parcel.readString();
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41650e(readString, AnalyticsConstants.TOKEN);
        this.f2469e = readString;
        String readString2 = parcel.readString();
        this.f2470f = readString2 != null ? EnumC23273w.valueOf(readString2) : f2464p;
        this.f2471g = new Date(parcel.readLong());
        String readString3 = parcel.readString();
        C1172r0.m41650e(readString3, "applicationId");
        this.f2472h = readString3;
        String readString4 = parcel.readString();
        C1172r0.m41650e(readString4, "userId");
        this.f2473i = readString4;
        this.f2474j = new Date(parcel.readLong());
        this.f2475k = parcel.readString();
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC23273w enumC23273w, Date date, Date date2, Date date3, String str4) {
        C22128a.m8703I0(str, "accessToken", str2, "applicationId", str3, "userId");
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41653b(str, "accessToken");
        C1172r0.m41653b(str2, "applicationId");
        C1172r0.m41653b(str3, "userId");
        this.f2465a = date == null ? f2462n : date;
        Set<String> unmodifiableSet = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        l.d(unmodifiableSet, "unmodifiableSet(if (permissions != null) HashSet(permissions) else HashSet())");
        this.f2466b = unmodifiableSet;
        Set<String> unmodifiableSet2 = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        l.d(unmodifiableSet2, "unmodifiableSet(\n            if (declinedPermissions != null) HashSet(declinedPermissions) else HashSet())");
        this.f2467c = unmodifiableSet2;
        Set<String> unmodifiableSet3 = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        l.d(unmodifiableSet3, "unmodifiableSet(\n            if (expiredPermissions != null) HashSet(expiredPermissions) else HashSet())");
        this.f2468d = unmodifiableSet3;
        this.f2469e = str;
        EnumC23273w enumC23273w2 = enumC23273w == null ? f2464p : enumC23273w;
        EnumC23273w enumC23273w3 = enumC23273w2;
        if (str4 != null) {
            enumC23273w3 = enumC23273w2;
            if (str4.equals("instagram")) {
                int ordinal = enumC23273w2.ordinal();
                enumC23273w3 = ordinal != 1 ? ordinal != 4 ? ordinal != 5 ? enumC23273w2 : EnumC23273w.INSTAGRAM_CUSTOM_CHROME_TAB : EnumC23273w.INSTAGRAM_WEB_VIEW : EnumC23273w.INSTAGRAM_APPLICATION_WEB;
            }
        }
        this.f2470f = enumC23273w3;
        this.f2471g = date2 == null ? f2463o : date2;
        this.f2472h = str2;
        this.f2473i = str3;
        this.f2474j = (date3 == null || date3.getTime() == 0) ? f2462n : date3;
        this.f2475k = str4 == null ? "facebook" : str4;
    }

    public /* synthetic */ AccessToken(String str, String str2, String str3, Collection collection, Collection collection2, Collection collection3, EnumC23273w enumC23273w, Date date, Date date2, Date date3, String str4, int i) {
        this(str, str2, str3, collection, collection2, collection3, enumC23273w, date, date2, date3, (i & 1024) != 0 ? "facebook" : null);
    }

    /* renamed from: a */
    public final boolean m42035a() {
        return new Date().after(this.f2465a);
    }

    /* renamed from: b */
    public final JSONObject m42034b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put(AnalyticsConstants.TOKEN, this.f2469e);
        jSONObject.put("expires_at", this.f2465a.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f2466b));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f2467c));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f2468d));
        jSONObject.put("last_refresh", this.f2471g.getTime());
        jSONObject.put("source", this.f2470f.name());
        jSONObject.put("application_id", this.f2472h);
        jSONObject.put("user_id", this.f2473i);
        jSONObject.put("data_access_expiration_time", this.f2474j.getTime());
        String str = this.f2475k;
        if (str != null) {
            jSONObject.put("graph_domain", str);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (l.a(this.f2465a, accessToken.f2465a) && l.a(this.f2466b, accessToken.f2466b) && l.a(this.f2467c, accessToken.f2467c) && l.a(this.f2468d, accessToken.f2468d) && l.a(this.f2469e, accessToken.f2469e) && this.f2470f == accessToken.f2470f && l.a(this.f2471g, accessToken.f2471g) && l.a(this.f2472h, accessToken.f2472h) && l.a(this.f2473i, accessToken.f2473i) && l.a(this.f2474j, accessToken.f2474j)) {
            String str = this.f2475k;
            String str2 = accessToken.f2475k;
            if (str == null ? str2 == null : l.a(str, str2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2465a.hashCode();
        int hashCode2 = this.f2466b.hashCode();
        int m8579q2 = C22128a.m8579q2(this.f2469e, (this.f2468d.hashCode() + ((this.f2467c.hashCode() + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31)) * 31, 31);
        int m8579q22 = C22128a.m8579q2(this.f2473i, C22128a.m8579q2(this.f2472h, (this.f2471g.hashCode() + ((this.f2470f.hashCode() + m8579q2) * 31)) * 31, 31), 31);
        int hashCode3 = this.f2474j.hashCode();
        String str = this.f2475k;
        return ((hashCode3 + m8579q22) * 31) + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder m8696K = C22128a.m8696K("{AccessToken", " token:");
        C23228f0 c23228f0 = C23228f0.f64291a;
        C22128a.m8669S0(m8696K, C23228f0.m7344k(EnumC23248n0.INCLUDE_ACCESS_TOKENS) ? this.f2469e : "ACCESS_TOKEN_REMOVED", " permissions:", "[");
        m8696K.append(TextUtils.join(", ", this.f2466b));
        m8696K.append("]");
        m8696K.append("}");
        String sb = m8696K.toString();
        l.d(sb, "builder.toString()");
        return sb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeLong(this.f2465a.getTime());
        parcel.writeStringList(new ArrayList(this.f2466b));
        parcel.writeStringList(new ArrayList(this.f2467c));
        parcel.writeStringList(new ArrayList(this.f2468d));
        parcel.writeString(this.f2469e);
        parcel.writeString(this.f2470f.name());
        parcel.writeLong(this.f2471g.getTime());
        parcel.writeString(this.f2472h);
        parcel.writeString(this.f2473i);
        parcel.writeLong(this.f2474j.getTime());
        parcel.writeString(this.f2475k);
    }
}
