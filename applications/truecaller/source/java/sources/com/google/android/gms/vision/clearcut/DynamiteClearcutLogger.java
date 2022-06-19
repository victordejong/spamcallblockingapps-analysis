package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.internal.vision.zzea;
import com.google.android.gms.vision.C2072L;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p193e.p1577m.p1578a.p1642f.p1671r.p1673b.RunnableC25148a;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/clearcut/DynamiteClearcutLogger.class */
public class DynamiteClearcutLogger {
    private static final ThreadPoolExecutor zzbn = new ThreadPoolExecutor(1, 2, 2, TimeUnit.SECONDS, new LinkedBlockingQueue(10), new ThreadPoolExecutor.DiscardPolicy());
    private zzb zzbo = new zzb();
    private VisionClearcutLogger zzbp;

    public DynamiteClearcutLogger(Context context) {
        this.zzbp = new VisionClearcutLogger(context);
    }

    public final void zza(int i, zzea.zzo zzoVar) {
        boolean z;
        if (i == 3) {
            zzb zzbVar = this.zzbo;
            synchronized (zzbVar.f6541b) {
                long currentTimeMillis = System.currentTimeMillis();
                if (zzbVar.f6542c + zzbVar.f6540a > currentTimeMillis) {
                    z = false;
                } else {
                    zzbVar.f6542c = currentTimeMillis;
                    z = true;
                }
            }
            if (!z) {
                C2072L.m38486v("Skipping image analysis log due to rate limiting", new Object[0]);
                return;
            }
        }
        zzbn.execute(new RunnableC25148a(this, i, zzoVar));
    }
}
