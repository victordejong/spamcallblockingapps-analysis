package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.AbstractC6227e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hh0.class */
public final class hh0 {

    /* renamed from: a */
    private long f23902a = -1;

    /* renamed from: b */
    private long f23903b = -1;

    /* renamed from: c */
    final /* synthetic */ ih0 f23904c;

    public hh0(ih0 ih0Var) {
        this.f23904c = ih0Var;
    }

    /* renamed from: a */
    public final long m14665a() {
        return this.f23903b;
    }

    /* renamed from: b */
    public final void m14664b() {
        AbstractC6227e abstractC6227e;
        abstractC6227e = this.f23904c.f24269a;
        this.f23903b = abstractC6227e.mo16806b();
    }

    /* renamed from: c */
    public final void m14663c() {
        AbstractC6227e abstractC6227e;
        abstractC6227e = this.f23904c.f24269a;
        this.f23902a = abstractC6227e.mo16806b();
    }

    /* renamed from: d */
    public final Bundle m14662d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f23902a);
        bundle.putLong("tclose", this.f23903b);
        return bundle;
    }
}
