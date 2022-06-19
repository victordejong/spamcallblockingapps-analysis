package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aos.class */
final class aos implements aql, arg {

    /* renamed from: a */
    private final Context f10135a;

    /* renamed from: b */
    private final cgr f10136b;

    /* renamed from: c */
    private final AbstractC3379of f10137c;

    public aos(Context context, cgr cgrVar, AbstractC3379of abstractC3379of) {
        this.f10135a = context;
        this.f10136b = cgrVar;
        this.f10137c = abstractC3379of;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        if (this.f10136b.f12975U == null || !this.f10136b.f12975U.f17054a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.f10136b.f12975U.f17055b.isEmpty()) {
            arrayList.add(this.f10136b.f12975U.f17055b);
        }
        this.f10137c.mo7362a(this.f10135a, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: a */
    public final void mo11891a(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: b */
    public final void mo11889b(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: c */
    public final void mo11888c(Context context) {
        this.f10137c.mo7363a();
    }
}
