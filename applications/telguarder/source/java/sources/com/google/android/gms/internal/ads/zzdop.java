package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdop.class */
public final class zzdop implements zzayu, zzbrr {
    private final Context context;
    private final zzayy zzebw;
    private final HashSet<zzayn> zzhmj = new HashSet<>();

    public zzdop(Context context, zzayy zzayyVar) {
        this.context = context;
        this.zzebw = zzayyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zza(HashSet<zzayn> hashSet) {
        synchronized (this) {
            this.zzhmj.clear();
            this.zzhmj.addAll(hashSet);
        }
    }

    public final Bundle zzavn() {
        return this.zzebw.zza(this.context, this);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        synchronized (this) {
            if (zzvgVar.errorCode != 3) {
                this.zzebw.zzb(this.zzhmj);
            }
        }
    }
}
