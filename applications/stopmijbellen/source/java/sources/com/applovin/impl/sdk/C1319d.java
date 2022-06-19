package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.utils.C1533n;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.sdk.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d.class */
public class C1319d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private C1533n f5017a;

    /* renamed from: b */
    private final Object f5018b = new Object();

    /* renamed from: c */
    private final AtomicBoolean f5019c = new AtomicBoolean();

    /* renamed from: d */
    private boolean f5020d;

    /* renamed from: e */
    private final C1408l f5021e;

    /* renamed from: f */
    private final WeakReference<AbstractC1321a> f5022f;

    /* renamed from: g */
    private long f5023g;

    /* renamed from: com.applovin.impl.sdk.d$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d$a.class */
    public interface AbstractC1321a {
        void onAdRefresh();
    }

    public C1319d(C1408l c1408l, AbstractC1321a abstractC1321a) {
        this.f5022f = new WeakReference<>(abstractC1321a);
        this.f5021e = c1408l;
    }

    /* renamed from: i */
    private void m5788i() {
        synchronized (this.f5018b) {
            C1533n c1533n = this.f5017a;
            if (c1533n != null) {
                c1533n.m4962b();
            } else {
                this.f5021e.m5542A().m5116b("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                this.f5019c.set(true);
            }
        }
    }

    /* renamed from: j */
    private void m5787j() {
        synchronized (this.f5018b) {
            C1533n c1533n = this.f5017a;
            if (c1533n != null) {
                c1533n.m4960c();
            } else {
                this.f5019c.set(false);
            }
        }
    }

    /* renamed from: k */
    public void m5786k() {
        synchronized (this.f5018b) {
            this.f5017a = null;
            if (!((Boolean) this.f5021e.m5511a(C1313a.f4706s)).booleanValue()) {
                this.f5021e.m5487ah().unregisterReceiver(this);
            }
        }
    }

    /* renamed from: l */
    private void m5785l() {
        if (((Boolean) this.f5021e.m5511a(C1313a.f4705r)).booleanValue()) {
            m5788i();
        }
    }

    /* renamed from: m */
    private void m5784m() {
        if (((Boolean) this.f5021e.m5511a(C1313a.f4705r)).booleanValue()) {
            synchronized (this.f5018b) {
                if (this.f5020d) {
                    this.f5021e.m5542A().m5116b("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                } else if (this.f5021e.m5493ab().m4918a()) {
                    this.f5021e.m5542A().m5116b("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                } else {
                    C1533n c1533n = this.f5017a;
                    if (c1533n != null) {
                        c1533n.m4960c();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m5798a(long j) {
        synchronized (this.f5018b) {
            m5794c();
            this.f5023g = j;
            this.f5017a = C1533n.m4965a(j, this.f5021e, new Runnable() { // from class: com.applovin.impl.sdk.d.1
                @Override // java.lang.Runnable
                public void run() {
                    C1319d.this.m5786k();
                    AbstractC1321a abstractC1321a = (AbstractC1321a) C1319d.this.f5022f.get();
                    if (abstractC1321a != null) {
                        abstractC1321a.onAdRefresh();
                    }
                }
            });
            if (!((Boolean) this.f5021e.m5511a(C1313a.f4706s)).booleanValue()) {
                this.f5021e.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
                this.f5021e.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
                this.f5021e.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                this.f5021e.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
            }
            if (((Boolean) this.f5021e.m5511a(C1313a.f4705r)).booleanValue() && (this.f5021e.m5492ac().m5136b() || this.f5021e.m5493ab().m4918a())) {
                this.f5017a.m4962b();
            }
            if (this.f5019c.compareAndSet(true, false) && ((Boolean) this.f5021e.m5511a(C1313a.f4707t)).booleanValue()) {
                this.f5021e.m5542A().m5116b("AdRefreshManager", "Pausing refresh for a previous request.");
                this.f5017a.m4962b();
            }
        }
    }

    /* renamed from: a */
    public boolean m5799a() {
        boolean z;
        synchronized (this.f5018b) {
            z = this.f5017a != null;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: b */
    public long m5796b() {
        char m4966a;
        synchronized (this.f5018b) {
            C1533n c1533n = this.f5017a;
            m4966a = c1533n != null ? c1533n.m4966a() : (char) 65535;
        }
        return m4966a;
    }

    /* renamed from: c */
    public void m5794c() {
        synchronized (this.f5018b) {
            C1533n c1533n = this.f5017a;
            if (c1533n != null) {
                c1533n.m4958d();
                m5786k();
            }
        }
    }

    /* renamed from: d */
    public void m5793d() {
        synchronized (this.f5018b) {
            m5788i();
            this.f5020d = true;
        }
    }

    /* renamed from: e */
    public void m5792e() {
        synchronized (this.f5018b) {
            m5787j();
            this.f5020d = false;
        }
    }

    /* renamed from: f */
    public boolean m5791f() {
        return this.f5020d;
    }

    /* renamed from: g */
    public void m5790g() {
        if (((Boolean) this.f5021e.m5511a(C1313a.f4704q)).booleanValue()) {
            m5788i();
        }
    }

    /* renamed from: h */
    public void m5789h() {
        AbstractC1321a abstractC1321a;
        if (((Boolean) this.f5021e.m5511a(C1313a.f4704q)).booleanValue()) {
            synchronized (this.f5018b) {
                if (this.f5020d) {
                    this.f5021e.m5542A().m5116b("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                } else if (this.f5021e.m5492ac().m5136b()) {
                    this.f5021e.m5542A().m5116b("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                } else {
                    boolean z = false;
                    if (this.f5017a != null) {
                        long j = this.f5023g;
                        long m5796b = m5796b();
                        long longValue = ((Long) this.f5021e.m5511a(C1313a.f4703p)).longValue();
                        if (longValue < 0 || j - m5796b <= longValue) {
                            this.f5017a.m4960c();
                            z = false;
                        } else {
                            m5794c();
                            z = true;
                        }
                    }
                    if (!z || (abstractC1321a = this.f5022f.get()) == null) {
                        return;
                    }
                    abstractC1321a.onAdRefresh();
                }
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            m5790g();
        } else if ("com.applovin.application_resumed".equals(action)) {
            m5789h();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            m5785l();
        } else if (!"com.applovin.fullscreen_ad_hidden".equals(action)) {
        } else {
            m5784m();
        }
    }
}
