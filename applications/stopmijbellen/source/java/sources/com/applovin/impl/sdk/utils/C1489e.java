package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1408l;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.utils.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/e.class */
public class C1489e implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private static final Set<C1489e> f5590a = new HashSet();

    /* renamed from: b */
    private final C1533n f5591b;

    /* renamed from: c */
    private final C1408l f5592c;

    private C1489e(long j, C1408l c1408l, final Runnable runnable) {
        this.f5591b = C1533n.m4965a(j, c1408l, new Runnable() { // from class: com.applovin.impl.sdk.utils.e.1
            @Override // java.lang.Runnable
            public void run() {
                C1489e.this.m5080a();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        this.f5592c = c1408l;
        f5590a.add(this);
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public static C1489e m5079a(long j, C1408l c1408l, Runnable runnable) {
        return new C1489e(j, c1408l, runnable);
    }

    /* renamed from: a */
    public void m5080a() {
        this.f5591b.m4958d();
        this.f5592c.m5487ah().unregisterReceiver(this);
        f5590a.remove(this);
    }

    /* renamed from: b */
    public long m5078b() {
        return this.f5591b.m4966a();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f5591b.m4962b();
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            this.f5591b.m4960c();
        }
    }
}
