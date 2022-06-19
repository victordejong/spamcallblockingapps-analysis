package com.google.android.gms.internal.mlkit_translate;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzei.class */
public final class zzei extends zzen<Map.Entry<K, V>> {
    private final /* synthetic */ zzej zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzei(zzej zzejVar) {
        super(zzejVar.zza);
        this.zza = zzejVar;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return zza();
    }
}
