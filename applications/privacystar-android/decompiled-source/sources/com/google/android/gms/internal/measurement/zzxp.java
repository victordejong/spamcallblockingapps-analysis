package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxp.class */
final class zzxp extends zzxv {
    private final /* synthetic */ zzxm zzcch;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzxp(zzxm zzxmVar) {
        super(zzxmVar, null);
        this.zzcch = zzxmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxp(zzxm zzxmVar, zzxn zzxnVar) {
        this(zzxmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxv, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzxo(this.zzcch, null);
    }
}
