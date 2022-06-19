package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewl.class */
public final class zzewl implements zzevn<zzewm> {
    private final Context zza;
    private final String zzb;
    private final zzfxb zzc;

    public zzewl(zzcds zzcdsVar, Context context, String str, zzfxb zzfxbVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzfxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzewm> zzb() {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzewm(new JSONObject());
            }
        });
    }
}
