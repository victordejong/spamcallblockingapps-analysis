package com.bumptech.glide.p070c;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.bumptech.glide.p070c.AbstractC1364c;
import com.bumptech.glide.p077h.C1456i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.c.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/e.class */
public final class C1367e implements AbstractC1364c {

    /* renamed from: a */
    final AbstractC1364c.AbstractC1365a f4548a;

    /* renamed from: b */
    boolean f4549b;

    /* renamed from: c */
    private final Context f4550c;

    /* renamed from: d */
    private boolean f4551d;

    /* renamed from: e */
    private final BroadcastReceiver f4552e = new BroadcastReceiver() { // from class: com.bumptech.glide.c.e.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = C1367e.this.f4549b;
            C1367e.this.f4549b = C1367e.this.m17286a(context);
            if (z != C1367e.this.f4549b) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + C1367e.this.f4549b);
                }
                C1367e.this.f4548a.mo16948a(C1367e.this.f4549b);
            }
        }
    };

    public C1367e(Context context, AbstractC1364c.AbstractC1365a abstractC1365a) {
        this.f4550c = context.getApplicationContext();
        this.f4548a = abstractC1365a;
    }

    /* renamed from: a */
    private void m17287a() {
        if (this.f4551d) {
            return;
        }
        this.f4549b = m17286a(this.f4550c);
        try {
            this.f4550c.registerReceiver(this.f4552e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f4551d = true;
        } catch (SecurityException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return;
            }
            Log.w("ConnectivityMonitor", "Failed to register", e);
        }
    }

    /* renamed from: b */
    private void m17285b() {
        if (!this.f4551d) {
            return;
        }
        this.f4550c.unregisterReceiver(this.f4552e);
        this.f4551d = false;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    boolean m17286a(Context context) {
        boolean z;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C1456i.m16989a((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: c */
    public void mo16955c() {
        m17287a();
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: d */
    public void mo16953d() {
        m17285b();
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: e */
    public void mo16952e() {
    }
}
