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
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: com.applovin.impl.sdk.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e.class */
public class C7054e extends BroadcastReceiver implements AppLovinBroadcastManager.Receiver {

    /* renamed from: h */
    public static int f21780h = -1;

    /* renamed from: a */
    public final AudioManager f21781a;

    /* renamed from: b */
    public final Context f21782b;

    /* renamed from: c */
    public final C2341l f21783c;

    /* renamed from: d */
    public final Set<AbstractC7056b> f21784d = new HashSet();

    /* renamed from: e */
    public final Object f21785e = new Object();

    /* renamed from: f */
    public boolean f21786f;

    /* renamed from: g */
    public int f21787g;

    /* renamed from: com.applovin.impl.sdk.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e$a.class */
    public class RunnableC7055a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC7056b f21788a;

        /* renamed from: b */
        public final /* synthetic */ int f21789b;

        public RunnableC7055a(C7054e eVar, AbstractC7056b bVar, int i) {
            this.f21788a = bVar;
            this.f21789b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21788a.onRingerModeChanged(this.f21789b);
        }
    }

    /* renamed from: com.applovin.impl.sdk.e$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e$b.class */
    public interface AbstractC7056b {
        void onRingerModeChanged(int i);
    }

    public C7054e(C2341l lVar) {
        this.f21783c = lVar;
        Context d = lVar.m30264d();
        this.f21782b = d;
        this.f21781a = (AudioManager) d.getSystemService("audio");
    }

    /* renamed from: b */
    public static boolean m18805b(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: a */
    public final void m18809a() {
        this.f21783c.m30262d0().m30044b("AudioSessionManager", "Observing ringer mode...");
        this.f21787g = f21780h;
        this.f21782b.registerReceiver(this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        this.f21783c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        this.f21783c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public final void m18808a(int i) {
        if (!this.f21786f) {
            C2374t d0 = this.f21783c.m30262d0();
            d0.m30044b("AudioSessionManager", "Ringer mode is " + i);
            synchronized (this.f21785e) {
                try {
                    for (AbstractC7056b bVar : this.f21784d) {
                        AppLovinSdkUtils.runOnUiThread(new RunnableC7055a(this, bVar, i));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public void m18807a(AbstractC7056b bVar) {
        synchronized (this.f21785e) {
            if (!this.f21784d.contains(bVar)) {
                this.f21784d.add(bVar);
                if (this.f21784d.size() == 1) {
                    m18809a();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m18806b() {
        this.f21783c.m30262d0().m30044b("AudioSessionManager", "Stopping observation of mute switch state...");
        this.f21782b.unregisterReceiver(this);
        this.f21783c.m30317E().unregisterReceiver(this);
    }

    /* renamed from: b */
    public void m18804b(AbstractC7056b bVar) {
        synchronized (this.f21785e) {
            if (this.f21784d.contains(bVar)) {
                this.f21784d.remove(bVar);
                if (this.f21784d.isEmpty()) {
                    m18806b();
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
            m18808a(this.f21781a.getRingerMode());
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f21786f = true;
            this.f21787g = this.f21781a.getRingerMode();
        } else if ("com.applovin.application_resumed".equals(action)) {
            this.f21786f = false;
            if (this.f21787g != this.f21781a.getRingerMode()) {
                this.f21787g = f21780h;
                m18808a(this.f21781a.getRingerMode());
            }
        }
    }
}
