package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.applovin.impl.sdk.w */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/w.class */
public class C1544w {

    /* renamed from: b */
    private static final AtomicBoolean f5726b = new AtomicBoolean();

    /* renamed from: a */
    public final C1408l f5727a;

    /* renamed from: c */
    private final AtomicBoolean f5728c = new AtomicBoolean();

    /* renamed from: d */
    private final AtomicBoolean f5729d = new AtomicBoolean();

    /* renamed from: e */
    private final AtomicInteger f5730e = new AtomicInteger();

    /* renamed from: f */
    private Date f5731f;

    /* renamed from: g */
    private Date f5732g;

    public C1544w(final C1408l c1408l) {
        this.f5727a = c1408l;
        final Application application = (Application) c1408l.m5532K();
        application.registerActivityLifecycleCallbacks(new AbstractC1485a() { // from class: com.applovin.impl.sdk.w.1
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                super.onActivityResumed(activity);
                C1544w.this.m4911e();
            }
        });
        application.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.applovin.impl.sdk.w.2
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i) {
                C1544w.this.f5730e.set(i);
                if (i == 20) {
                    C1544w.this.m4910f();
                }
            }
        });
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new BroadcastReceiver() { // from class: com.applovin.impl.sdk.w.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    if (!Utils.isCurrentProcessInForeground()) {
                        return;
                    }
                    C1544w.this.m4911e();
                } else if (!"android.intent.action.SCREEN_OFF".equals(action)) {
                } else {
                    C1544w.this.m4910f();
                }
            }
        }, intentFilter);
        if (!((Boolean) c1408l.m5511a(C1314b.f4865cp)).booleanValue() || !f5726b.compareAndSet(false, true)) {
            return;
        }
        final Intent intent = new Intent(application, AppKilledService.class);
        application.startService(intent);
        c1408l.m5487ah().registerReceiver(new AppLovinBroadcastManager.Receiver() { // from class: com.applovin.impl.sdk.w.4
            @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
            public void onReceive(Context context, Intent intent2, Map<String, Object> map) {
                application.stopService(intent);
                c1408l.m5487ah().unregisterReceiver(this);
            }
        }, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
    }

    /* renamed from: e */
    public void m4911e() {
        if (this.f5729d.compareAndSet(true, false)) {
            m4908h();
        }
    }

    /* renamed from: f */
    public void m4910f() {
        if (this.f5729d.compareAndSet(false, true)) {
            m4909g();
        }
    }

    /* renamed from: g */
    private void m4909g() {
        this.f5727a.m5542A().m5116b("SessionTracker", "Application Paused");
        this.f5727a.m5487ah().sendBroadcastSync(new Intent("com.applovin.application_paused"), null);
        if (this.f5728c.get()) {
            return;
        }
        boolean booleanValue = ((Boolean) this.f5727a.m5511a(C1314b.f4913dl)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.f5727a.m5511a(C1314b.f4915dn)).longValue());
        if (this.f5731f == null || System.currentTimeMillis() - this.f5731f.getTime() >= millis) {
            ((EventServiceImpl) this.f5727a.m5447w()).trackEvent("paused");
            if (booleanValue) {
                this.f5731f = new Date();
            }
        }
        if (booleanValue) {
            return;
        }
        this.f5731f = new Date();
    }

    /* renamed from: h */
    private void m4908h() {
        this.f5727a.m5542A().m5116b("SessionTracker", "Application Resumed");
        boolean booleanValue = ((Boolean) this.f5727a.m5511a(C1314b.f4913dl)).booleanValue();
        long longValue = ((Long) this.f5727a.m5511a(C1314b.f4914dm)).longValue();
        this.f5727a.m5487ah().sendBroadcastSync(new Intent("com.applovin.application_resumed"), null);
        if (this.f5728c.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(longValue);
        if (this.f5732g == null || System.currentTimeMillis() - this.f5732g.getTime() >= millis) {
            ((EventServiceImpl) this.f5727a.m5447w()).trackEvent("resumed");
            if (booleanValue) {
                this.f5732g = new Date();
            }
        }
        if (!booleanValue) {
            this.f5732g = new Date();
        }
        this.f5727a.m5524S().m5741a(C1328f.f5091k);
    }

    /* renamed from: a */
    public boolean m4918a() {
        return this.f5729d.get();
    }

    /* renamed from: b */
    public int m4916b() {
        return this.f5730e.get();
    }

    /* renamed from: c */
    public void m4914c() {
        this.f5728c.set(true);
    }

    /* renamed from: d */
    public void m4912d() {
        this.f5728c.set(false);
    }
}
