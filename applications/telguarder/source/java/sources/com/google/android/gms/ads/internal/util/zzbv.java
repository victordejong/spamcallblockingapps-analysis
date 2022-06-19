package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbv.class */
public final class zzbv {
    private Context zzaad;
    private boolean zzegz;
    private boolean zzzl = false;
    private final Map<BroadcastReceiver, IntentFilter> zzegy = new WeakHashMap();
    private final BroadcastReceiver zzegx = new zzby(this);

    public final void zzc(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.zzegy.entrySet()) {
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
            if (this.zzzl) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            this.zzaad = applicationContext;
            if (applicationContext == null) {
                this.zzaad = context;
            }
            zzabp.initialize(this.zzaad);
            this.zzegz = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcth)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzaad.registerReceiver(this.zzegx, intentFilter);
            this.zzzl = true;
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.zzegz) {
                this.zzegy.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.zzegz) {
                this.zzegy.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }
}
