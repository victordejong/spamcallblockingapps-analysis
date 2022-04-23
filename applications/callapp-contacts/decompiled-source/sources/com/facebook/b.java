package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.i;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/b.class */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static volatile b f19678c;

    /* renamed from: a  reason: collision with root package name */
    final com.facebook.a f19679a;

    /* renamed from: b  reason: collision with root package name */
    AccessToken f19680b;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.i.a.a f19681d;
    private AtomicBoolean e = new AtomicBoolean(false);
    private Date f = new Date(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f19694a;

        /* renamed from: b  reason: collision with root package name */
        public int f19695b;

        /* renamed from: c  reason: collision with root package name */
        public Long f19696c;

        /* renamed from: d  reason: collision with root package name */
        public String f19697d;

        private a() {
        }
    }

    b(androidx.i.a.a aVar, com.facebook.a aVar2) {
        af.a(aVar, "localBroadcastManager");
        af.a(aVar2, "accessTokenCache");
        this.f19681d = aVar;
        this.f19679a = aVar2;
    }

    private static GraphRequest a(AccessToken accessToken, GraphRequest.b bVar) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), k.GET, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        if (f19678c == null) {
            synchronized (b.class) {
                try {
                    if (f19678c == null) {
                        f19678c = new b(androidx.i.a.a.a(g.i()), new com.facebook.a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19678c;
    }

    private static GraphRequest b(AccessToken accessToken, GraphRequest.b bVar) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        bundle.putString("client_id", accessToken.getApplicationId());
        return new GraphRequest(accessToken, "oauth/access_token", bundle, k.GET, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AccessToken.b bVar) {
        final AccessToken accessToken = this.f19680b;
        if (accessToken == null) {
            if (bVar != null) {
                new FacebookException("No current access token to refresh");
            }
        } else if (this.e.compareAndSet(false, true)) {
            this.f = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final a aVar = new a();
            i iVar = new i(a(accessToken, new GraphRequest.b() { // from class: com.facebook.b.2
                @Override // com.facebook.GraphRequest.b
                public final void a(j jVar) {
                    JSONArray optJSONArray;
                    JSONObject jSONObject = jVar.f20036a;
                    if (!(jSONObject == null || (optJSONArray = jSONObject.optJSONArray("data")) == null)) {
                        atomicBoolean.set(true);
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("permission");
                                String optString2 = optJSONObject.optString("status");
                                if (!ae.a(optString) && !ae.a(optString2)) {
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
                }
            }), b(accessToken, new GraphRequest.b() { // from class: com.facebook.b.3
                @Override // com.facebook.GraphRequest.b
                public final void a(j jVar) {
                    JSONObject jSONObject = jVar.f20036a;
                    if (jSONObject != null) {
                        aVar.f19694a = jSONObject.optString(AccessToken.ACCESS_TOKEN_KEY);
                        aVar.f19695b = jSONObject.optInt("expires_at");
                        aVar.f19696c = Long.valueOf(jSONObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME));
                        aVar.f19697d = jSONObject.optString("graph_domain", null);
                    }
                }
            }));
            iVar.a(new i.a() { // from class: com.facebook.b.4
                @Override // com.facebook.i.a
                public final void a() {
                    try {
                        if (b.a().f19680b != null && b.a().f19680b.getUserId() == accessToken.getUserId()) {
                            if (!atomicBoolean.get() && aVar.f19694a == null && aVar.f19695b == 0) {
                                if (bVar != null) {
                                    new FacebookException("Failed to refresh access token");
                                }
                            }
                            b.a().a(new AccessToken(aVar.f19694a != null ? aVar.f19694a : accessToken.getToken(), accessToken.getApplicationId(), accessToken.getUserId(), atomicBoolean.get() ? hashSet : accessToken.getPermissions(), atomicBoolean.get() ? hashSet2 : accessToken.getDeclinedPermissions(), atomicBoolean.get() ? hashSet3 : accessToken.getExpiredPermissions(), accessToken.getSource(), aVar.f19695b != 0 ? new Date(aVar.f19695b * 1000) : accessToken.getExpires(), new Date(), aVar.f19696c != null ? new Date(1000 * aVar.f19696c.longValue()) : accessToken.getDataAccessExpirationTime(), aVar.f19697d), true);
                            b.this.e.set(false);
                            if (bVar != null) {
                            }
                            return;
                        }
                        if (bVar != null) {
                            new FacebookException("No current access token to refresh");
                        }
                    } finally {
                        b.this.e.set(false);
                    }
                }
            });
            GraphRequest.b(iVar);
        } else if (bVar != null) {
            new FacebookException("Refresh already in progress");
        }
    }

    private static void c() {
        Context i = g.i();
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        AlarmManager alarmManager = (AlarmManager) i.getSystemService("alarm");
        if (AccessToken.isCurrentAccessTokenActive() && currentAccessToken.getExpires() != null && alarmManager != null) {
            Intent intent = new Intent(i, CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            try {
                alarmManager.set(1, currentAccessToken.getExpires().getTime(), PendingIntent.getBroadcast(i, 0, intent, 0));
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final AccessToken.b bVar) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            b(bVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        try {
                            b.this.b(bVar);
                        } catch (Throwable th) {
                            com.facebook.internal.b.b.a.a(th, this);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(g.i(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f19681d.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f19680b;
        this.f19680b = accessToken;
        this.e.set(false);
        this.f = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f19679a.a(accessToken);
            } else {
                this.f19679a.b();
                ae.b(g.i());
            }
        }
        if (!ae.a(accessToken2, accessToken)) {
            a(accessToken2, accessToken);
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r5 = this;
            r0 = r5
            com.facebook.AccessToken r0 = r0.f19680b
            if (r0 == 0) goto L_0x0050
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r1.<init>()
            long r0 = r0.getTime()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r6 = r0
            r0 = r5
            com.facebook.AccessToken r0 = r0.f19680b
            com.facebook.c r0 = r0.getSource()
            boolean r0 = r0.canExtendToken()
            if (r0 == 0) goto L_0x0050
            r0 = r6
            long r0 = r0.longValue()
            r1 = r5
            java.util.Date r1 = r1.f
            long r1 = r1.getTime()
            long r0 = r0 - r1
            r1 = 3600000(0x36ee80, double:1.7786363E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0050
            r0 = r6
            long r0 = r0.longValue()
            r1 = r5
            com.facebook.AccessToken r1 = r1.f19680b
            java.util.Date r1 = r1.getLastRefresh()
            long r1 = r1.getTime()
            long r0 = r0 - r1
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0050
            r0 = 1
            r7 = r0
            goto L_0x0052
        L_0x0050:
            r0 = 0
            r7 = r0
        L_0x0052:
            r0 = r7
            if (r0 != 0) goto L_0x0057
            return
        L_0x0057:
            r0 = r5
            r1 = 0
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.b():void");
    }
}
