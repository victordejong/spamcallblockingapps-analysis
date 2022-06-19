package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgq.class */
public final class zzcgq implements zzaya {
    private final Context zza;
    private final Object zzb;
    private final String zzc;
    private boolean zzd;

    public zzcgq(Context context, String str) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = str;
        this.zzd = false;
        this.zzb = new Object();
    }

    public final String zza() {
        return this.zzc;
    }

    public final void zzb(boolean z) {
        if (!zzt.zzn().zzu(this.zza)) {
            return;
        }
        synchronized (this.zzb) {
            if (this.zzd == z) {
                return;
            }
            this.zzd = z;
            if (TextUtils.isEmpty(this.zzc)) {
                return;
            }
            if (this.zzd) {
                zzt.zzn().zzh(this.zza, this.zzc);
            } else {
                zzt.zzn().zzi(this.zza, this.zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        zzb(zzaxzVar.zzj);
    }
}
