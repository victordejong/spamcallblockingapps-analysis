package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.m;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tn.class */
public final class tn extends to {

    /* renamed from: a  reason: collision with root package name */
    private final String f28410a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28411b;

    public tn(String str, int i) {
        this.f28410a = str;
        this.f28411b = i;
    }

    @Override // com.google.android.gms.internal.ads.tp
    public final String a() {
        return this.f28410a;
    }

    @Override // com.google.android.gms.internal.ads.tp
    public final int b() {
        return this.f28411b;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof tn)) {
            return false;
        }
        tn tnVar = (tn) obj;
        return m.a(this.f28410a, tnVar.f28410a) && m.a(Integer.valueOf(this.f28411b), Integer.valueOf(tnVar.f28411b));
    }
}
