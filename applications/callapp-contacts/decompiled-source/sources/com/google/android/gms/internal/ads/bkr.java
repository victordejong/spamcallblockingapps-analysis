package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkr.class */
public final class bkr implements cto {

    /* renamed from: a  reason: collision with root package name */
    private Map<ctj, bkt> f24596a;

    /* renamed from: b  reason: collision with root package name */
    private ehk f24597b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bkr(ehk ehkVar, Map<ctj, bkt> map) {
        this.f24596a = map;
        this.f24597b = ehkVar;
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str) {
        if (this.f24596a.containsKey(ctjVar)) {
            this.f24597b.a(this.f24596a.get(ctjVar).f24600a);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str, Throwable th) {
        if (this.f24596a.containsKey(ctjVar)) {
            this.f24597b.a(this.f24596a.get(ctjVar).f24602c);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void b(ctj ctjVar, String str) {
        if (this.f24596a.containsKey(ctjVar)) {
            this.f24597b.a(this.f24596a.get(ctjVar).f24601b);
        }
    }
}
