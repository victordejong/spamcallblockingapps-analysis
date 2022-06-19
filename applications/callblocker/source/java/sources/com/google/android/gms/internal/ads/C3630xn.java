package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.xn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xn.class */
public final class C3630xn {

    /* renamed from: d */
    private boolean f17601d;

    /* renamed from: e */
    private Context f17602e;

    /* renamed from: c */
    private boolean f17600c = false;
    @GuardedBy("this")

    /* renamed from: b */
    private final Map<BroadcastReceiver, IntentFilter> f17599b = new WeakHashMap();
    @GuardedBy("this")

    /* renamed from: a */
    private final BroadcastReceiver f17598a = new C3629xm(this);

    /* renamed from: a */
    public final void m6815a(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f17599b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                ((BroadcastReceiver) obj).onReceive(context, intent);
            }
        }
    }

    /* renamed from: a */
    public final void m6818a(Context context) {
        synchronized (this) {
            if (!this.f17600c) {
                this.f17602e = context.getApplicationContext();
                if (this.f17602e == null) {
                    this.f17602e = context;
                }
                edi.m7866a(this.f17602e);
                this.f17601d = ((Boolean) dyx.m8158e().m7876a(edi.f16446bz)).booleanValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                this.f17602e.registerReceiver(this.f17598a, intentFilter);
                this.f17600c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m6817a(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.f17601d) {
                this.f17599b.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }

    /* renamed from: a */
    public final void m6816a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.f17601d) {
                this.f17599b.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }
}
