package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byk.class */
final class byk implements zzg {

    /* renamed from: a */
    private final /* synthetic */ azk f45096a;

    public byk(byf byfVar, azk azkVar) {
        this.f45096a = azkVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        this.f45096a.mo18526c().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        this.f45096a.mo18525d().m18434a();
        this.f45096a.mo18524e().m18319a();
    }
}
