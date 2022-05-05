package com.bumptech.glide.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.bumptech.glide.d.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/e.class */
public final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    final c.a f3391a;

    /* renamed from: b  reason: collision with root package name */
    boolean f3392b;
    private final Context c;
    private boolean d;
    private final BroadcastReceiver e = new BroadcastReceiver() { // from class: com.bumptech.glide.d.e.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z = e.this.f3392b;
            e.this.f3392b = e.a(context);
            if (z != e.this.f3392b) {
                e.this.f3391a.a(e.this.f3392b);
            }
        }
    };

    public e(Context context, c.a aVar) {
        this.c = context.getApplicationContext();
        this.f3391a = aVar;
    }

    static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // com.bumptech.glide.d.h
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.d.h
    public final void onStart() {
        if (!this.d) {
            this.f3392b = a(this.c);
            this.c.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.d = true;
        }
    }

    @Override // com.bumptech.glide.d.h
    public final void onStop() {
        if (this.d) {
            this.c.unregisterReceiver(this.e);
            this.d = false;
        }
    }
}
