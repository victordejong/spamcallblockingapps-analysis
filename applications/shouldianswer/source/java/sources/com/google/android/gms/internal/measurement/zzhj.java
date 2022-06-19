package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhj.class */
public final class zzhj extends zzhp {
    private final /* synthetic */ zzhi zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzhj(zzhi zzhiVar) {
        super(zzhiVar, null);
        this.zza = zzhiVar;
    }

    public /* synthetic */ zzhj(zzhi zzhiVar, zzhh zzhhVar) {
        this(zzhiVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzhk(this.zza, null);
    }
}
