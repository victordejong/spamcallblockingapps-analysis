package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcys.class */
public final class zzcys implements zzg {

    /* renamed from: a */
    public zzg f26772a;

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: a */
    public final void mo13764a() {
        synchronized (this) {
            if (this.f26772a != null) {
                this.f26772a.mo13764a();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: a */
    public final void mo13763a(View view) {
        synchronized (this) {
            if (this.f26772a != null) {
                this.f26772a.mo13763a(view);
            }
        }
    }

    /* renamed from: a */
    public final void m13762a(zzg zzgVar) {
        synchronized (this) {
            this.f26772a = zzgVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: b */
    public final void mo13761b() {
        synchronized (this) {
            if (this.f26772a != null) {
                this.f26772a.mo13761b();
            }
        }
    }
}
