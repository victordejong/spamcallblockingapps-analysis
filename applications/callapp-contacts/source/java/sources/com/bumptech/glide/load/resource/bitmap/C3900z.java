package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3644k;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.bitmap.z */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/z.class */
public final class C3900z implements AbstractC3824j<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.z$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/z$a.class */
    static final class C3901a implements AbstractC3811u<Bitmap> {

        /* renamed from: a */
        private final Bitmap f14295a;

        C3901a(Bitmap bitmap) {
            this.f14295a = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3811u
        /* renamed from: a */
        public final Class<Bitmap> mo37213a() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3811u
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ Bitmap mo37235b() {
            return this.f14295a;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3811u
        /* renamed from: c */
        public final int mo37212c() {
            return C3644k.m37579a(this.f14295a);
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3811u
        /* renamed from: d */
        public final void mo37211d() {
        }
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(Bitmap bitmap, int i, int i2, C3822h c3822h) throws IOException {
        return new C3901a(bitmap);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(Bitmap bitmap, C3822h c3822h) throws IOException {
        return true;
    }
}
