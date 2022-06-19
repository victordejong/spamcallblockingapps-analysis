package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetg.class */
public final class zzetg implements zzery<zzeth> {
    public final zzfsn zza;
    public final Context zzb;
    public final zzayq zzc;

    public zzetg(zzayq zzayqVar, zzfsn zzfsnVar, Context context, byte[] bArr) {
        this.zzc = zzayqVar;
        this.zza = zzfsnVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeth> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzetf
            private final zzetg zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeth(new JSONObject());
            }
        });
    }
}
