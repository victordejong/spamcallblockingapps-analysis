package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayq.class */
public final class ayq implements ayn {

    /* renamed from: a */
    private final List<String> f43328a;

    /* renamed from: b */
    private final cus f43329b;

    /* renamed from: c */
    private boolean f43330c;

    public ayq(cov covVar, cus cusVar) {
        this.f43328a = covVar.f46268o;
        this.f43329b = cusVar;
    }

    @Override // com.google.android.gms.internal.ads.ayn
    /* renamed from: a */
    public final void mo18316a() {
        if (!this.f43330c) {
            this.f43329b.m17206a(this.f43328a);
            this.f43330c = true;
        }
    }
}
