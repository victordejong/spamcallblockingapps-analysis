package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadq.class */
public final class zzadq extends zzaed {

    /* renamed from: a */
    public final Drawable f24034a;

    /* renamed from: b */
    public final Uri f24035b;

    /* renamed from: c */
    public final double f24036c;

    /* renamed from: d */
    public final int f24037d;

    /* renamed from: e */
    public final int f24038e;

    public zzadq(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f24034a = drawable;
        this.f24035b = uri;
        this.f24036c = d;
        this.f24037d = i;
        this.f24038e = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    /* renamed from: U1 */
    public final IObjectWrapper mo16833U1() throws RemoteException {
        return ObjectWrapper.m17020a(this.f24034a);
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final int getHeight() {
        return this.f24038e;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final double getScale() {
        return this.f24036c;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final int getWidth() {
        return this.f24037d;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    /* renamed from: o */
    public final Uri mo16832o() throws RemoteException {
        return this.f24035b;
    }
}
