package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byk.class */
final class byk implements zzg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ azk f25398a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public byk(byf byfVar, azk azkVar) {
        this.f25398a = azkVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        this.f25398a.c().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        this.f25398a.d().a();
        this.f25398a.e().a();
    }
}
