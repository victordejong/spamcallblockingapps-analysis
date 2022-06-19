package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaua.class */
public final class zzaua implements Callable<zzatz> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzaub zzdyv;

    public zzaua(zzaub zzaubVar, Context context) {
        this.zzdyv = zzaubVar;
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzatz call() {
        WeakHashMap weakHashMap;
        zzatz zzatzVar;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzdyv.zzdyw;
        zzaud zzaudVar = (zzaud) weakHashMap.get(this.val$context);
        if (zzaudVar != null) {
            if (!(zzaudVar.zzdyz + zzada.zzdcn.get().longValue() < zzr.zzky().currentTimeMillis())) {
                zzatzVar = new zzaty(this.val$context, zzaudVar.zzdza).zzws();
                weakHashMap2 = this.zzdyv.zzdyw;
                weakHashMap2.put(this.val$context, new zzaud(this.zzdyv, zzatzVar));
                return zzatzVar;
            }
        }
        zzatzVar = new zzaty(this.val$context).zzws();
        weakHashMap2 = this.zzdyv.zzdyw;
        weakHashMap2.put(this.val$context, new zzaud(this.zzdyv, zzatzVar));
        return zzatzVar;
    }
}
