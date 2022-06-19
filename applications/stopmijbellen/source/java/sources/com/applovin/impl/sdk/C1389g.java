package com.applovin.impl.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/g.class */
public class C1389g extends BroadcastReceiver implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    public static int f5230a = -1;

    /* renamed from: b */
    private final AudioManager f5231b;

    /* renamed from: c */
    private final Context f5232c;

    /* renamed from: d */
    private final C1408l f5233d;

    /* renamed from: e */
    private final Set<AbstractC1391a> f5234e = new HashSet();

    /* renamed from: f */
    private final Object f5235f = new Object();

    /* renamed from: g */
    private boolean f5236g;

    /* renamed from: h */
    private int f5237h;

    /* renamed from: com.applovin.impl.sdk.g$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/g$a.class */
    public interface AbstractC1391a {
        /* renamed from: a */
        void mo5591a(int i);
    }

    public C1389g(C1408l c1408l) {
        this.f5233d = c1408l;
        Context m5532K = c1408l.m5532K();
        this.f5232c = m5532K;
        this.f5231b = (AudioManager) m5532K.getSystemService("audio");
    }

    /* renamed from: a */
    public static boolean m5597a(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: b */
    private void m5595b() {
        this.f5233d.m5542A().m5116b("AudioSessionManager", "Observing ringer mode...");
        this.f5237h = f5230a;
        this.f5232c.registerReceiver(this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        this.f5233d.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        this.f5233d.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: b */
    private void m5594b(final int i) {
        if (this.f5236g) {
            return;
        }
        C1479t m5542A = this.f5233d.m5542A();
        m5542A.m5116b("AudioSessionManager", "Ringer mode is " + i);
        synchronized (this.f5235f) {
            for (final AbstractC1391a abstractC1391a : this.f5234e) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.g.1
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC1391a.mo5591a(i);
                    }
                });
            }
        }
    }

    /* renamed from: c */
    private void m5592c() {
        this.f5233d.m5542A().m5116b("AudioSessionManager", "Stopping observation of mute switch state...");
        this.f5232c.unregisterReceiver(this);
        this.f5233d.m5487ah().unregisterReceiver(this);
    }

    /* renamed from: a */
    public int m5598a() {
        return this.f5231b.getRingerMode();
    }

    /* renamed from: a */
    public void m5596a(AbstractC1391a abstractC1391a) {
        synchronized (this.f5235f) {
            if (this.f5234e.contains(abstractC1391a)) {
                return;
            }
            this.f5234e.add(abstractC1391a);
            if (this.f5234e.size() == 1) {
                m5595b();
            }
        }
    }

    /* renamed from: b */
    public void m5593b(AbstractC1391a abstractC1391a) {
        synchronized (this.f5235f) {
            if (!this.f5234e.contains(abstractC1391a)) {
                return;
            }
            this.f5234e.remove(abstractC1391a);
            if (this.f5234e.isEmpty()) {
                m5592c();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
            m5594b(this.f5231b.getRingerMode());
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f5236g = true;
            this.f5237h = this.f5231b.getRingerMode();
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            this.f5236g = false;
            if (this.f5237h == this.f5231b.getRingerMode()) {
                return;
            }
            this.f5237h = f5230a;
            m5594b(this.f5231b.getRingerMode());
        }
    }
}
