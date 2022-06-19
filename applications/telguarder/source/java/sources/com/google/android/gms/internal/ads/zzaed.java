package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaed.class */
public final class zzaed extends zzaeq {
    private final int height;
    private final Uri uri;
    private final int width;
    private final Drawable zzdfr;
    private final double zzdfs;

    public zzaed(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.zzdfr = drawable;
        this.uri = uri;
        this.zzdfs = d;
        this.width = i;
        this.height = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getHeight() {
        return this.height;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final double getScale() {
        return this.zzdfs;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final Uri getUri() throws RemoteException {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getWidth() {
        return this.width;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final IObjectWrapper zzti() throws RemoteException {
        return ObjectWrapper.wrap(this.zzdfr);
    }
}
