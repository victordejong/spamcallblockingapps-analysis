package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanh.class */
public final class zzanh extends zzaoa {
    public zzanh(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "pzhIFr8jSwvyB8FXK2qfBOfw0jXHNl6+dmbReaTm1jquB51r9sbZLlTA4zaBxZEm", "RbRyr5uGUYOSrOuNnmzV0kl42YeLvs7OFWbwh2MFm18=", zzaizVar, i, 24);
    }

    private final void zzc() {
        AdvertisingIdClient zzh = this.zzb.zzh();
        if (zzh == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = zzh.getInfo();
            String zzd = zzamv.zzd(info.getId());
            if (zzd == null) {
                return;
            }
            synchronized (this.zze) {
                this.zze.zzq(zzd);
                this.zze.zzp(info.isLimitAdTrackingEnabled());
                this.zze.zzW(6);
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoa, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzk();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzb.zzq()) {
            zzc();
            return;
        }
        synchronized (this.zze) {
            this.zze.zzq((String) this.zzf.invoke(null, this.zzb.zzb()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final Void zzk() throws Exception {
        if (this.zzb.zzr()) {
            super.zzk();
            return null;
        } else if (!this.zzb.zzq()) {
            return null;
        } else {
            zzc();
            return null;
        }
    }
}
