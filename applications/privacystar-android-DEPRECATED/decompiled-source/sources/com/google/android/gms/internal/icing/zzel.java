package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzel.class */
final class zzel extends zzer {
    private final /* synthetic */ zzei zzlg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzel(zzei zzeiVar) {
        super(zzeiVar, null);
        this.zzlg = zzeiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzel(zzei zzeiVar, zzej zzejVar) {
        this(zzeiVar);
    }

    @Override // com.google.android.gms.internal.icing.zzer, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzek(this.zzlg, null);
    }
}
