package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzhx.class */
public final class zzhx extends zzid {
    private final /* synthetic */ zzhs zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzhx(zzhs zzhsVar) {
        super(zzhsVar, null);
        this.zza = zzhsVar;
    }

    public /* synthetic */ zzhx(zzhs zzhsVar, zzhv zzhvVar) {
        this(zzhsVar);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzid, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzhu(this.zza, null);
    }
}
