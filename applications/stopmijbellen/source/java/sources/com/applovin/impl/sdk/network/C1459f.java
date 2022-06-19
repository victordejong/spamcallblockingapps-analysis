package com.applovin.impl.sdk.network;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.network.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/f.class */
public class C1459f {

    /* renamed from: a */
    private final C1408l f5493a;

    /* renamed from: b */
    private final C1479t f5494b;

    /* renamed from: c */
    private final int f5495c;

    /* renamed from: d */
    private final C1463g f5496d;

    /* renamed from: f */
    private final ArrayList<C1464h> f5498f;

    /* renamed from: e */
    private final Object f5497e = new Object();

    /* renamed from: g */
    private final ArrayList<C1464h> f5499g = new ArrayList<>();

    /* renamed from: h */
    private long f5500h = 0;

    /* renamed from: i */
    private final Set<C1464h> f5501i = new HashSet();

    public C1459f(C1408l c1408l) {
        if (c1408l != null) {
            this.f5493a = c1408l;
            this.f5494b = c1408l.m5542A();
            int intValue = ((Integer) c1408l.m5511a(C1314b.f4836cM)).intValue();
            this.f5495c = intValue;
            C1463g c1463g = new C1463g(this, c1408l);
            this.f5496d = c1463g;
            this.f5498f = c1463g.m5238a(intValue);
            c1463g.m5239a();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public void m5256a(final C1464h c1464h, final AppLovinPostbackListener appLovinPostbackListener) {
        C1479t c1479t = this.f5494b;
        c1479t.m5116b("PersistentPostbackManager", "Preparing to submit postback..." + c1464h);
        if (this.f5493a.m5473c()) {
            this.f5494b.m5116b("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
            return;
        }
        synchronized (this.f5497e) {
            if (this.f5501i.contains(c1464h)) {
                C1479t c1479t2 = this.f5494b;
                c1479t2.m5116b("PersistentPostbackManager", "Skip pending postback: " + c1464h.m5235b());
                return;
            }
            c1464h.m5225l();
            m5245d();
            int intValue = ((Integer) this.f5493a.m5511a(C1314b.f4834cK)).intValue();
            if (c1464h.m5226k() <= intValue) {
                synchronized (this.f5497e) {
                    this.f5501i.add(c1464h);
                }
                this.f5493a.m5520W().dispatchPostbackRequest(C1467i.m5200b(this.f5493a).mo5192a(c1464h.m5235b()).mo5181c(c1464h.m5234c()).mo5191a(c1464h.m5233d()).mo5185b(c1464h.m5236a()).mo5184b(c1464h.m5232e()).mo5190a(c1464h.m5231f() != null ? new JSONObject(c1464h.m5231f()) : null).mo5175d(c1464h.m5229h()).mo5179c(c1464h.m5230g()).m5167g(c1464h.m5228i()).m5168g(c1464h.m5227j()).mo5196a(), new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.network.f.2
                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackFailure(String str, int i) {
                        C1479t c1479t3 = C1459f.this.f5494b;
                        StringBuilder m8751k = C0082b.m8751k("Failed to submit postback with errorCode ", i, ". Will retry later...  Postback: ");
                        m8751k.append(c1464h);
                        c1479t3.m5114c("PersistentPostbackManager", m8751k.toString());
                        C1459f.this.m5240e(c1464h);
                        C1496j.m5011a(appLovinPostbackListener, str, i);
                    }

                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackSuccess(String str) {
                        C1459f.this.m5242d(c1464h);
                        C1479t c1479t3 = C1459f.this.f5494b;
                        StringBuilder m8752j = C0082b.m8752j("Successfully submitted postback: ");
                        m8752j.append(c1464h);
                        c1479t3.m5116b("PersistentPostbackManager", m8752j.toString());
                        C1459f.this.m5241e();
                        C1496j.m5012a(appLovinPostbackListener, str);
                    }
                });
                return;
            }
            C1479t c1479t3 = this.f5494b;
            c1479t3.m5112d("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + intValue + ". Dequeuing postback: " + c1464h);
            m5242d(c1464h);
        }
    }

    /* renamed from: b */
    public void m5250b(C1464h c1464h) {
        synchronized (this.f5497e) {
            while (this.f5498f.size() > this.f5495c) {
                this.f5498f.remove(0);
            }
            this.f5498f.add(c1464h);
            m5245d();
            if (this.f5494b.m5122a()) {
                C1479t c1479t = this.f5494b;
                c1479t.m5116b("PersistentPostbackManager", "Enqueued postback: " + c1464h);
            }
        }
    }

    /* renamed from: c */
    public void m5246c(C1464h c1464h) {
        m5256a(c1464h, (AppLovinPostbackListener) null);
    }

    /* renamed from: d */
    private void m5245d() {
        this.f5500h = System.currentTimeMillis();
    }

    /* renamed from: d */
    public void m5242d(C1464h c1464h) {
        synchronized (this.f5497e) {
            this.f5501i.remove(c1464h);
            this.f5498f.remove(c1464h);
            m5245d();
        }
        C1479t c1479t = this.f5494b;
        c1479t.m5116b("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + c1464h);
    }

    /* renamed from: e */
    public void m5241e() {
        synchronized (this.f5497e) {
            Iterator<C1464h> it2 = this.f5499g.iterator();
            while (it2.hasNext()) {
                m5246c(it2.next());
            }
            this.f5499g.clear();
        }
    }

    /* renamed from: e */
    public void m5240e(C1464h c1464h) {
        synchronized (this.f5497e) {
            this.f5501i.remove(c1464h);
            this.f5499g.add(c1464h);
        }
    }

    /* renamed from: a */
    public long m5261a() {
        return this.f5500h;
    }

    /* renamed from: a */
    public void m5257a(C1464h c1464h) {
        m5255a(c1464h, true);
    }

    /* renamed from: a */
    public void m5255a(C1464h c1464h, boolean z) {
        m5254a(c1464h, z, (AppLovinPostbackListener) null);
    }

    /* renamed from: a */
    public void m5254a(final C1464h c1464h, boolean z, final AppLovinPostbackListener appLovinPostbackListener) {
        if (!StringUtils.isValidString(c1464h.m5235b())) {
            return;
        }
        if (z) {
            c1464h.m5224m();
        }
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.sdk.network.f.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C1459f.this.f5497e) {
                    C1459f.this.m5250b(c1464h);
                    C1459f.this.m5256a(c1464h, appLovinPostbackListener);
                }
            }
        };
        if (!Utils.isMainThread()) {
            runnable.run();
            return;
        }
        this.f5493a.m5525R().m5653a(new C1387z(this.f5493a, runnable), C1362o.EnumC1364a.POSTBACKS);
    }

    /* renamed from: b */
    public List<C1464h> m5253b() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f5497e) {
            arrayList.ensureCapacity(this.f5498f.size());
            arrayList.addAll(this.f5498f);
        }
        return arrayList;
    }

    /* renamed from: c */
    public void m5249c() {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.sdk.network.f.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C1459f.this.f5497e) {
                    if (C1459f.this.f5498f != null) {
                        Iterator it2 = new ArrayList(C1459f.this.f5498f).iterator();
                        while (it2.hasNext()) {
                            C1459f.this.m5246c((C1464h) it2.next());
                        }
                    }
                }
            }
        };
        if (!((Boolean) this.f5493a.m5511a(C1314b.f4835cL)).booleanValue()) {
            runnable.run();
            return;
        }
        this.f5493a.m5525R().m5653a(new C1387z(this.f5493a, runnable), C1362o.EnumC1364a.POSTBACKS);
    }
}
