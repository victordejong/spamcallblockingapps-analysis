package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.ekb;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbv.class */
public final class zzbv {
    private Context zzaai;
    private boolean zzejc;
    private boolean zzzq = false;
    private final Map<BroadcastReceiver, IntentFilter> zzejb = new WeakHashMap();
    private final BroadcastReceiver zzeja = new zzby(this);

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.zzejb.entrySet()) {
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

    public final void initialize(Context context) {
        synchronized (this) {
            if (!this.zzzq) {
                Context applicationContext = context.getApplicationContext();
                this.zzaai = applicationContext;
                if (applicationContext == null) {
                    this.zzaai = context;
                }
                aq.a(this.zzaai);
                this.zzejc = ((Boolean) ekb.e().a(aq.bZ)).booleanValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                this.zzaai.registerReceiver(this.zzeja, intentFilter);
                this.zzzq = true;
            }
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.zzejc) {
                this.zzejb.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.zzejc) {
                this.zzejb.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }
}
