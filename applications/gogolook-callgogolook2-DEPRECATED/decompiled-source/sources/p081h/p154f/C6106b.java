package p081h.p154f;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.CurrentAccessTokenExpirationBroadcastReceiver;
import com.facebook.GraphRequest;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p154f.C6145r;
/* renamed from: h.f.b */
/* loaded from: classes-dex2jar.jar:h/f/b.class */
public final class C6106b {

    /* renamed from: f */
    public static volatile C6106b f15164f;

    /* renamed from: a */
    public final LocalBroadcastManager f15165a;

    /* renamed from: b */
    public final C6103a f15166b;

    /* renamed from: c */
    public AccessToken f15167c;

    /* renamed from: d */
    public AtomicBoolean f15168d = new AtomicBoolean(false);

    /* renamed from: e */
    public Date f15169e = new Date(0);

    /* renamed from: h.f.b$a */
    /* loaded from: classes-dex2jar.jar:h/f/b$a.class */
    public class RunnableC6107a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AccessToken.AbstractC2218b f15170a;

        public RunnableC6107a(AccessToken.AbstractC2218b bVar) {
            this.f15170a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C6106b.this.m23828b(this.f15170a);
        }
    }

    /* renamed from: h.f.b$b */
    /* loaded from: classes-dex2jar.jar:h/f/b$b.class */
    public class C6108b implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ AtomicBoolean f15172a;

        /* renamed from: b */
        public final /* synthetic */ Set f15173b;

        /* renamed from: c */
        public final /* synthetic */ Set f15174c;

        /* renamed from: d */
        public final /* synthetic */ Set f15175d;

        public C6108b(C6106b bVar, AtomicBoolean atomicBoolean, Set set, Set set2, Set set3) {
            this.f15172a = atomicBoolean;
            this.f15173b = set;
            this.f15174c = set2;
            this.f15175d = set3;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            JSONArray optJSONArray;
            JSONObject b = sVar.m23698b();
            if (!(b == null || (optJSONArray = b.optJSONArray("data")) == null)) {
                this.f15172a.set(true);
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("permission");
                        String optString2 = optJSONObject.optString("status");
                        if (!C2408g0.m34816d(optString) && !C2408g0.m34816d(optString2)) {
                            String lowerCase = optString2.toLowerCase(Locale.US);
                            if (lowerCase.equals("granted")) {
                                this.f15173b.add(optString);
                            } else if (lowerCase.equals("declined")) {
                                this.f15174c.add(optString);
                            } else if (lowerCase.equals("expired")) {
                                this.f15175d.add(optString);
                            } else {
                                String str = "Unexpected status: " + lowerCase;
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: h.f.b$c */
    /* loaded from: classes-dex2jar.jar:h/f/b$c.class */
    public class C6109c implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ C6111e f15176a;

        public C6109c(C6106b bVar, C6111e eVar) {
            this.f15176a = eVar;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            JSONObject b = sVar.m23698b();
            if (b != null) {
                this.f15176a.f15185a = b.optString("access_token");
                this.f15176a.f15186b = b.optInt("expires_at");
                this.f15176a.f15187c = Long.valueOf(b.optLong("data_access_expiration_time"));
            }
        }
    }

    /* renamed from: h.f.b$d */
    /* loaded from: classes-dex2jar.jar:h/f/b$d.class */
    public class C6110d implements C6145r.AbstractC6146a {

        /* renamed from: a */
        public final /* synthetic */ AccessToken f15177a;

        /* renamed from: b */
        public final /* synthetic */ AccessToken.AbstractC2218b f15178b;

        /* renamed from: c */
        public final /* synthetic */ AtomicBoolean f15179c;

        /* renamed from: d */
        public final /* synthetic */ C6111e f15180d;

        /* renamed from: e */
        public final /* synthetic */ Set f15181e;

        /* renamed from: f */
        public final /* synthetic */ Set f15182f;

        /* renamed from: g */
        public final /* synthetic */ Set f15183g;

        public C6110d(AccessToken accessToken, AccessToken.AbstractC2218b bVar, AtomicBoolean atomicBoolean, C6111e eVar, Set set, Set set2, Set set3) {
            this.f15177a = accessToken;
            this.f15178b = bVar;
            this.f15179c = atomicBoolean;
            this.f15180d = eVar;
            this.f15181e = set;
            this.f15182f = set2;
            this.f15183g = set3;
        }

        @Override // p081h.p154f.C6145r.AbstractC6146a
        /* renamed from: a */
        public void mo23707a(C6145r rVar) {
            Throwable th;
            AccessToken accessToken;
            try {
                if (C6106b.m23822g().m23826c() != null && C6106b.m23822g().m23826c().m35490w() == this.f15177a.m35490w()) {
                    if (!this.f15179c.get() && this.f15180d.f15185a == null && this.f15180d.f15186b == 0) {
                        if (this.f15178b != null) {
                            this.f15178b.m35485a(new C6131k("Failed to refresh access token"));
                        }
                        C6106b.this.f15168d.set(false);
                        AccessToken.AbstractC2218b bVar = this.f15178b;
                        return;
                    }
                    accessToken = new AccessToken(this.f15180d.f15185a != null ? this.f15180d.f15185a : this.f15177a.m35491v(), this.f15177a.m35505a(), this.f15177a.m35490w(), this.f15179c.get() ? this.f15181e : this.f15177a.m35493t(), this.f15179c.get() ? this.f15182f : this.f15177a.m35497c(), this.f15179c.get() ? this.f15183g : this.f15177a.m35496q(), this.f15177a.m35492u(), this.f15180d.f15186b != 0 ? new Date(this.f15180d.f15186b * 1000) : this.f15177a.m35495r(), new Date(), this.f15180d.f15187c != null ? new Date(1000 * this.f15180d.f15187c.longValue()) : this.f15177a.m35499b());
                    try {
                        C6106b.m23822g().m23835a(accessToken);
                        C6106b.this.f15168d.set(false);
                        AccessToken.AbstractC2218b bVar2 = this.f15178b;
                        if (bVar2 != null) {
                            bVar2.m35486a(accessToken);
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        C6106b.this.f15168d.set(false);
                        AccessToken.AbstractC2218b bVar3 = this.f15178b;
                        if (!(bVar3 == null || accessToken == null)) {
                            bVar3.m35486a(accessToken);
                        }
                        throw th;
                    }
                }
                if (this.f15178b != null) {
                    this.f15178b.m35485a(new C6131k("No current access token to refresh"));
                }
                C6106b.this.f15168d.set(false);
                AccessToken.AbstractC2218b bVar4 = this.f15178b;
            } catch (Throwable th3) {
                th = th3;
                accessToken = null;
            }
        }
    }

    /* renamed from: h.f.b$e */
    /* loaded from: classes-dex2jar.jar:h/f/b$e.class */
    public static class C6111e {

        /* renamed from: a */
        public String f15185a;

        /* renamed from: b */
        public int f15186b;

        /* renamed from: c */
        public Long f15187c;

        public C6111e() {
        }

        public /* synthetic */ C6111e(RunnableC6107a aVar) {
            this();
        }
    }

    public C6106b(LocalBroadcastManager localBroadcastManager, C6103a aVar) {
        C2416h0.m34791a(localBroadcastManager, "localBroadcastManager");
        C2416h0.m34791a(aVar, "accessTokenCache");
        this.f15165a = localBroadcastManager;
        this.f15166b = aVar;
    }

    /* renamed from: a */
    public static GraphRequest m23833a(AccessToken accessToken, GraphRequest.AbstractC2230f fVar) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        return new GraphRequest(accessToken, "oauth/access_token", bundle, EnumC6149t.GET, fVar);
    }

    /* renamed from: b */
    public static GraphRequest m23827b(AccessToken accessToken, GraphRequest.AbstractC2230f fVar) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), EnumC6149t.GET, fVar);
    }

    /* renamed from: g */
    public static C6106b m23822g() {
        if (f15164f == null) {
            synchronized (C6106b.class) {
                try {
                    if (f15164f == null) {
                        f15164f = new C6106b(LocalBroadcastManager.getInstance(C6135n.m23746e()), new C6103a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f15164f;
    }

    /* renamed from: a */
    public void m23837a() {
        AccessToken accessToken = this.f15167c;
        m23834a(accessToken, accessToken);
    }

    /* renamed from: a */
    public void m23836a(AccessToken.AbstractC2218b bVar) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            m23828b(bVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new RunnableC6107a(bVar));
        }
    }

    /* renamed from: a */
    public void m23835a(AccessToken accessToken) {
        m23832a(accessToken, true);
    }

    /* renamed from: a */
    public final void m23834a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(C6135n.m23746e(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f15165a.sendBroadcast(intent);
    }

    /* renamed from: a */
    public final void m23832a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f15167c;
        this.f15167c = accessToken;
        this.f15168d.set(false);
        this.f15169e = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f15166b.m23845a(accessToken);
            } else {
                this.f15166b.m23846a();
                C2408g0.m34873a(C6135n.m23746e());
            }
        }
        if (!C2408g0.m34858a(accessToken2, accessToken)) {
            m23834a(accessToken2, accessToken);
            m23824e();
        }
    }

    /* renamed from: b */
    public void m23829b() {
        if (m23823f()) {
            m23836a((AccessToken.AbstractC2218b) null);
        }
    }

    /* renamed from: b */
    public final void m23828b(AccessToken.AbstractC2218b bVar) {
        AccessToken accessToken = this.f15167c;
        if (accessToken == null) {
            if (bVar != null) {
                bVar.m35485a(new C6131k("No current access token to refresh"));
            }
        } else if (this.f15168d.compareAndSet(false, true)) {
            this.f15169e = new Date();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            C6111e eVar = new C6111e(null);
            C6145r rVar = new C6145r(m23827b(accessToken, new C6108b(this, atomicBoolean, hashSet, hashSet2, hashSet3)), m23833a(accessToken, new C6109c(this, eVar)));
            rVar.m23719a(new C6110d(accessToken, bVar, atomicBoolean, eVar, hashSet, hashSet2, hashSet3));
            rVar.m23715q();
        } else if (bVar != null) {
            bVar.m35485a(new C6131k("Refresh already in progress"));
        }
    }

    /* renamed from: c */
    public AccessToken m23826c() {
        return this.f15167c;
    }

    /* renamed from: d */
    public boolean m23825d() {
        AccessToken f = this.f15166b.m23840f();
        if (f == null) {
            return false;
        }
        m23832a(f, false);
        return true;
    }

    /* renamed from: e */
    public final void m23824e() {
        Context e = C6135n.m23746e();
        AccessToken B = AccessToken.m35507B();
        AlarmManager alarmManager = (AlarmManager) e.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (AccessToken.m35506C() && B.m35495r() != null && alarmManager != null) {
            Intent intent = new Intent(e, CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            try {
                alarmManager.set(1, B.m35495r().getTime(), PendingIntent.getBroadcast(e, 0, intent, 0));
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: f */
    public final boolean m23823f() {
        if (this.f15167c == null) {
            return false;
        }
        Long valueOf = Long.valueOf(new Date().getTime());
        boolean z = false;
        if (this.f15167c.m35492u().m23817a()) {
            z = false;
            if (valueOf.longValue() - this.f15169e.getTime() > 3600000) {
                z = false;
                if (valueOf.longValue() - this.f15167c.m35494s().getTime() > AdUtils.ONE_DAY) {
                    z = true;
                }
            }
        }
        return z;
    }
}
