package com.applovin.impl.sdk.p489ad;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.AppLovinNativeAdapter;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p153y.C2384d;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2423p;
/* renamed from: com.applovin.impl.sdk.ad.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/f.class */
public class RunnableC7032f implements Runnable {

    /* renamed from: i */
    public static boolean f21665i;

    /* renamed from: a */
    public final C2341l f21666a;

    /* renamed from: b */
    public final MaxAdFormat f21667b;

    /* renamed from: c */
    public List<C2246b> f21668c;

    /* renamed from: f */
    public C2246b f21671f;

    /* renamed from: h */
    public boolean f21673h;

    /* renamed from: g */
    public EnumC7034b f21672g = EnumC7034b.NONE;

    /* renamed from: d */
    public final List<JSONObject> f21669d = new ArrayList();

    /* renamed from: e */
    public final Object f21670e = new Object();

    /* renamed from: com.applovin.impl.sdk.ad.f$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/f$a.class */
    public class C7033a implements AppLovinBroadcastManager.Receiver {
        public C7033a() {
        }

        @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
        public void onReceive(Context context, Intent intent, Map<String, Object> map) {
            RunnableC7032f.this.m18980a(EnumC7034b.APP_PAUSED);
            synchronized (RunnableC7032f.this.f21670e) {
                RunnableC7032f.this.f21669d.clear();
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.ad.f$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/f$b.class */
    public enum EnumC7034b {
        NONE(0, "none"),
        TIMER(1, "timer"),
        APP_PAUSED(2, "backgrounded"),
        IMPRESSION(3, "impression"),
        WATERFALL_RESTARTED(3, "waterfall_restarted"),
        UNKNOWN_ZONE(4, "unknown_zone"),
        SKIPPED_ZONE(5, "skipped_zone"),
        REPEATED_ZONE(6, "repeated_zone");
        

        /* renamed from: i */
        public final int f21684i;

        /* renamed from: j */
        public final String f21685j;

        EnumC7034b(int i, String str) {
            this.f21684i = i;
            this.f21685j = str;
        }

        /* renamed from: a */
        public int m18968a() {
            return this.f21684i;
        }

        /* renamed from: b */
        public String m18967b() {
            return this.f21685j;
        }
    }

    /* renamed from: com.applovin.impl.sdk.ad.f$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/f$c.class */
    public static class C7035c implements AppLovinAdLoadListener {

        /* renamed from: a */
        public final C2341l f21686a;

        /* renamed from: b */
        public final C2246b f21687b;

        /* renamed from: c */
        public final AppLovinAdLoadListener f21688c;

        /* renamed from: d */
        public boolean f21689d;

        public C7035c(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            this.f21686a = lVar;
            this.f21687b = bVar;
            this.f21688c = appLovinAdLoadListener;
        }

        /* renamed from: a */
        public void m18966a(boolean z) {
            this.f21689d = z;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            this.f21686a.m30238u().m30620a((AppLovinAdBase) ((AbstractC7036g) appLovinAd), false, this.f21689d);
            this.f21688c.adReceived(appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            this.f21686a.m30238u().m30621a(this.f21687b, this.f21689d, i);
            this.f21688c.failedToReceiveAd(i);
        }
    }

    public RunnableC7032f(MaxAdFormat maxAdFormat, C2341l lVar) {
        this.f21666a = lVar;
        this.f21667b = maxAdFormat;
    }

    /* renamed from: a */
    public static JSONObject m18984a(C2246b bVar, C2341l lVar) {
        JSONObject jSONObject = new JSONObject();
        C2390i.m29926a(jSONObject, "id", bVar.m30650a(), lVar);
        C2390i.m29915b(jSONObject, "response_ts_s", TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()), lVar);
        return jSONObject;
    }

    /* renamed from: a */
    public static void m18985a(C2246b bVar, int i, C2341l lVar) {
        if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8746s4)).booleanValue()) {
            if (!f21665i) {
                C2374t.m30034j(AppLovinSdk.TAG, "Unknown zone in waterfall: " + bVar.m30650a());
                f21665i = true;
            } else {
                return;
            }
        }
        JSONObject a = m18984a(bVar, lVar);
        C2390i.m29930a(a, "error_code", i, lVar);
        m18978a(EnumC7034b.UNKNOWN_ZONE, EnumC7034b.NONE, C2390i.m29919b((Object) a), null, lVar);
    }

    /* renamed from: a */
    public static void m18978a(EnumC7034b bVar, EnumC7034b bVar2, JSONArray jSONArray, MaxAdFormat maxAdFormat, C2341l lVar) {
        lVar.m30249j().m18826a(new C2270g.C2323y(bVar, bVar2, jSONArray, maxAdFormat, lVar), C7048s.EnumC7049a.BACKGROUND);
    }

    /* renamed from: a */
    public void m18987a() {
        if (((Boolean) this.f21666a.m30291a(C2251d.C2256e.f8734q4)).booleanValue()) {
            m18980a(EnumC7034b.IMPRESSION);
        }
    }

    /* renamed from: a */
    public final void m18983a(C2246b bVar, JSONObject jSONObject) {
        EnumC7034b bVar2;
        C2390i.m29921a(jSONObject, m18984a(bVar, this.f21666a), this.f21666a);
        synchronized (this.f21670e) {
            try {
                if (m18986a(bVar)) {
                    m18980a(EnumC7034b.WATERFALL_RESTARTED);
                } else {
                    if (m18972b(bVar)) {
                        m18974a(jSONObject, bVar);
                        bVar2 = EnumC7034b.REPEATED_ZONE;
                    } else if (m18969c(bVar)) {
                        m18974a(jSONObject, bVar);
                        bVar2 = EnumC7034b.SKIPPED_ZONE;
                    }
                    m18979a(bVar2, bVar);
                }
                m18974a(jSONObject, bVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m18982a(C2246b bVar, boolean z, int i) {
        JSONObject jSONObject = new JSONObject();
        C2390i.m29930a(jSONObject, "error_code", i, this.f21666a);
        C2390i.m29922a(jSONObject, "for_bidding", z, this.f21666a);
        m18983a(bVar, jSONObject);
    }

    /* renamed from: a */
    public void m18981a(AppLovinAdBase appLovinAdBase, boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        C2390i.m29915b(jSONObject, AppLovinNativeAdapter.KEY_EXTRA_AD_ID, appLovinAdBase.getAdIdNumber(), this.f21666a);
        C2390i.m29915b(jSONObject, "ad_created_ts_s", TimeUnit.MILLISECONDS.toSeconds(appLovinAdBase.getCreatedAtMillis()), this.f21666a);
        C2390i.m29922a(jSONObject, "is_preloaded", z, this.f21666a);
        C2390i.m29922a(jSONObject, "for_bidding", z2, this.f21666a);
        m18983a(appLovinAdBase.getAdZone(), jSONObject);
    }

    /* renamed from: a */
    public final void m18980a(EnumC7034b bVar) {
        m18979a(bVar, (C2246b) null);
    }

    /* renamed from: a */
    public final void m18979a(EnumC7034b bVar, C2246b bVar2) {
        if (!((Boolean) this.f21666a.m30291a(C2251d.C2256e.f8746s4)).booleanValue()) {
            if (!this.f21673h) {
                if (bVar == EnumC7034b.SKIPPED_ZONE || bVar == EnumC7034b.REPEATED_ZONE) {
                    C2374t.m30034j(AppLovinSdk.TAG, "Invalid zone in waterfall: " + bVar2);
                    this.f21673h = true;
                }
            } else {
                return;
            }
        }
        synchronized (this.f21670e) {
            if (!this.f21669d.isEmpty()) {
                JSONArray jSONArray = new JSONArray((Collection) this.f21669d);
                this.f21669d.clear();
                EnumC7034b bVar3 = this.f21672g;
                this.f21672g = bVar;
                m18978a(bVar, bVar3, jSONArray, this.f21667b, this.f21666a);
            }
        }
    }

    /* renamed from: a */
    public void m18975a(List<C2246b> list) {
        if (this.f21668c == null) {
            this.f21668c = list;
            m18973b();
            if (((Boolean) this.f21666a.m30291a(C2251d.C2256e.f8740r4)).booleanValue()) {
                this.f21666a.m30317E().registerReceiver(new C7033a(), new IntentFilter("com.applovin.application_paused"));
            }
        }
    }

    /* renamed from: a */
    public final void m18974a(JSONObject jSONObject, C2246b bVar) {
        synchronized (this.f21670e) {
            this.f21669d.add(jSONObject);
            this.f21671f = bVar;
        }
    }

    /* renamed from: a */
    public final boolean m18986a(C2246b bVar) {
        if (this.f21671f == null) {
            return false;
        }
        int indexOf = this.f21668c.indexOf(bVar);
        return indexOf == 0 || indexOf < this.f21668c.indexOf(this.f21671f);
    }

    /* renamed from: b */
    public final void m18973b() {
        long c = m18970c();
        if (c <= 0) {
            return;
        }
        if (((Boolean) this.f21666a.m30291a(C2251d.C2256e.f8728p4)).booleanValue()) {
            C2384d.m29986a(c, this.f21666a, this);
        } else {
            C2423p.m29844a(c, this.f21666a, this);
        }
    }

    /* renamed from: b */
    public final boolean m18972b(C2246b bVar) {
        return this.f21671f == bVar;
    }

    /* renamed from: c */
    public final long m18970c() {
        return TimeUnit.SECONDS.toMillis(((Long) this.f21666a.m30291a(C2251d.C2256e.f8722o4)).longValue());
    }

    /* renamed from: c */
    public final boolean m18969c(C2246b bVar) {
        int indexOf = this.f21668c.indexOf(bVar);
        C2246b bVar2 = this.f21671f;
        boolean z = true;
        if (indexOf == (bVar2 != null ? this.f21668c.indexOf(bVar2) + 1 : 0)) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        m18980a(EnumC7034b.TIMER);
        m18973b();
    }
}
