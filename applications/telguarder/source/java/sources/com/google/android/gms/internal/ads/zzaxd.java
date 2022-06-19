package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxd.class */
public final class zzaxd implements zzqw {
    private final Object lock;
    private String zzbut;
    private final Context zzcmf;
    private boolean zzebk;

    public zzaxd(Context context, String str) {
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzbut = str;
        this.zzebk = false;
        this.lock = new Object();
    }

    public final String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqxVar) {
        zzan(zzqxVar.zzbrj);
    }

    public final void zzan(boolean z) {
        if (!zzr.zzlp().zzy(this.zzcmf)) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzebk == z) {
                return;
            }
            this.zzebk = z;
            if (TextUtils.isEmpty(this.zzbut)) {
                return;
            }
            if (this.zzebk) {
                zzr.zzlp().zzd(this.zzcmf, this.zzbut);
            } else {
                zzr.zzlp().zze(this.zzcmf, this.zzbut);
            }
        }
    }
}
