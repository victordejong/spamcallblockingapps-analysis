package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
/* renamed from: com.bumptech.glide.load.resource.bitmap.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/u.class */
public final class C4318u implements AbstractC4146f<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a */
    private final C4304l f13293a;

    public C4318u(C4304l c4304l) {
        this.f13293a = c4304l;
    }

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, C4032e c4032e) {
        return this.f13293a.m22936d(parcelFileDescriptor, i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(ParcelFileDescriptor parcelFileDescriptor, C4032e c4032e) {
        return this.f13293a.m22925o(parcelFileDescriptor);
    }
}
