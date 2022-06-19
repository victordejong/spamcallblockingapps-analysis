package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffd.class */
public final class zzffd implements zzdeu {
    @GuardedBy("this")
    private final HashSet<zzcie> zza = new HashSet<>();
    private final Context zzb;
    private final zzcio zzc;

    public zzffd(Context context, zzcio zzcioVar) {
        this.zzb = context;
        this.zzc = zzcioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        synchronized (this) {
            if (zzbewVar.zza != 3) {
                this.zzc.zzi(this.zza);
            }
        }
    }

    public final Bundle zzb() {
        return this.zzc.zzk(this.zzb, this);
    }

    public final void zzc(HashSet<zzcie> hashSet) {
        synchronized (this) {
            this.zza.clear();
            this.zza.addAll(hashSet);
        }
    }
}
