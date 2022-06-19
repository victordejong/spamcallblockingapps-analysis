package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.bitmap.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/h.class */
public final class C3867h implements AbstractC3824j<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C3863d f14224a = new C3863d();

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(ByteBuffer byteBuffer, int i, int i2, C3822h c3822h) throws IOException {
        return this.f14224a.mo37196a(ImageDecoder.createSource(byteBuffer), i, i2, c3822h);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(ByteBuffer byteBuffer, C3822h c3822h) throws IOException {
        return true;
    }
}
