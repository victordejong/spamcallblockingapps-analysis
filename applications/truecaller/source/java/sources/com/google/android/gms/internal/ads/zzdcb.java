package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcb.class */
public final class zzdcb extends zzdgm<zzdbx> {
    public zzdcb(Set<zzdih<zzdbx>> set) {
        super(set);
    }

    public final void zza(Context context) {
        zzk(new zzdgl(context) { // from class: com.google.android.gms.internal.ads.zzdby
            private final Context zza;

            {
                this.zza = context;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbx) obj).zza(this.zza);
            }
        });
    }

    public final void zzb(Context context) {
        zzk(new zzdgl(context) { // from class: com.google.android.gms.internal.ads.zzdbz
            private final Context zza;

            {
                this.zza = context;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbx) obj).zzb(this.zza);
            }
        });
    }

    public final void zzc(Context context) {
        zzk(new zzdgl(context) { // from class: com.google.android.gms.internal.ads.zzdca
            private final Context zza;

            {
                this.zza = context;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbx) obj).zzbo(this.zza);
            }
        });
    }
}
