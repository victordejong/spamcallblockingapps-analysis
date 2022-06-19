package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.de */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/de.class */
public final class BinderC12325de extends AbstractBinderC12426du {

    /* renamed from: a */
    final Drawable f47008a;

    /* renamed from: b */
    private final Uri f47009b;

    /* renamed from: c */
    private final double f47010c;

    /* renamed from: d */
    private final int f47011d;

    /* renamed from: e */
    private final int f47012e;

    public BinderC12325de(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f47008a = drawable;
        this.f47009b = uri;
        this.f47010c = d;
        this.f47011d = i;
        this.f47012e = i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: a */
    public final AbstractC12126b mo15752a() throws RemoteException {
        return BinderC12129d.m18979a(this.f47008a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: b */
    public final Uri mo15751b() throws RemoteException {
        return this.f47009b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: c */
    public final double mo15750c() {
        return this.f47010c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: d */
    public final int mo15749d() {
        return this.f47011d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: e */
    public final int mo15748e() {
        return this.f47012e;
    }
}
