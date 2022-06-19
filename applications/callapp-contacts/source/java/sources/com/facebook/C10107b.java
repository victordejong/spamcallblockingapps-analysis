package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.p052i.p053a.C1179a;
import com.facebook.AccessToken;
import com.facebook.C10193i;
import com.facebook.GraphRequest;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/b.class */
public final class C10107b {

    /* renamed from: c */
    private static volatile C10107b f33472c;

    /* renamed from: a */
    final C9939a f33473a;

    /* renamed from: b */
    AccessToken f33474b;

    /* renamed from: d */
    private final C1179a f33475d;

    /* renamed from: e */
    private AtomicBoolean f33476e = new AtomicBoolean(false);

    /* renamed from: f */
    private Date f33477f = new Date(0);

    /* renamed from: com.facebook.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/b$a.class */
    public static final class C10112a {

        /* renamed from: a */
        public String f33495a;

        /* renamed from: b */
        public int f33496b;

        /* renamed from: c */
        public Long f33497c;

        /* renamed from: d */
        public String f33498d;

        private C10112a() {
        }
    }

    C10107b(C1179a c1179a, C9939a c9939a) {
        C10218af.m23179a(c1179a, "localBroadcastManager");
        C10218af.m23179a(c9939a, "accessTokenCache");
        this.f33475d = c1179a;
        this.f33473a = c9939a;
    }

    /* renamed from: a */
    private static GraphRequest m23385a(AccessToken accessToken, GraphRequest.AbstractC9933b abstractC9933b) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), EnumC10352k.GET, abstractC9933b);
    }

    /* renamed from: a */
    public static C10107b m23388a() {
        if (f33472c == null) {
            synchronized (C10107b.class) {
                try {
                    if (f33472c == null) {
                        f33472c = new C10107b(C1179a.m43410a(C10181g.m23290i()), new C9939a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f33472c;
    }

    /* renamed from: b */
    private static GraphRequest m23379b(AccessToken accessToken, GraphRequest.AbstractC9933b abstractC9933b) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        bundle.putString("client_id", accessToken.getApplicationId());
        return new GraphRequest(accessToken, "oauth/access_token", bundle, EnumC10352k.GET, abstractC9933b);
    }

    /* renamed from: b */
    public void m23380b(final AccessToken.AbstractC9919b abstractC9919b) {
        final AccessToken accessToken = this.f33474b;
        if (accessToken == null) {
            if (abstractC9919b == null) {
                return;
            }
            new FacebookException("No current access token to refresh");
        } else if (!this.f33476e.compareAndSet(false, true)) {
            if (abstractC9919b == null) {
                return;
            }
            new FacebookException("Refresh already in progress");
        } else {
            this.f33477f = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final C10112a c10112a = new C10112a();
            C10193i c10193i = new C10193i(m23385a(accessToken, new GraphRequest.AbstractC9933b() { // from class: com.facebook.b.2
                @Override // com.facebook.GraphRequest.AbstractC9933b
                /* renamed from: a */
                public final void mo22725a(C10351j c10351j) {
                    JSONArray optJSONArray;
                    JSONObject jSONObject = c10351j.f33959a;
                    if (jSONObject == null || (optJSONArray = jSONObject.optJSONArray("data")) == null) {
                        return;
                    }
                    atomicBoolean.set(true);
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("permission");
                            String optString2 = optJSONObject.optString("status");
                            if (!C10213ae.m23230a(optString) && !C10213ae.m23230a(optString2)) {
                                String lowerCase = optString2.toLowerCase(Locale.US);
                                if (lowerCase.equals("granted")) {
                                    hashSet.add(optString);
                                } else if (lowerCase.equals("declined")) {
                                    hashSet2.add(optString);
                                } else if (lowerCase.equals("expired")) {
                                    hashSet3.add(optString);
                                } else {
                                    Log.w("AccessTokenManager", "Unexpected status: ".concat(String.valueOf(lowerCase)));
                                }
                            }
                        }
                    }
                }
            }), m23379b(accessToken, new GraphRequest.AbstractC9933b() { // from class: com.facebook.b.3
                @Override // com.facebook.GraphRequest.AbstractC9933b
                /* renamed from: a */
                public final void mo22725a(C10351j c10351j) {
                    JSONObject jSONObject = c10351j.f33959a;
                    if (jSONObject == null) {
                        return;
                    }
                    c10112a.f33495a = jSONObject.optString(AccessToken.ACCESS_TOKEN_KEY);
                    c10112a.f33496b = jSONObject.optInt("expires_at");
                    c10112a.f33497c = Long.valueOf(jSONObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME));
                    c10112a.f33498d = jSONObject.optString("graph_domain", null);
                }
            }));
            c10193i.m23271a(new C10193i.AbstractC10194a() { // from class: com.facebook.b.4
                @Override // com.facebook.C10193i.AbstractC10194a
                /* renamed from: a */
                public final void mo22729a() {
                    try {
                        if (C10107b.m23388a().f33474b != null && C10107b.m23388a().f33474b.getUserId() == accessToken.getUserId()) {
                            if (!atomicBoolean.get() && c10112a.f33495a == null && c10112a.f33496b == 0) {
                                if (abstractC9919b != null) {
                                    new FacebookException("Failed to refresh access token");
                                }
                            }
                            C10107b.m23388a().m23384a(new AccessToken(c10112a.f33495a != null ? c10112a.f33495a : accessToken.getToken(), accessToken.getApplicationId(), accessToken.getUserId(), atomicBoolean.get() ? hashSet : accessToken.getPermissions(), atomicBoolean.get() ? hashSet2 : accessToken.getDeclinedPermissions(), atomicBoolean.get() ? hashSet3 : accessToken.getExpiredPermissions(), accessToken.getSource(), c10112a.f33496b != 0 ? new Date(c10112a.f33496b * 1000) : accessToken.getExpires(), new Date(), c10112a.f33497c != null ? new Date(1000 * c10112a.f33497c.longValue()) : accessToken.getDataAccessExpirationTime(), c10112a.f33498d), true);
                            C10107b.this.f33476e.set(false);
                            if (abstractC9919b != null) {
                            }
                            return;
                        }
                        if (abstractC9919b != null) {
                            new FacebookException("No current access token to refresh");
                        }
                    } finally {
                        C10107b.this.f33476e.set(false);
                    }
                }
            });
            GraphRequest.m23780b(c10193i);
        }
    }

    /* renamed from: c */
    private static void m23378c() {
        Context m23290i = C10181g.m23290i();
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        AlarmManager alarmManager = (AlarmManager) m23290i.getSystemService("alarm");
        if (!AccessToken.isCurrentAccessTokenActive() || currentAccessToken.getExpires() == null || alarmManager == null) {
            return;
        }
        Intent intent = new Intent(m23290i, CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        try {
            alarmManager.set(1, currentAccessToken.getExpires().getTime(), PendingIntent.getBroadcast(m23290i, 0, intent, 0));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m23387a(final AccessToken.AbstractC9919b abstractC9919b) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            m23380b(abstractC9919b);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10107b.this.m23380b(abstractC9919b);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public final void m23386a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(C10181g.m23290i(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f33475d.m43409a(intent);
    }

    /* renamed from: a */
    public final void m23384a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f33474b;
        this.f33474b = accessToken;
        this.f33476e.set(false);
        this.f33477f = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f33473a.m23753a(accessToken);
            } else {
                this.f33473a.m23752b();
                C10213ae.m23211b(C10181g.m23290i());
            }
        }
        if (!C10213ae.m23233a(accessToken2, accessToken)) {
            m23386a(accessToken2, accessToken);
            m23378c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23381b() {
        /*
            r5 = this;
            r0 = r5
            com.facebook.AccessToken r0 = r0.f33474b
            if (r0 == 0) goto L50
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r1.<init>()
            long r0 = r0.getTime()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r6 = r0
            r0 = r5
            com.facebook.AccessToken r0 = r0.f33474b
            com.facebook.c r0 = r0.getSource()
            boolean r0 = r0.canExtendToken()
            if (r0 == 0) goto L50
            r0 = r6
            long r0 = r0.longValue()
            r1 = r5
            java.util.Date r1 = r1.f33477f
            long r1 = r1.getTime()
            long r0 = r0 - r1
            r1 = 3600000(0x36ee80, double:1.7786363E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = r6
            long r0 = r0.longValue()
            r1 = r5
            com.facebook.AccessToken r1 = r1.f33474b
            java.util.Date r1 = r1.getLastRefresh()
            long r1 = r1.getTime()
            long r0 = r0 - r1
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = 1
            r7 = r0
            goto L52
        L50:
            r0 = 0
            r7 = r0
        L52:
            r0 = r7
            if (r0 != 0) goto L57
            return
        L57:
            r0 = r5
            r1 = 0
            r0.m23387a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.C10107b.m23381b():void");
    }
}
