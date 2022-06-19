package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
/* renamed from: com.google.android.gms.internal.ads.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bh.class */
public final class BinderC2831bh extends AbstractBinderC2848bx {

    /* renamed from: a */
    private final Drawable f11226a;

    /* renamed from: b */
    private final Uri f11227b;

    /* renamed from: c */
    private final double f11228c;

    /* renamed from: d */
    private final int f11229d;

    /* renamed from: e */
    private final int f11230e;

    public BinderC2831bh(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f11226a = drawable;
        this.f11227b = uri;
        this.f11228c = d;
        this.f11229d = i;
        this.f11230e = i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: a */
    public final AbstractC2731a mo11584a() {
        return BinderC2734b.m13794a(this.f11226a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: b */
    public final Uri mo11583b() {
        return this.f11227b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: c */
    public final double mo11582c() {
        return this.f11228c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: d */
    public final int mo11581d() {
        return this.f11229d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: e */
    public final int mo11580e() {
        return this.f11230e;
    }
}
