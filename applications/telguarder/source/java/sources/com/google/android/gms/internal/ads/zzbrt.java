package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrt.class */
public final class zzbrt extends zzbwf<zzbrq> implements zzbrq {
    public zzbrt(zzbrx zzbrxVar, Set<zzbya<zzbrq>> set, Executor executor) {
        super(set);
        zza(zzbrxVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zza(zzcaf zzcafVar) {
        zza(new zzbwh(zzcafVar) { // from class: com.google.android.gms.internal.ads.zzbrv
            private final zzcaf zzfzi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzi = zzcafVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbrq) obj).zza(this.zzfzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzalp() {
        zza(zzbru.zzfzg);
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzl(zzvg zzvgVar) {
        zza(new zzbwh(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzbrs
            private final zzvg zzfzh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzh = zzvgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbrq) obj).zzl(this.zzfzh);
            }
        });
    }
}
