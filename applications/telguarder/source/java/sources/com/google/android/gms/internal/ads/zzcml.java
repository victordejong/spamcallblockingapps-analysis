package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcml.class */
public final class zzcml implements zzeqb<zzdzw<String>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzdzv> zzfyj;

    private zzcml(zzeqo<zzei> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzdzv> zzeqoVar3) {
        this.zzfru = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfyj = zzeqoVar3;
    }

    public static zzcml zzx(zzeqo<zzei> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzdzv> zzeqoVar3) {
        return new zzcml(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdzw) zzeqh.zza(this.zzfyj.get().zze(new Callable(this.zzfru.get(), this.zzewk.get()) { // from class: com.google.android.gms.internal.ads.zzcmm
            private final Context zzcle;
            private final zzei zzgnz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgnz = zzeiVar;
                this.zzcle = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzei zzeiVar2 = this.zzgnz;
                return zzeiVar2.zzca().zzb(this.zzcle);
            }
        }), "Cannot return null from a non-@Nullable @Provides method");
    }
}
