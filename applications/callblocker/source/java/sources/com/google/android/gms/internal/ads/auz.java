package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/auz.class */
public final class auz implements auv {

    /* renamed from: a */
    private final List<String> f10404a;

    /* renamed from: b */
    private final clj f10405b;

    /* renamed from: c */
    private boolean f10406c;

    public auz(cgr cgrVar, clj cljVar) {
        this.f10404a = cgrVar.f12992n;
        this.f10405b = cljVar;
    }

    @Override // com.google.android.gms.internal.ads.auv
    /* renamed from: a */
    public final void mo12413a() {
        if (!this.f10406c) {
            this.f10405b.m11098a(this.f10404a);
            this.f10406c = true;
        }
    }
}
