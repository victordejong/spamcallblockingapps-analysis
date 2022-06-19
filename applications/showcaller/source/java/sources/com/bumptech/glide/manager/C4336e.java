package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.bumptech.glide.manager.AbstractC4333c;
import com.bumptech.glide.p223p.C4382j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.manager.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/e.class */
public final class C4336e implements AbstractC4333c {

    /* renamed from: d */
    private final Context f13317d;

    /* renamed from: e */
    final AbstractC4333c.AbstractC4334a f13318e;

    /* renamed from: f */
    boolean f13319f;

    /* renamed from: g */
    private boolean f13320g;

    /* renamed from: h */
    private final BroadcastReceiver f13321h = new C4337a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.manager.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/e$a.class */
    public class C4337a extends BroadcastReceiver {
        C4337a() {
            C4336e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C4336e c4336e = C4336e.this;
            boolean z = c4336e.f13319f;
            c4336e.f13319f = c4336e.m22830j(context);
            if (z != C4336e.this.f13319f) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + C4336e.this.f13319f);
                }
                C4336e c4336e2 = C4336e.this;
                c4336e2.f13318e.mo22831a(c4336e2.f13319f);
            }
        }
    }

    public C4336e(Context context, AbstractC4333c.AbstractC4334a abstractC4334a) {
        this.f13317d = context.getApplicationContext();
        this.f13318e = abstractC4334a;
    }

    /* renamed from: k */
    private void m22829k() {
        if (this.f13320g) {
            return;
        }
        this.f13319f = m22830j(this.f13317d);
        try {
            this.f13317d.registerReceiver(this.f13321h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f13320g = true;
        } catch (SecurityException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return;
            }
            Log.w("ConnectivityMonitor", "Failed to register", e);
        }
    }

    /* renamed from: l */
    private void m22828l() {
        if (!this.f13320g) {
            return;
        }
        this.f13317d.unregisterReceiver(this.f13321h);
        this.f13320g = false;
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    /* renamed from: a */
    public void mo22567a() {
        m22828l();
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: j */
    boolean m22830j(Context context) {
        boolean z = true;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C4382j.m22719d((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                z = false;
            }
            return z;
        } catch (RuntimeException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return true;
            }
            Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onStart() {
        m22829k();
    }
}
