package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqg.class */
public final class bqg implements arp, atb, auf {

    /* renamed from: a */
    private final ctz f44487a;

    /* renamed from: b */
    private final cty f44488b;

    /* renamed from: c */
    private final C13075yo f44489c;

    public bqg(ctz ctzVar, cty ctyVar, C13075yo c13075yo) {
        this.f44487a = ctzVar;
        this.f44488b = ctyVar;
        this.f44489c = c13075yo;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        this.f44488b.mo17215a(this.f44487a.m17225a("action", "loaded"));
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        this.f44487a.m17227a(cpkVar, this.f44489c);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
        ctz ctzVar = this.f44487a;
        Bundle bundle = zzaujVar.zzdys;
        if (bundle.containsKey("cnt")) {
            ctzVar.f46536a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            ctzVar.f46536a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        this.f44487a.m17225a("action", "ftl").m17225a("ftl", String.valueOf(zzvhVar.errorCode)).m17225a("ed", zzvhVar.zzcht);
        this.f44488b.mo17215a(this.f44487a);
    }
}
