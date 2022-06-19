package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sf0.class */
public final class sf0 implements AbstractC6888qj {

    /* renamed from: d */
    private final Context f29467d;

    /* renamed from: e */
    private final Object f29468e;

    /* renamed from: f */
    private final String f29469f;

    /* renamed from: g */
    private boolean f29470g;

    public sf0(Context context, String str) {
        this.f29467d = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f29469f = str;
        this.f29470g = false;
        this.f29468e = new Object();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        m11063a(c6851pj.f28023j);
    }

    /* renamed from: a */
    public final void m11063a(boolean z) {
        if (!C5667s.m18163a().m13546g(this.f29467d)) {
            return;
        }
        synchronized (this.f29468e) {
            if (this.f29470g == z) {
                return;
            }
            this.f29470g = z;
            if (TextUtils.isEmpty(this.f29469f)) {
                return;
            }
            if (this.f29470g) {
                C5667s.m18163a().m13542k(this.f29467d, this.f29469f);
            } else {
                C5667s.m18163a().m13541l(this.f29467d, this.f29469f);
            }
        }
    }

    /* renamed from: b */
    public final String m11062b() {
        return this.f29469f;
    }
}
