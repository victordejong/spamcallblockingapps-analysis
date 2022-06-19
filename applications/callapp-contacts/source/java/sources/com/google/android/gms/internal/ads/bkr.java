package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkr.class */
public final class bkr implements cto {

    /* renamed from: a */
    private Map<ctj, bkt> f44148a;

    /* renamed from: b */
    private ehk f44149b;

    public bkr(ehk ehkVar, Map<ctj, bkt> map) {
        this.f44148a = map;
        this.f44149b = ehkVar;
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17238a(ctj ctjVar, String str) {
        if (this.f44148a.containsKey(ctjVar)) {
            this.f44149b.m15047a(this.f44148a.get(ctjVar).f44152a);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17237a(ctj ctjVar, String str, Throwable th) {
        if (this.f44148a.containsKey(ctjVar)) {
            this.f44149b.m15047a(this.f44148a.get(ctjVar).f44154c);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17236a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: b */
    public final void mo17235b(ctj ctjVar, String str) {
        if (this.f44148a.containsKey(ctjVar)) {
            this.f44149b.m15047a(this.f44148a.get(ctjVar).f44153b);
        }
    }
}
