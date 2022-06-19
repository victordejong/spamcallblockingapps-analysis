package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.ads.internal.util.k1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/k1.class */
public final class C5710k1 {

    /* renamed from: d */
    private boolean f18499d;

    /* renamed from: e */
    private Context f18500e;

    /* renamed from: c */
    private boolean f18498c = false;

    /* renamed from: b */
    private final Map<BroadcastReceiver, IntentFilter> f18497b = new WeakHashMap();

    /* renamed from: a */
    private final BroadcastReceiver f18496a = new C5706j1(this);

    /* renamed from: e */
    public final void m18002e(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f18497b.entrySet()) {
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
    public final void m18006a(Context context) {
        synchronized (this) {
            if (this.f18498c) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            this.f18500e = applicationContext;
            if (applicationContext == null) {
                this.f18500e = context;
            }
            C6679kw.m13770a(this.f18500e);
            this.f18499d = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25753n2)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f18500e.registerReceiver(this.f18496a, intentFilter);
            this.f18498c = true;
        }
    }

    /* renamed from: b */
    public final void m18005b(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.f18499d) {
                this.f18497b.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }

    /* renamed from: c */
    public final void m18004c(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.f18499d) {
                this.f18497b.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }
}
