package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetr.class */
public final class zzetr implements zzery<zzets> {
    public final zzfsn zza;
    public final List<String> zzb;
    public final zzbiw zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzetr(zzbiw zzbiwVar, zzbiw zzbiwVar2, zzfsn zzfsnVar, List<String> list) {
        this.zzc = zzbiwVar;
        this.zza = zzbiwVar2;
        this.zzb = zzfsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzets> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzetq
            private final zzetr zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzets(this.zza.zzb);
            }
        });
    }
}
