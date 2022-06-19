package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bey.class */
public final class bey implements aql {

    /* renamed from: a */
    private final act f11124a;

    public bey(act actVar) {
        this.f11124a = !((Boolean) dyx.m8158e().m7876a(edi.f16378ak)).booleanValue() ? null : actVar;
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: a */
    public final void mo11891a(Context context) {
        if (this.f11124a != null) {
            this.f11124a.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: b */
    public final void mo11889b(Context context) {
        if (this.f11124a != null) {
            this.f11124a.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: c */
    public final void mo11888c(Context context) {
        if (this.f11124a != null) {
            this.f11124a.destroy();
        }
    }
}
