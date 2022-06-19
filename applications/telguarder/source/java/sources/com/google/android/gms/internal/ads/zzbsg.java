package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsg.class */
public final class zzbsg extends zzbwf<zzbsh> {
    public zzbsg(Set<zzbya<zzbsh>> set) {
        super(set);
    }

    public final void zza(zzbyq zzbyqVar, Executor executor) {
        zza(zzbya.zzb(new zzbsk(this, zzbyqVar), executor));
    }

    public final void zzcb(Context context) {
        zza(new zzbwh(context) { // from class: com.google.android.gms.internal.ads.zzbsj
            private final Context zzcmi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbsh) obj).zzcb(this.zzcmi);
            }
        });
    }

    public final void zzcc(Context context) {
        zza(new zzbwh(context) { // from class: com.google.android.gms.internal.ads.zzbsi
            private final Context zzcmi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbsh) obj).zzcc(this.zzcmi);
            }
        });
    }

    public final void zzcd(Context context) {
        zza(new zzbwh(context) { // from class: com.google.android.gms.internal.ads.zzbsl
            private final Context zzcmi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbsh) obj).zzcd(this.zzcmi);
            }
        });
    }
}
