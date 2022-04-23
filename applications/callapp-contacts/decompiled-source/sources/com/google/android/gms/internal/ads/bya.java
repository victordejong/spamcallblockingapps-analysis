package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bya.class */
final class bya implements zzg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f25381a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cpk f25382b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ cov f25383c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ byg f25384d;
    private final /* synthetic */ bxy e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bya(bxy bxyVar, zp zpVar, cpk cpkVar, cov covVar, byg bygVar) {
        this.e = bxyVar;
        this.f25381a = zpVar;
        this.f25382b = cpkVar;
        this.f25383c = covVar;
        this.f25384d = bygVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        this.f25381a.set(this.e.f25377b.a(this.f25382b, this.f25383c, this.f25384d));
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
    }
}
