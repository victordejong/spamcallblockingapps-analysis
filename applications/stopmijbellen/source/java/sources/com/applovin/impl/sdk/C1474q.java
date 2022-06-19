package com.applovin.impl.sdk;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.sdk.q */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/q.class */
public class C1474q {

    /* renamed from: a */
    private final C1408l f5552a;

    /* renamed from: c */
    private long f5554c;

    /* renamed from: f */
    private long f5557f;

    /* renamed from: g */
    private Object f5558g;

    /* renamed from: b */
    private final AtomicBoolean f5553b = new AtomicBoolean();

    /* renamed from: d */
    private final Object f5555d = new Object();

    /* renamed from: e */
    private final AtomicBoolean f5556e = new AtomicBoolean();

    public C1474q(C1408l c1408l) {
        this.f5552a = c1408l;
    }

    /* renamed from: a */
    public void m5138a(final Object obj) {
        if (!C1107c.m6455a(obj) && this.f5553b.compareAndSet(false, true)) {
            this.f5558g = obj;
            this.f5554c = System.currentTimeMillis();
            C1479t m5542A = this.f5552a.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Setting fullscreen ad displayed: ");
            m8752j.append(this.f5554c);
            m5542A.m5116b("FullScreenAdTracker", m8752j.toString());
            this.f5552a.m5487ah().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final long longValue = ((Long) this.f5552a.m5511a(C1314b.f4856cg)).longValue();
            if (longValue < 0) {
                return;
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.q.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C1474q.this.f5553b.get() && System.currentTimeMillis() - C1474q.this.f5554c >= longValue) {
                        C1474q.this.f5552a.m5542A().m5116b("FullScreenAdTracker", "Resetting \"display\" state...");
                        C1474q.this.m5134b(obj);
                    }
                }
            }, longValue);
        }
    }

    /* renamed from: a */
    public void m5137a(boolean z) {
        synchronized (this.f5555d) {
            this.f5556e.set(z);
            if (z) {
                this.f5557f = System.currentTimeMillis();
                C1479t m5542A = this.f5552a.m5542A();
                m5542A.m5116b("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f5557f);
                final long longValue = ((Long) this.f5552a.m5511a(C1314b.f4855cf)).longValue();
                if (longValue >= 0) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.q.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (C1474q.this.m5140a() && System.currentTimeMillis() - C1474q.this.f5557f >= longValue) {
                                C1474q.this.f5552a.m5542A().m5116b("FullScreenAdTracker", "Resetting \"pending display\" state...");
                                C1474q.this.f5556e.set(false);
                            }
                        }
                    }, longValue);
                }
            } else {
                this.f5557f = 0L;
                C1479t m5542A2 = this.f5552a.m5542A();
                m5542A2.m5116b("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
            }
        }
    }

    /* renamed from: a */
    public boolean m5140a() {
        return this.f5556e.get();
    }

    /* renamed from: b */
    public void m5134b(Object obj) {
        if (!C1107c.m6455a(obj) && this.f5553b.compareAndSet(true, false)) {
            this.f5558g = null;
            C1479t m5542A = this.f5552a.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Setting fullscreen ad hidden: ");
            m8752j.append(System.currentTimeMillis());
            m5542A.m5116b("FullScreenAdTracker", m8752j.toString());
            this.f5552a.m5487ah().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    /* renamed from: b */
    public boolean m5136b() {
        return this.f5553b.get();
    }

    /* renamed from: c */
    public Object m5133c() {
        return this.f5558g;
    }
}
