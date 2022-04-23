package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/s.class */
public final class s implements j<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final d f7689a = new d();

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(InputStream inputStream, int i, int i2, h hVar) throws IOException {
        return this.f7689a.a(ImageDecoder.createSource(a.a(inputStream)), i, i2, hVar);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(InputStream inputStream, h hVar) throws IOException {
        return true;
    }
}
