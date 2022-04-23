package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aji.class */
public final class aji implements asg {

    /* renamed from: a  reason: collision with root package name */
    private final cqe f23420a;

    public aji(cqe cqeVar) {
        this.f23420a = cqeVar;
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void a(Context context) {
        try {
            this.f23420a.f26255a.d();
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void b(Context context) {
        try {
            this.f23420a.f26255a.e();
            if (context != null) {
                this.f23420a.f26255a.a(d.a(context));
            }
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void c(Context context) {
        try {
            this.f23420a.f26255a.c();
        } catch (zzdpq e) {
            zzd.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}
