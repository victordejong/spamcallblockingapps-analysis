package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.utils.C1533n;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b.class */
public class C1294b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private final C1408l f4621a;

    /* renamed from: b */
    private final AbstractC1296a f4622b;

    /* renamed from: c */
    private C1533n f4623c;

    /* renamed from: d */
    private final Object f4624d = new Object();

    /* renamed from: e */
    private long f4625e;

    /* renamed from: com.applovin.impl.sdk.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b$a.class */
    public interface AbstractC1296a {
        void onAdExpired();
    }

    public C1294b(C1408l c1408l, AbstractC1296a abstractC1296a) {
        this.f4621a = c1408l;
        this.f4622b = abstractC1296a;
    }

    /* renamed from: b */
    private void m5883b() {
        C1533n c1533n = this.f4623c;
        if (c1533n != null) {
            c1533n.m4958d();
            this.f4623c = null;
        }
    }

    /* renamed from: c */
    private void m5882c() {
        synchronized (this.f4624d) {
            m5883b();
        }
    }

    /* renamed from: d */
    private void m5881d() {
        boolean z;
        synchronized (this.f4624d) {
            long currentTimeMillis = this.f4625e - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                m5886a();
                z = true;
            } else {
                m5885a(currentTimeMillis);
                z = false;
            }
        }
        if (z) {
            this.f4622b.onAdExpired();
        }
    }

    /* renamed from: a */
    public void m5886a() {
        synchronized (this.f4624d) {
            m5883b();
            this.f4621a.m5487ah().unregisterReceiver(this);
        }
    }

    /* renamed from: a */
    public void m5885a(long j) {
        synchronized (this.f4624d) {
            m5886a();
            this.f4625e = System.currentTimeMillis() + j;
            this.f4621a.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
            this.f4621a.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
            if (((Boolean) this.f4621a.m5511a(C1313a.f4669D)).booleanValue() || !this.f4621a.m5493ab().m4918a()) {
                this.f4623c = C1533n.m4965a(j, this.f4621a, new Runnable() { // from class: com.applovin.impl.sdk.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1294b.this.m5886a();
                        C1294b.this.f4622b.onAdExpired();
                    }
                });
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            m5882c();
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            m5881d();
        }
    }
}
