package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayq.class */
public final class ayq implements ayn {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f24014a;

    /* renamed from: b  reason: collision with root package name */
    private final cus f24015b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f24016c;

    public ayq(cov covVar, cus cusVar) {
        this.f24014a = covVar.o;
        this.f24015b = cusVar;
    }

    @Override // com.google.android.gms.internal.ads.ayn
    public final void a() {
        if (!this.f24016c) {
            this.f24015b.a(this.f24014a);
            this.f24016c = true;
        }
    }
}
