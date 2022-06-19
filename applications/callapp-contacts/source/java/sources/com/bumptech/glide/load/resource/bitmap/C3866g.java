package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3618a;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.bitmap.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/g.class */
public final class C3866g implements AbstractC3824j<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C3878l f14223a;

    public C3866g(C3878l c3878l) {
        this.f14223a = c3878l;
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(ByteBuffer byteBuffer, int i, int i2, C3822h c3822h) throws IOException {
        return this.f14223a.m37273a(C3618a.m37611b(byteBuffer), i, i2, c3822h, C3878l.f14244f);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(ByteBuffer byteBuffer, C3822h c3822h) throws IOException {
        return true;
    }
}
