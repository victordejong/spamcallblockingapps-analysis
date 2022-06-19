package com.google.android.gms.internal.mlkit_translate;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmg.class */
public final class zzmg extends zzmm {
    private final /* synthetic */ zzmf zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzmg(zzmf zzmfVar) {
        super(zzmfVar, null);
        this.zza = zzmfVar;
    }

    public /* synthetic */ zzmg(zzmf zzmfVar, zzme zzmeVar) {
        this(zzmfVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzmm, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzmh(this.zza, null);
    }
}
