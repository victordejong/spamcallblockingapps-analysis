package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzgi;
import com.google.android.gms.internal.firebase-perf.zzgj;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgk.class */
public final class zzgk extends zzgq {
    private final /* synthetic */ zzgj zztv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzgk(zzgj zzgjVar) {
        super(zzgjVar, null);
        this.zztv = zzgjVar;
    }

    public /* synthetic */ zzgk(zzgj zzgjVar, zzgi zzgiVar) {
        this(zzgjVar);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzgq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzgl(this.zztv, null);
    }
}
