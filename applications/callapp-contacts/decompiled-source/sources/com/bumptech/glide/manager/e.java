package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.bumptech.glide.g.j;
import com.bumptech.glide.manager.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/e.class */
final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    final c.a f7756a;

    /* renamed from: b  reason: collision with root package name */
    boolean f7757b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f7758c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7759d;
    private final BroadcastReceiver e = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.e.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z = e.this.f7757b;
            e.this.f7757b = e.a(context);
            if (z != e.this.f7757b) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    new StringBuilder("connectivity changed, isConnected: ").append(e.this.f7757b);
                }
                e.this.f7756a.a(e.this.f7757b);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, c.a aVar) {
        this.f7758c = context.getApplicationContext();
        this.f7756a = aVar;
    }

    static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) j.a((ConnectivityManager) context.getSystemService("connectivity"), "Argument must not be null")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return true;
            }
            Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void a() {
        if (!this.f7759d) {
            this.f7757b = a(this.f7758c);
            try {
                this.f7758c.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f7759d = true;
            } catch (SecurityException e) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register", e);
                }
            }
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
        if (this.f7759d) {
            this.f7758c.unregisterReceiver(this.e);
            this.f7759d = false;
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
    }
}
