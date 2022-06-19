package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcu.class */
public final class zzdcu implements zzdfi<zzdcv> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdcu(Context context, zzdzv zzdzvVar) {
        this.context = context;
        this.zzghl = zzdzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdcv> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdcx
            private final zzdcu zzhbz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbz = this;
            }

            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 306
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdcx.call():java.lang.Object");
            }
        });
    }
}
