package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzel.class */
public final class zzel extends zzer {
    private final /* synthetic */ zzei zzos;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzel(zzei zzeiVar) {
        super(zzeiVar, null);
        this.zzos = zzeiVar;
    }

    public /* synthetic */ zzel(zzei zzeiVar, zzej zzejVar) {
        this(zzeiVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzer, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzek(this.zzos, null);
    }
}
