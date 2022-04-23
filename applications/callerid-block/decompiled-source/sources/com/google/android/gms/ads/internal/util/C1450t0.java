package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.ads.internal.util.t0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/t0.class */
public final class C1450t0 {

    /* renamed from: d */
    private boolean f5634d;

    /* renamed from: e */
    private Context f5635e;

    /* renamed from: c */
    private boolean f5633c = false;
    @GuardedBy("this")

    /* renamed from: b */
    private final Map<BroadcastReceiver, IntentFilter> f5632b = new WeakHashMap();
    @GuardedBy("this")

    /* renamed from: a */
    private final BroadcastReceiver f5631a = new C1448s0(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void m8720e(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f5632b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((BroadcastReceiver) arrayList.get(i)).onReceive(context, intent);
            }
        }
    }

    /* renamed from: a */
    public final void m8724a(Context context) {
        synchronized (this) {
            if (!this.f5633c) {
                Context applicationContext = context.getApplicationContext();
                this.f5635e = applicationContext;
                if (applicationContext == null) {
                    this.f5635e = context;
                }
                C1842m3.m6600a(this.f5635e);
                this.f5634d = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7324S1)).booleanValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                this.f5635e.registerReceiver(this.f5631a, intentFilter);
                this.f5633c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m8723b(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.f5634d) {
                this.f5632b.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }

    /* renamed from: c */
    public final void m8722c(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.f5634d) {
                this.f5632b.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }
}
