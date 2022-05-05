package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkf.class */
final class zzkf extends zzkl {

    /* renamed from: g */
    private final /* synthetic */ zzke f8606g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzkf(zzke zzkeVar) {
        super(zzkeVar, null);
        this.f8606g = zzkeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzkf(zzke zzkeVar, zzkd zzkdVar) {
        this(zzkeVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzkg(this.f8606g, null);
    }
}
