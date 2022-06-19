package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.ry */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ry.class */
public final class BinderC6940ry extends AbstractBinderC6496fz {

    /* renamed from: d */
    private final Drawable f29304d;

    /* renamed from: e */
    private final Uri f29305e;

    /* renamed from: f */
    private final double f29306f;

    /* renamed from: g */
    private final int f29307g;

    /* renamed from: h */
    private final int f29308h;

    public BinderC6940ry(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f29304d = drawable;
        this.f29305e = uri;
        this.f29306f = d;
        this.f29307g = i;
        this.f29308h = i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: a */
    public final int mo11258a() {
        return this.f29307g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: b */
    public final AbstractC6253a mo11257b() {
        return BinderC6255b.m16744m2(this.f29304d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: c */
    public final Uri mo11256c() {
        return this.f29305e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: d */
    public final int mo11255d() {
        return this.f29308h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: e */
    public final double mo11254e() {
        return this.f29306f;
    }
}
