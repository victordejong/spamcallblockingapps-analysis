package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzga.class */
final class zzga extends zzgg {

    /* renamed from: g */
    private final /* synthetic */ zzfz f8078g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzga(zzfz zzfzVar) {
        super(zzfzVar, null);
        this.f8078g = zzfzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzga(zzfz zzfzVar, zzfy zzfyVar) {
        this(zzfzVar);
    }

    @Override // com.google.android.gms.internal.icing.zzgg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzgb(this.f8078g, null);
    }
}
