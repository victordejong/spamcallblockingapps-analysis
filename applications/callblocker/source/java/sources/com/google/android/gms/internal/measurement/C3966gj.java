package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.gj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gj.class */
public final class C3966gj extends C3972gp {

    /* renamed from: a */
    private final /* synthetic */ C3965gi f18214a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C3966gj(C3965gi c3965gi) {
        super(c3965gi, null);
        this.f18214a = c3965gi;
    }

    public /* synthetic */ C3966gj(C3965gi c3965gi, C3964gh c3964gh) {
        this(c3965gi);
    }

    @Override // com.google.android.gms.internal.measurement.C3972gp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C3967gk(this.f18214a, null);
    }
}
