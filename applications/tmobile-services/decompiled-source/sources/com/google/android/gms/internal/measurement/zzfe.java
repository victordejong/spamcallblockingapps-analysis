package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfe.class */
public class zzfe<K, V> extends zzek<K, V> implements Serializable {

    /* renamed from: g */
    private final transient zzfc<K, ? extends zzey<V>> f8414g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfe(zzfc<K, ? extends zzey<V>> zzfcVar, int i) {
        this.f8414g = zzfcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzel
    /* renamed from: a */
    public final boolean mo12691a(@NullableDecl Object obj) {
        return obj != null && super.mo12691a(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzel
    /* renamed from: b */
    final Map<K, Collection<V>> mo12690b() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.measurement.zzel, com.google.android.gms.internal.measurement.zzfk
    public final /* synthetic */ Map zza() {
        return this.f8414g;
    }
}
