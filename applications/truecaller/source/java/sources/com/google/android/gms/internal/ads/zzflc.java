package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzflc.class */
public final class zzflc {
    public static <V> zzfsm<V> zza(Task<V> task) {
        zzfsu zza = zzfsu.zza();
        task.m38534d(zzfst.zza(), new OnCompleteListener(zza) { // from class: com.google.android.gms.internal.ads.zzflb
            private final zzfsu zza;

            {
                this.zza = zza;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                zzfsu zzfsuVar = this.zza;
                if (task2.m38521q()) {
                    zzfsuVar.cancel(false);
                } else if (task2.m38519s()) {
                    zzfsuVar.zzp(task2.m38523o());
                } else {
                    Exception m38524n = task2.m38524n();
                    if (m38524n == null) {
                        throw new IllegalStateException();
                    }
                    zzfsuVar.zzq(m38524n);
                }
            }
        });
        return zza;
    }
}
