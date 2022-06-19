package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.p040h.p041a.C0735a;
import com.facebook.C1803a;
import com.facebook.C2102k;
import com.facebook.C2191m;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.c */
/* loaded from: classes-dex2jar.jar:com/facebook/c.class */
public final class C1938c {

    /* renamed from: a */
    private static volatile C1938c f5833a;

    /* renamed from: b */
    private final C0735a f5834b;

    /* renamed from: c */
    private final C1934b f5835c;

    /* renamed from: d */
    private C1803a f5836d;

    /* renamed from: e */
    private AtomicBoolean f5837e = new AtomicBoolean(false);

    /* renamed from: f */
    private Date f5838f = new Date(0);

    /* renamed from: com.facebook.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c$a.class */
    public static class C1943a {

        /* renamed from: a */
        public String f5856a;

        /* renamed from: b */
        public int f5857b;

        /* renamed from: c */
        public Long f5858c;

        /* renamed from: d */
        public String f5859d;

        private C1943a() {
        }
    }

    C1938c(C0735a c0735a, C1934b c1934b) {
        C2084y.m15417a(c0735a, "localBroadcastManager");
        C2084y.m15417a(c1934b, "accessTokenCache");
        this.f5834b = c0735a;
        this.f5835c = c1934b;
    }

    /* renamed from: a */
    public static C1938c m15811a() {
        if (f5833a == null) {
            synchronized (C1938c.class) {
                try {
                    if (f5833a == null) {
                        f5833a = new C1938c(C0735a.m19534a(C2095j.m15360h()), new C1934b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5833a;
    }

    /* renamed from: a */
    private static C2102k m15807a(C1803a c1803a, C2102k.AbstractC2108b abstractC2108b) {
        return new C2102k(c1803a, "me/permissions", new Bundle(), EnumC2195o.GET, abstractC2108b);
    }

    /* renamed from: a */
    private void m15808a(C1803a c1803a, C1803a c1803a2) {
        Intent intent = new Intent(C2095j.m15360h(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", c1803a);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", c1803a2);
        this.f5834b.m19533a(intent);
    }

    /* renamed from: a */
    private void m15806a(C1803a c1803a, boolean z) {
        C1803a c1803a2 = this.f5836d;
        this.f5836d = c1803a;
        this.f5837e.set(false);
        this.f5838f = new Date(0L);
        if (z) {
            if (c1803a != null) {
                this.f5835c.m15826a(c1803a);
            } else {
                this.f5835c.m15825b();
                C2079x.m15452b(C2095j.m15360h());
            }
        }
        if (!C2079x.m15475a(c1803a2, c1803a)) {
            m15808a(c1803a2, c1803a);
            m15797f();
        }
    }

    /* renamed from: b */
    private static C2102k m15801b(C1803a c1803a, C2102k.AbstractC2108b abstractC2108b) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        bundle.putString("client_id", c1803a.m16242l());
        return new C2102k(c1803a, "oauth/access_token", bundle, EnumC2195o.GET, abstractC2108b);
    }

    /* renamed from: b */
    public void m15802b(final C1803a.AbstractC1805a abstractC1805a) {
        final C1803a c1803a = this.f5836d;
        if (c1803a == null) {
            if (abstractC1805a == null) {
                return;
            }
            abstractC1805a.m16233a(new FacebookException("No current access token to refresh"));
        } else if (!this.f5837e.compareAndSet(false, true)) {
            if (abstractC1805a == null) {
                return;
            }
            abstractC1805a.m16233a(new FacebookException("Refresh already in progress"));
        } else {
            this.f5838f = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final C1943a c1943a = new C1943a();
            C2191m c2191m = new C2191m(m15807a(c1803a, new C2102k.AbstractC2108b() { // from class: com.facebook.c.2
                @Override // com.facebook.C2102k.AbstractC2108b
                /* renamed from: a */
                public void mo15229a(C2194n c2194n) {
                    JSONArray optJSONArray;
                    JSONObject m14980b = c2194n.m14980b();
                    if (m14980b == null || (optJSONArray = m14980b.optJSONArray("data")) == null) {
                        return;
                    }
                    atomicBoolean.set(true);
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("permission");
                            String optString2 = optJSONObject.optString("status");
                            if (!C2079x.m15472a(optString) && !C2079x.m15472a(optString2)) {
                                String lowerCase = optString2.toLowerCase(Locale.US);
                                if (lowerCase.equals("granted")) {
                                    hashSet.add(optString);
                                } else if (lowerCase.equals("declined")) {
                                    hashSet2.add(optString);
                                } else if (lowerCase.equals("expired")) {
                                    hashSet3.add(optString);
                                } else {
                                    Log.w("AccessTokenManager", "Unexpected status: " + lowerCase);
                                }
                            }
                        }
                    }
                }
            }), m15801b(c1803a, new C2102k.AbstractC2108b() { // from class: com.facebook.c.3
                @Override // com.facebook.C2102k.AbstractC2108b
                /* renamed from: a */
                public void mo15229a(C2194n c2194n) {
                    JSONObject m14980b = c2194n.m14980b();
                    if (m14980b == null) {
                        return;
                    }
                    c1943a.f5856a = m14980b.optString("access_token");
                    c1943a.f5857b = m14980b.optInt("expires_at");
                    c1943a.f5858c = Long.valueOf(m14980b.optLong("data_access_expiration_time"));
                    c1943a.f5859d = m14980b.optString("graph_domain", null);
                }
            }));
            c2191m.m15001a(new C2191m.AbstractC2192a() { // from class: com.facebook.c.4
                @Override // com.facebook.C2191m.AbstractC2192a
                /* renamed from: a */
                public void mo14989a(C2191m c2191m2) {
                    Throwable th;
                    C1803a c1803a2;
                    try {
                        if (C1938c.m15811a().m15803b() == null || C1938c.m15811a().m15803b().m16241m() != c1803a.m16241m()) {
                            if (abstractC1805a != null) {
                                abstractC1805a.m16233a(new FacebookException("No current access token to refresh"));
                            }
                            C1938c.this.f5837e.set(false);
                            if (abstractC1805a == null || 0 == 0) {
                                return;
                            }
                            abstractC1805a.m16232a((C1803a) null);
                        } else if (!atomicBoolean.get() && c1943a.f5856a == null && c1943a.f5857b == 0) {
                            if (abstractC1805a != null) {
                                abstractC1805a.m16233a(new FacebookException("Failed to refresh access token"));
                            }
                            C1938c.this.f5837e.set(false);
                            if (abstractC1805a == null || 0 == 0) {
                                return;
                            }
                            abstractC1805a.m16232a((C1803a) null);
                        } else {
                            c1803a2 = new C1803a(c1943a.f5856a != null ? c1943a.f5856a : c1803a.m16250d(), c1803a.m16242l(), c1803a.m16241m(), atomicBoolean.get() ? hashSet : c1803a.m16247g(), atomicBoolean.get() ? hashSet2 : c1803a.m16246h(), atomicBoolean.get() ? hashSet3 : c1803a.m16245i(), c1803a.m16244j(), c1943a.f5857b != 0 ? new Date(c1943a.f5857b * 1000) : c1803a.m16249e(), new Date(), c1943a.f5858c != null ? new Date(c1943a.f5858c.longValue() * 1000) : c1803a.m16248f(), c1943a.f5859d);
                            try {
                                C1938c.m15811a().m15809a(c1803a2);
                                C1938c.this.f5837e.set(false);
                                if (abstractC1805a == null || c1803a2 == null) {
                                    return;
                                }
                                abstractC1805a.m16232a(c1803a2);
                            } catch (Throwable th2) {
                                th = th2;
                                C1938c.this.f5837e.set(false);
                                if (abstractC1805a != null && c1803a2 != null) {
                                    abstractC1805a.m16232a(c1803a2);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        c1803a2 = null;
                    }
                }
            });
            c2191m.m14992h();
        }
    }

    /* renamed from: f */
    private void m15797f() {
        Context m15360h = C2095j.m15360h();
        C1803a m16259a = C1803a.m16259a();
        AlarmManager alarmManager = (AlarmManager) m15360h.getSystemService("alarm");
        if (!C1803a.m16253b() || m16259a.m16249e() == null || alarmManager == null) {
            return;
        }
        Intent intent = new Intent(m15360h, CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        try {
            alarmManager.set(1, m16259a.m16249e().getTime(), PendingIntent.getBroadcast(m15360h, 0, intent, 0));
        } catch (Exception e) {
        }
    }

    /* renamed from: g */
    private boolean m15796g() {
        boolean z;
        if (this.f5836d == null) {
            z = false;
        } else {
            Long valueOf = Long.valueOf(new Date().getTime());
            z = false;
            if (this.f5836d.m16244j().m15728a()) {
                z = false;
                if (valueOf.longValue() - this.f5838f.getTime() > 3600000) {
                    z = false;
                    if (valueOf.longValue() - this.f5836d.m16243k().getTime() > 86400000) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    void m15810a(final C1803a.AbstractC1805a abstractC1805a) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            m15802b(abstractC1805a);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.c.1
                @Override // java.lang.Runnable
                public void run() {
                    C1938c.this.m15802b(abstractC1805a);
                }
            });
        }
    }

    /* renamed from: a */
    public void m15809a(C1803a c1803a) {
        m15806a(c1803a, true);
    }

    /* renamed from: b */
    public C1803a m15803b() {
        return this.f5836d;
    }

    /* renamed from: c */
    public boolean m15800c() {
        boolean z = false;
        C1803a m15827a = this.f5835c.m15827a();
        if (m15827a != null) {
            m15806a(m15827a, false);
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public void m15799d() {
        m15808a(this.f5836d, this.f5836d);
    }

    /* renamed from: e */
    public void m15798e() {
        if (!m15796g()) {
            return;
        }
        m15810a((C1803a.AbstractC1805a) null);
    }
}
