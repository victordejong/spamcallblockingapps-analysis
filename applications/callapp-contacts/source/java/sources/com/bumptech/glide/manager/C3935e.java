package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.bumptech.glide.manager.AbstractC3932c;
import com.bumptech.glide.p116g.C3643j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.manager.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/e.class */
public final class C3935e implements AbstractC3932c {

    /* renamed from: a */
    final AbstractC3932c.AbstractC3933a f14370a;

    /* renamed from: b */
    boolean f14371b;

    /* renamed from: c */
    private final Context f14372c;

    /* renamed from: d */
    private boolean f14373d;

    /* renamed from: e */
    private final BroadcastReceiver f14374e = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.e.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z = C3935e.this.f14371b;
            C3935e.this.f14371b = C3935e.m37177a(context);
            if (z != C3935e.this.f14371b) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    new StringBuilder("connectivity changed, isConnected: ").append(C3935e.this.f14371b);
                }
                C3935e.this.f14370a.mo37178a(C3935e.this.f14371b);
            }
        }
    };

    public C3935e(Context context, AbstractC3932c.AbstractC3933a abstractC3933a) {
        this.f14372c = context.getApplicationContext();
        this.f14370a = abstractC3933a;
    }

    /* renamed from: a */
    static boolean m37177a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C3643j.m37588a((ConnectivityManager) context.getSystemService("connectivity"), "Argument must not be null")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return true;
            }
            Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
        if (!this.f14373d) {
            this.f14371b = m37177a(this.f14372c);
            try {
                this.f14372c.registerReceiver(this.f14374e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f14373d = true;
            } catch (SecurityException e) {
                if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                    return;
                }
                Log.w("ConnectivityMonitor", "Failed to register", e);
            }
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
        if (this.f14373d) {
            this.f14372c.unregisterReceiver(this.f14374e);
            this.f14373d = false;
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
    }
}
