package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.AbstractC14223c;
import com.google.android.gms.wearable.AbstractC14361n;
import java.util.Set;
/* renamed from: com.google.android.gms.wearable.internal.dr */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dr.class */
public final class C14330dr implements AbstractC14223c {

    /* renamed from: a */
    private final String f52291a;

    /* renamed from: b */
    private final Set<AbstractC14361n> f52292b;

    public C14330dr(AbstractC14223c abstractC14223c) {
        this(abstractC14223c.getName(), abstractC14223c.getNodes());
    }

    private C14330dr(String str, Set<AbstractC14361n> set) {
        this.f52291a = str;
        this.f52292b = set;
    }

    @Override // com.google.android.gms.wearable.AbstractC14223c
    public final String getName() {
        return this.f52291a;
    }

    @Override // com.google.android.gms.wearable.AbstractC14223c
    public final Set<AbstractC14361n> getNodes() {
        return this.f52292b;
    }
}
