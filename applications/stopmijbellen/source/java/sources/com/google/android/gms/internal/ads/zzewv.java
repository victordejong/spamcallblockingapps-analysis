package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewv.class */
public final class zzewv implements zzevn<zzeww> {
    public final zzfxb zza;
    public final Context zzb;
    public final zzban zzc;

    public zzewv(zzban zzbanVar, zzfxb zzfxbVar, Context context, byte[] bArr) {
        this.zzc = zzbanVar;
        this.zza = zzfxbVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeww> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeww(new JSONObject());
            }
        });
    }
}
