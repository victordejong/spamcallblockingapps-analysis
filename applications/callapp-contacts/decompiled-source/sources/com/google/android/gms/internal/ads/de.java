package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/de.class */
public final class de extends du {

    /* renamed from: a  reason: collision with root package name */
    final Drawable f26770a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f26771b;

    /* renamed from: c  reason: collision with root package name */
    private final double f26772c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26773d;
    private final int e;

    public de(Drawable drawable, Uri uri, double d2, int i, int i2) {
        this.f26770a = drawable;
        this.f26771b = uri;
        this.f26772c = d2;
        this.f26773d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final b a() throws RemoteException {
        return d.a(this.f26770a);
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final Uri b() throws RemoteException {
        return this.f26771b;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final double c() {
        return this.f26772c;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final int d() {
        return this.f26773d;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final int e() {
        return this.e;
    }
}
