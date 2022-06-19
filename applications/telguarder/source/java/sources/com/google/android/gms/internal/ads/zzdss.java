package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdss.class */
public final class zzdss {
    private final Executor executor;
    private final zzazo zzhrx;

    public zzdss(Executor executor, zzazo zzazoVar) {
        this.executor = executor;
        this.zzhrx = zzazoVar;
    }

    public final void zzel(String str) {
        this.executor.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzdsr
            private final String zzdjf;
            private final zzdss zzhlk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhlk = this;
                this.zzdjf = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzhlk.zzhc(this.zzdjf);
            }
        });
    }

    public final /* synthetic */ void zzhc(String str) {
        this.zzhrx.zzel(str);
    }

    public final void zzk(List<String> list) {
        for (String str : list) {
            zzel(str);
        }
    }
}
