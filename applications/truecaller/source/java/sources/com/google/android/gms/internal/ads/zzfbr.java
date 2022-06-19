package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbr.class */
public final class zzfbr implements zzdbf {
    private final HashSet<zzcfy> zza = new HashSet<>();
    private final Context zzb;
    private final zzcgi zzc;

    public zzfbr(Context context, zzcgi zzcgiVar) {
        this.zzb = context;
        this.zzc = zzcgiVar;
    }

    public final void zzb(HashSet<zzcfy> hashSet) {
        synchronized (this) {
            this.zza.clear();
            this.zza.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        synchronized (this) {
            if (zzbczVar.zza != 3) {
                this.zzc.zzc(this.zza);
            }
        }
    }

    public final Bundle zzc() {
        return this.zzc.zzk(this.zzb, this);
    }
}
