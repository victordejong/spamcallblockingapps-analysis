package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ep */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep.class */
final class C3918ep<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    private Map.Entry<K, C3916en> f18129a;

    /* JADX INFO: Access modifiers changed from: private */
    public C3918ep(Map.Entry<K, C3916en> entry) {
        this.f18129a = entry;
    }

    /* renamed from: a */
    public final C3916en m5594a() {
        return this.f18129a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f18129a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f18129a.getValue() == null ? null : C3916en.m5596a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof AbstractC3943fn)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        return this.f18129a.getValue().m5593a((AbstractC3943fn) obj);
    }
}
