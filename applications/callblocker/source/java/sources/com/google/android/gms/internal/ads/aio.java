package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aio.class */
public final class aio implements aql {

    /* renamed from: a */
    private final chs f9745a;

    public aio(chs chsVar) {
        this.f9745a = chsVar;
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: a */
    public final void mo11891a(Context context) {
        try {
            this.f9745a.m11276d();
        } catch (zzdhk e) {
            C3556uu.m6746d("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: b */
    public final void mo11889b(Context context) {
        try {
            this.f9745a.m11275e();
            if (context == null) {
                return;
            }
            this.f9745a.m11292a(context);
        } catch (zzdhk e) {
            C3556uu.m6746d("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: c */
    public final void mo11888c(Context context) {
        try {
            this.f9745a.m11278c();
        } catch (zzdhk e) {
            C3556uu.m6746d("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}
