package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnk.class */
public final class zzfnk extends zzfnn<Map.Entry> {
    public final /* synthetic */ zzfns zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfnk(zzfns zzfnsVar) {
        super(zzfnsVar, null);
        this.zza = zzfnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnn
    public final /* bridge */ /* synthetic */ Map.Entry zza(int i) {
        return new zzfnp(this.zza, i);
    }
}
