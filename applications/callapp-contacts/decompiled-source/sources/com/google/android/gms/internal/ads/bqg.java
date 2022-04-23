package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqg.class */
public final class bqg implements arp, atb, auf {

    /* renamed from: a  reason: collision with root package name */
    private final ctz f24885a;

    /* renamed from: b  reason: collision with root package name */
    private final cty f24886b;

    /* renamed from: c  reason: collision with root package name */
    private final yo f24887c;

    public bqg(ctz ctzVar, cty ctyVar, yo yoVar) {
        this.f24885a = ctzVar;
        this.f24886b = ctyVar;
        this.f24887c = yoVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        this.f24886b.a(this.f24885a.a("action", "loaded"));
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
        this.f24885a.a(cpkVar, this.f24887c);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
        ctz ctzVar = this.f24885a;
        Bundle bundle = zzaujVar.zzdys;
        if (bundle.containsKey("cnt")) {
            ctzVar.f26390a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            ctzVar.f26390a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        this.f24885a.a("action", "ftl").a("ftl", String.valueOf(zzvhVar.errorCode)).a("ed", zzvhVar.zzcht);
        this.f24886b.a(this.f24885a);
    }
}
