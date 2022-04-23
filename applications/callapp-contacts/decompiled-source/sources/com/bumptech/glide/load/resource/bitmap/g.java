package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/g.class */
public final class g implements j<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final l f7660a;

    public g(l lVar) {
        this.f7660a = lVar;
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(ByteBuffer byteBuffer, int i, int i2, h hVar) throws IOException {
        return this.f7660a.a(a.b(byteBuffer), i, i2, hVar, l.f);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(ByteBuffer byteBuffer, h hVar) throws IOException {
        return true;
    }
}
