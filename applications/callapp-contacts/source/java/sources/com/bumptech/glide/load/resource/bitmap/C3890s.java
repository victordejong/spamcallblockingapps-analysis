package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3618a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.resource.bitmap.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/s.class */
public final class C3890s implements AbstractC3824j<InputStream, Bitmap> {

    /* renamed from: a */
    private final C3863d f14274a = new C3863d();

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(InputStream inputStream, int i, int i2, C3822h c3822h) throws IOException {
        return this.f14274a.mo37196a(ImageDecoder.createSource(C3618a.m37614a(inputStream)), i, i2, c3822h);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(InputStream inputStream, C3822h c3822h) throws IOException {
        return true;
    }
}
