package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfb.class */
public final class zzfb {
    private static zzfb zza;
    private final Handler zzb = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList<WeakReference<zztl>> zzc = new CopyOnWriteArrayList<>();
    private final Object zzd = new Object();
    private int zze = 0;

    private zzfb(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new zzey(this, null), intentFilter);
    }

    public static zzfb zzb(Context context) {
        zzfb zzfbVar;
        synchronized (zzfb.class) {
            try {
                if (zza == null) {
                    zza = new zzfb(context);
                }
                zzfbVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfbVar;
    }

    public static /* synthetic */ void zzc(zzfb zzfbVar, int i) {
        synchronized (zzfbVar.zzd) {
            if (zzfbVar.zze == i) {
                return;
            }
            zzfbVar.zze = i;
            Iterator<WeakReference<zztl>> it2 = zzfbVar.zzc.iterator();
            while (it2.hasNext()) {
                WeakReference<zztl> next = it2.next();
                zztl zztlVar = next.get();
                if (zztlVar != null) {
                    zztlVar.zza.zzk(i);
                } else {
                    zzfbVar.zzc.remove(next);
                }
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.zzd) {
            i = this.zze;
        }
        return i;
    }

    public final void zzd(zztl zztlVar) {
        Iterator<WeakReference<zztl>> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            WeakReference<zztl> next = it2.next();
            if (next.get() == null) {
                this.zzc.remove(next);
            }
        }
        this.zzc.add(new WeakReference<>(zztlVar));
        this.zzb.post(new Runnable(zztlVar, null) { // from class: com.google.android.gms.internal.ads.zzev
            public final /* synthetic */ zztl zzb;

            @Override // java.lang.Runnable
            public final void run() {
                zzfb zzfbVar = zzfb.this;
                zztl zztlVar2 = this.zzb;
                zztlVar2.zza.zzk(zzfbVar.zza());
            }
        });
    }
}
