package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.j;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/h.class */
public final class h implements j<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final d f7661a = new d();

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(ByteBuffer byteBuffer, int i, int i2, com.bumptech.glide.load.h hVar) throws IOException {
        return this.f7661a.a(ImageDecoder.createSource(byteBuffer), i, i2, hVar);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(ByteBuffer byteBuffer, com.bumptech.glide.load.h hVar) throws IOException {
        return true;
    }
}
