package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byg.class */
public final class byg implements zzg {

    /* renamed from: a  reason: collision with root package name */
    private zzg f25394a;

    public final void a(zzg zzgVar) {
        synchronized (this) {
            this.f25394a = zzgVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        synchronized (this) {
            zzg zzgVar = this.f25394a;
            if (zzgVar != null) {
                zzgVar.zzh(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        synchronized (this) {
            zzg zzgVar = this.f25394a;
            if (zzgVar != null) {
                zzgVar.zzkg();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        synchronized (this) {
            zzg zzgVar = this.f25394a;
            if (zzgVar != null) {
                zzgVar.zzkh();
            }
        }
    }
}
