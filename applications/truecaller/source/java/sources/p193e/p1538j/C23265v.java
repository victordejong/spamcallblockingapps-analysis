package p193e.p1538j;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.CurrentAccessTokenExpirationBroadcastReceiver;
import com.facebook.GraphRequest;
import com.facebook.internal.C1168q0;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23240k0;
import p193e.p1538j.C23265v;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018�� !2\u00020\u0001:\u0005!\"#$%B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0012\u0010\u001b\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u001c\u0010\u001c\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\f\u001a\u00020\u00142\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J\b\u0010\u001f\u001a\u00020\u0014H\u0002J\b\u0010 \u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lcom/facebook/AccessTokenManager;", "", "localBroadcastManager", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "accessTokenCache", "Lcom/facebook/AccessTokenCache;", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V", "value", "Lcom/facebook/AccessToken;", "currentAccessToken", "getCurrentAccessToken", "()Lcom/facebook/AccessToken;", "setCurrentAccessToken", "(Lcom/facebook/AccessToken;)V", "currentAccessTokenField", "lastAttemptedTokenExtendDate", "Ljava/util/Date;", "tokenRefreshInProgress", "Ljava/util/concurrent/atomic/AtomicBoolean;", "currentAccessTokenChanged", "", "extendAccessTokenIfNeeded", "loadCurrentAccessToken", "", "refreshCurrentAccessToken", "callback", "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;", "refreshCurrentAccessTokenImpl", "sendCurrentAccessTokenChangedBroadcastIntent", "oldAccessToken", "saveToCache", "setTokenExpirationBroadcastAlarm", "shouldExtendAccessToken", "Companion", "FacebookRefreshTokenInfo", "InstagramRefreshTokenInfo", "RefreshResult", "RefreshTokenInfo", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.v */
/* loaded from: classes2-dex2jar.jar:e/j/v.class */
public final class C23265v {

    /* renamed from: f */
    public static final C23266a f64388f = new C23266a(null);

    /* renamed from: g */
    public static C23265v f64389g;

    /* renamed from: a */
    public final C27062a f64390a;

    /* renamed from: b */
    public final C23262u f64391b;

    /* renamed from: c */
    public AccessToken f64392c;

    /* renamed from: d */
    public final AtomicBoolean f64393d = new AtomicBoolean(false);

    /* renamed from: e */
    public Date f64394e = new Date(0);

    @Metadata(d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u000eH\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0019"}, d2 = {"Lcom/facebook/AccessTokenManager$Companion;", "", "()V", "ACTION_CURRENT_ACCESS_TOKEN_CHANGED", "", "EXTRA_NEW_ACCESS_TOKEN", "EXTRA_OLD_ACCESS_TOKEN", "ME_PERMISSIONS_GRAPH_PATH", "SHARED_PREFERENCES_NAME", "TAG", "TOKEN_EXTEND_RETRY_SECONDS", "", "TOKEN_EXTEND_THRESHOLD_SECONDS", "instanceField", "Lcom/facebook/AccessTokenManager;", "createExtendAccessTokenRequest", "Lcom/facebook/GraphRequest;", "accessToken", "Lcom/facebook/AccessToken;", "callback", "Lcom/facebook/GraphRequest$Callback;", "createGrantedPermissionsRequest", "getInstance", "getRefreshTokenInfoForToken", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v$a */
    /* loaded from: classes2-dex2jar.jar:e/j/v$a.class */
    public static final class C23266a {
        public C23266a(f fVar) {
        }

        /* renamed from: a */
        public final C23265v m7313a() {
            C23265v c23265v;
            C23265v c23265v2 = C23265v.f64389g;
            if (c23265v2 == null) {
                synchronized (this) {
                    C23265v c23265v3 = C23265v.f64389g;
                    c23265v = c23265v3;
                    if (c23265v3 == null) {
                        C23228f0 c23228f0 = C23228f0.f64291a;
                        C27062a m968b = C27062a.m968b(C23228f0.m7354a());
                        l.d(m968b, "getInstance(applicationContext)");
                        c23265v = new C23265v(m968b, new C23262u());
                        C23265v.f64389g = c23265v;
                    }
                }
                return c23265v;
            }
            return c23265v2;
        }
    }

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/facebook/AccessTokenManager$FacebookRefreshTokenInfo;", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "()V", "grantType", "", "getGrantType", "()Ljava/lang/String;", "graphPath", "getGraphPath", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v$b */
    /* loaded from: classes2-dex2jar.jar:e/j/v$b.class */
    public static final class C23267b implements AbstractC23270e {
        @Override // p193e.p1538j.C23265v.AbstractC23270e
        /* renamed from: a */
        public String mo7312a() {
            return "fb_extend_sso_token";
        }

        @Override // p193e.p1538j.C23265v.AbstractC23270e
        /* renamed from: b */
        public String mo7311b() {
            return "oauth/access_token";
        }
    }

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/facebook/AccessTokenManager$InstagramRefreshTokenInfo;", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "()V", "grantType", "", "getGrantType", "()Ljava/lang/String;", "graphPath", "getGraphPath", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v$c */
    /* loaded from: classes2-dex2jar.jar:e/j/v$c.class */
    public static final class C23268c implements AbstractC23270e {
        @Override // p193e.p1538j.C23265v.AbstractC23270e
        /* renamed from: a */
        public String mo7312a() {
            return "ig_refresh_token";
        }

        @Override // p193e.p1538j.C23265v.AbstractC23270e
        /* renamed from: b */
        public String mo7311b() {
            return "refresh_access_token";
        }
    }

    @Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/facebook/AccessTokenManager$RefreshResult;", "", "()V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", "dataAccessExpirationTime", "", "getDataAccessExpirationTime", "()Ljava/lang/Long;", "setDataAccessExpirationTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "expiresAt", "", "getExpiresAt", "()I", "setExpiresAt", "(I)V", "expiresIn", "getExpiresIn", "setExpiresIn", "graphDomain", "getGraphDomain", "setGraphDomain", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v$d */
    /* loaded from: classes2-dex2jar.jar:e/j/v$d.class */
    public static final class C23269d {

        /* renamed from: a */
        public String f64395a;

        /* renamed from: b */
        public int f64396b;

        /* renamed from: c */
        public int f64397c;

        /* renamed from: d */
        public Long f64398d;

        /* renamed from: e */
        public String f64399e;
    }

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018��2\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "", "grantType", "", "getGrantType", "()Ljava/lang/String;", "graphPath", "getGraphPath", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v$e */
    /* loaded from: classes2-dex2jar.jar:e/j/v$e.class */
    public interface AbstractC23270e {
        /* renamed from: a */
        String mo7312a();

        /* renamed from: b */
        String mo7311b();
    }

    public C23265v(C27062a c27062a, C23262u c23262u) {
        l.e(c27062a, "localBroadcastManager");
        l.e(c23262u, "accessTokenCache");
        this.f64390a = c27062a;
        this.f64391b = c23262u;
    }

    /* renamed from: a */
    public final void m7316a(final AccessToken.AbstractC0905a abstractC0905a) {
        final AccessToken accessToken = this.f64392c;
        if (accessToken == null) {
            if (abstractC0905a == null) {
                return;
            }
            abstractC0905a.m42033a(new C23222c0("No current access token to refresh"));
        } else if (!this.f64393d.compareAndSet(false, true)) {
            if (abstractC0905a == null) {
                return;
            }
            abstractC0905a.m42033a(new C23222c0("Refresh already in progress"));
        } else {
            this.f64394e = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final C23269d c23269d = new C23269d();
            GraphRequest.AbstractC0922b abstractC0922b = new GraphRequest.AbstractC0922b() { // from class: e.j.d
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    JSONArray optJSONArray;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    Set set = hashSet;
                    Set set2 = hashSet2;
                    Set set3 = hashSet3;
                    l.e(atomicBoolean2, "$permissionsCallSucceeded");
                    l.e(set, "$permissions");
                    l.e(set2, "$declinedPermissions");
                    l.e(set3, "$expiredPermissions");
                    l.e(c23244l0, "response");
                    JSONObject jSONObject = c23244l0.f64336f;
                    if (jSONObject == null || (optJSONArray = jSONObject.optJSONArray(RemoteMessageConst.DATA)) == null) {
                        return;
                    }
                    atomicBoolean2.set(true);
                    int i = 0;
                    int length = optJSONArray.length();
                    if (length <= 0) {
                        return;
                    }
                    while (true) {
                        int i2 = i + 1;
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("permission");
                            String optString2 = optJSONObject.optString(UpdateKey.STATUS);
                            if (!C1168q0.m41700B(optString) && !C1168q0.m41700B(optString2)) {
                                l.d(optString2, UpdateKey.STATUS);
                                Locale locale = Locale.US;
                                l.d(locale, "US");
                                String lowerCase = optString2.toLowerCase(locale);
                                l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                                l.d(lowerCase, UpdateKey.STATUS);
                                int hashCode = lowerCase.hashCode();
                                if (hashCode == -1309235419) {
                                    if (lowerCase.equals("expired")) {
                                        set3.add(optString);
                                    }
                                    l.j("Unexpected status: ", lowerCase);
                                } else if (hashCode != 280295099) {
                                    if (hashCode == 568196142 && lowerCase.equals("declined")) {
                                        set2.add(optString);
                                    }
                                    l.j("Unexpected status: ", lowerCase);
                                } else {
                                    if (lowerCase.equals("granted")) {
                                        set.add(optString);
                                    }
                                    l.j("Unexpected status: ", lowerCase);
                                }
                            }
                        }
                        if (i2 >= length) {
                            return;
                        }
                        i = i2;
                    }
                }
            };
            Bundle m8654X0 = C22128a.m8654X0("fields", "permission,status");
            GraphRequest.C0923c c0923c = GraphRequest.f2543k;
            GraphRequest m42000h = c0923c.m42000h(accessToken, "me/permissions", abstractC0922b);
            m42000h.m42008l(m8654X0);
            EnumC23246m0 enumC23246m0 = EnumC23246m0.GET;
            m42000h.f2556i = enumC23246m0;
            GraphRequest.AbstractC0922b abstractC0922b2 = new GraphRequest.AbstractC0922b() { // from class: e.j.b
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    C23265v.C23269d c23269d2 = C23265v.C23269d.this;
                    l.e(c23269d2, "$refreshResult");
                    l.e(c23244l0, "response");
                    JSONObject jSONObject = c23244l0.f64336f;
                    if (jSONObject == null) {
                        return;
                    }
                    c23269d2.f64395a = jSONObject.optString("access_token");
                    c23269d2.f64396b = jSONObject.optInt("expires_at");
                    c23269d2.f64397c = jSONObject.optInt("expires_in");
                    c23269d2.f64398d = Long.valueOf(jSONObject.optLong("data_access_expiration_time"));
                    c23269d2.f64399e = jSONObject.optString("graph_domain", null);
                }
            };
            String str = accessToken.f2475k;
            String str2 = str;
            if (str == null) {
                str2 = "facebook";
            }
            C23268c c23268c = l.a(str2, "instagram") ? new C23268c() : new C23267b();
            Bundle bundle = new Bundle();
            bundle.putString("grant_type", c23268c.mo7312a());
            bundle.putString("client_id", accessToken.f2472h);
            bundle.putString("fields", "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            GraphRequest m42000h2 = c0923c.m42000h(accessToken, c23268c.mo7311b(), abstractC0922b2);
            m42000h2.m42008l(bundle);
            m42000h2.f2556i = enumC23246m0;
            C23240k0 c23240k0 = new C23240k0(m42000h, m42000h2);
            C23240k0.AbstractC23241a abstractC23241a = new C23240k0.AbstractC23241a() { // from class: e.j.c
                @Override // p193e.p1538j.C23240k0.AbstractC23241a
                /* renamed from: a */
                public final void mo7333a(C23240k0 c23240k02) {
                    Throwable th;
                    AccessToken accessToken2;
                    C23265v.C23269d c23269d2 = C23265v.C23269d.this;
                    AccessToken accessToken3 = accessToken;
                    AccessToken.AbstractC0905a abstractC0905a2 = abstractC0905a;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    Set<String> set = hashSet;
                    Set<String> set2 = hashSet2;
                    Set<String> set3 = hashSet3;
                    C23265v c23265v = this;
                    l.e(c23269d2, "$refreshResult");
                    l.e(atomicBoolean2, "$permissionsCallSucceeded");
                    l.e(set, "$permissions");
                    l.e(set2, "$declinedPermissions");
                    l.e(set3, "$expiredPermissions");
                    l.e(c23265v, "this$0");
                    l.e(c23240k02, "it");
                    String str3 = c23269d2.f64395a;
                    int i = c23269d2.f64396b;
                    Long l = c23269d2.f64398d;
                    String str4 = c23269d2.f64399e;
                    try {
                        C23265v.C23266a c23266a = C23265v.f64388f;
                        if (c23266a.m7313a().f64392c != null) {
                            AccessToken accessToken4 = c23266a.m7313a().f64392c;
                            if ((accessToken4 == null ? null : accessToken4.f2473i) == accessToken3.f2473i) {
                                if (!atomicBoolean2.get() && str3 == null && i == 0) {
                                    if (abstractC0905a2 != null) {
                                        abstractC0905a2.m42033a(new C23222c0("Failed to refresh access token"));
                                    }
                                    c23265v.f64393d.set(false);
                                    return;
                                }
                                Date date = accessToken3.f2465a;
                                if (c23269d2.f64396b != 0) {
                                    date = new Date(c23269d2.f64396b * 1000);
                                } else if (c23269d2.f64397c != 0) {
                                    date = new Date((c23269d2.f64397c * 1000) + new Date().getTime());
                                }
                                String str5 = str3;
                                if (str3 == null) {
                                    str5 = accessToken3.f2469e;
                                }
                                String str6 = accessToken3.f2472h;
                                String str7 = accessToken3.f2473i;
                                if (!atomicBoolean2.get()) {
                                    set = accessToken3.f2466b;
                                }
                                if (!atomicBoolean2.get()) {
                                    set2 = accessToken3.f2467c;
                                }
                                if (!atomicBoolean2.get()) {
                                    set3 = accessToken3.f2468d;
                                }
                                EnumC23273w enumC23273w = accessToken3.f2470f;
                                Date date2 = new Date();
                                Date date3 = l != null ? new Date(l.longValue() * 1000) : accessToken3.f2474j;
                                String str8 = str4;
                                if (str4 == null) {
                                    str8 = accessToken3.f2475k;
                                }
                                accessToken2 = new AccessToken(str5, str6, str7, set, set2, set3, enumC23273w, date, date2, date3, str8);
                                try {
                                    c23266a.m7313a().m7314c(accessToken2, true);
                                    c23265v.f64393d.set(false);
                                    if (abstractC0905a2 == null) {
                                        return;
                                    }
                                    abstractC0905a2.m42032b(accessToken2);
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    c23265v.f64393d.set(false);
                                    if (abstractC0905a2 != null && accessToken2 != null) {
                                        abstractC0905a2.m42032b(accessToken2);
                                    }
                                    throw th;
                                }
                            }
                        }
                        if (abstractC0905a2 != null) {
                            abstractC0905a2.m42033a(new C23222c0("No current access token to refresh"));
                        }
                        c23265v.f64393d.set(false);
                    } catch (Throwable th3) {
                        th = th3;
                        accessToken2 = null;
                    }
                }
            };
            l.e(abstractC23241a, "callback");
            if (!c23240k0.f64328d.contains(abstractC23241a)) {
                c23240k0.f64328d.add(abstractC23241a);
            }
            c0923c.m42004d(c23240k0);
        }
    }

    /* renamed from: b */
    public final void m7315b(AccessToken accessToken, AccessToken accessToken2) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        Intent intent = new Intent(C23228f0.m7354a(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f64390a.m966d(intent);
    }

    /* renamed from: c */
    public final void m7314c(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f64392c;
        this.f64392c = accessToken;
        this.f64393d.set(false);
        this.f64394e = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f64391b.m7318a(accessToken);
            } else {
                this.f64391b.f64380a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0 c23228f02 = C23228f0.f64291a;
                C1168q0.m41679d(C23228f0.m7354a());
            }
        }
        if (!C1168q0.m41682a(accessToken2, accessToken)) {
            m7315b(accessToken2, accessToken);
            C23228f0 c23228f03 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            AccessToken.C0907c c0907c = AccessToken.f2460l;
            AccessToken m42030b = AccessToken.C0907c.m42030b();
            AlarmManager alarmManager = (AlarmManager) m7354a.getSystemService("alarm");
            if (!AccessToken.C0907c.m42029c()) {
                return;
            }
            if ((m42030b == null ? null : m42030b.f2465a) == null || alarmManager == null) {
                return;
            }
            Intent intent = new Intent(m7354a, CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            try {
                alarmManager.set(1, m42030b.f2465a.getTime(), PendingIntent.getBroadcast(m7354a, 0, intent, 67108864));
            } catch (Exception e) {
            }
        }
    }
}
