package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aji.class */
public final class aji implements asg {

    /* renamed from: a */
    private final cqe f42206a;

    public aji(cqe cqeVar) {
        this.f42206a = cqeVar;
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: a */
    public final void mo17741a(Context context) {
        try {
            this.f42206a.f46377a.mo14348d();
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: b */
    public final void mo17739b(Context context) {
        try {
            this.f42206a.f46377a.mo14347e();
            if (context == null) {
                return;
            }
            this.f42206a.f46377a.mo14369a(BinderC12129d.m18979a(context));
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: c */
    public final void mo17738c(Context context) {
        try {
            this.f42206a.f46377a.mo14351c();
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}
