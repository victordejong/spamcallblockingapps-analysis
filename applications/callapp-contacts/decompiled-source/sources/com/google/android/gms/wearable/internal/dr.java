package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.n;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dr.class */
public final class dr implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f30134a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<n> f30135b;

    public dr(c cVar) {
        this(cVar.getName(), cVar.getNodes());
    }

    private dr(String str, Set<n> set) {
        this.f30134a = str;
        this.f30135b = set;
    }

    @Override // com.google.android.gms.wearable.c
    public final String getName() {
        return this.f30134a;
    }

    @Override // com.google.android.gms.wearable.c
    public final Set<n> getNodes() {
        return this.f30135b;
    }
}
