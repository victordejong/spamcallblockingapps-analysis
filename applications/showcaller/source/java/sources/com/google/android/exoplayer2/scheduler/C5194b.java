package com.google.android.exoplayer2.scheduler;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import com.google.android.exoplayer2.scheduler.C5194b;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.scheduler.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/b.class */
public final class C5194b {

    /* renamed from: a */
    private final Context f16293a;

    /* renamed from: b */
    private final AbstractC5197c f16294b;

    /* renamed from: c */
    private final Requirements f16295c;

    /* renamed from: d */
    private final Handler f16296d = new Handler(C5515h0.m18868D());

    /* renamed from: e */
    private C5196b f16297e;

    /* renamed from: f */
    private int f16298f;

    /* renamed from: g */
    private C5198d f16299g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.scheduler.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/b$b.class */
    public class C5196b extends BroadcastReceiver {
        private C5196b() {
            C5194b.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                C5194b.this.m20171d();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.scheduler.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/b$c.class */
    public interface AbstractC5197c {
        /* renamed from: a */
        void m20165a(C5194b c5194b, int i);
    }

    /* renamed from: com.google.android.exoplayer2.scheduler.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/b$d.class */
    public final class C5198d extends ConnectivityManager.NetworkCallback {

        /* renamed from: a */
        boolean f16301a;

        /* renamed from: b */
        boolean f16302b;

        private C5198d() {
            C5194b.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m20163b() {
            if (C5194b.this.f16299g != null) {
                C5194b.this.m20171d();
            }
        }

        /* renamed from: c */
        private void m20162c() {
            C5194b.this.f16296d.post(new Runnable() { // from class: com.google.android.exoplayer2.scheduler.a
                @Override // java.lang.Runnable
                public final void run() {
                    C5194b.C5198d.this.m20163b();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            m20162c();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean hasCapability = networkCapabilities.hasCapability(16);
            if (!this.f16301a || this.f16302b != hasCapability) {
                this.f16301a = true;
                this.f16302b = hasCapability;
                m20162c();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            m20162c();
        }
    }

    public C5194b(Context context, AbstractC5197c abstractC5197c, Requirements requirements) {
        this.f16293a = context.getApplicationContext();
        this.f16294b = abstractC5197c;
        this.f16295c = requirements;
    }

    /* renamed from: d */
    public void m20171d() {
        int m20184c = this.f16295c.m20184c(this.f16293a);
        if (this.f16298f != m20184c) {
            this.f16298f = m20184c;
            this.f16294b.m20165a(this, m20184c);
        }
    }

    @TargetApi(24)
    /* renamed from: f */
    private void m20169f() {
        ConnectivityManager connectivityManager = (ConnectivityManager) C5508e.m18911e((ConnectivityManager) this.f16293a.getSystemService("connectivity"));
        C5198d c5198d = new C5198d();
        this.f16299g = c5198d;
        connectivityManager.registerDefaultNetworkCallback(c5198d);
    }

    @TargetApi(24)
    /* renamed from: i */
    private void m20166i() {
        ((ConnectivityManager) this.f16293a.getSystemService("connectivity")).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) C5508e.m18911e(this.f16299g));
        this.f16299g = null;
    }

    /* renamed from: e */
    public Requirements m20170e() {
        return this.f16295c;
    }

    /* renamed from: g */
    public int m20168g() {
        this.f16298f = this.f16295c.m20184c(this.f16293a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f16295c.m20178i()) {
            if (C5515h0.f17876a >= 24) {
                m20169f();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f16295c.m20183d()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f16295c.m20180g()) {
            if (C5515h0.f17876a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        C5196b c5196b = new C5196b();
        this.f16297e = c5196b;
        this.f16293a.registerReceiver(c5196b, intentFilter, null, this.f16296d);
        return this.f16298f;
    }

    /* renamed from: h */
    public void m20167h() {
        this.f16293a.unregisterReceiver((BroadcastReceiver) C5508e.m18911e(this.f16297e));
        this.f16297e = null;
        if (C5515h0.f17876a < 24 || this.f16299g == null) {
            return;
        }
        m20166i();
    }
}
