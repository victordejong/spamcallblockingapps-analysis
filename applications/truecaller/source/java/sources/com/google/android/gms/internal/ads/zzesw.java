package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesw.class */
public final class zzesw implements zzery<zzesx> {
    private final Context zza;
    private final String zzb;
    private final zzfsn zzc;

    public zzesw(zzcbl zzcblVar, Context context, String str, zzfsn zzfsnVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzfsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzesx> zza() {
        return this.zzc.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzesv
            private final zzesw zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzesx(new JSONObject());
            }
        });
    }
}
