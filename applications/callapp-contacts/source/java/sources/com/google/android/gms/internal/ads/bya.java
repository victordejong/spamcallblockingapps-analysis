package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bya.class */
final class bya implements zzg {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f45078a;

    /* renamed from: b */
    private final /* synthetic */ cpk f45079b;

    /* renamed from: c */
    private final /* synthetic */ cov f45080c;

    /* renamed from: d */
    private final /* synthetic */ byg f45081d;

    /* renamed from: e */
    private final /* synthetic */ bxy f45082e;

    public bya(bxy bxyVar, C13103zp c13103zp, cpk cpkVar, cov covVar, byg bygVar) {
        this.f45082e = bxyVar;
        this.f45078a = c13103zp;
        this.f45079b = cpkVar;
        this.f45080c = covVar;
        this.f45081d = bygVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        this.f45078a.set(this.f45082e.f45074b.mo17570a(this.f45079b, this.f45080c, this.f45081d));
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
    }
}
