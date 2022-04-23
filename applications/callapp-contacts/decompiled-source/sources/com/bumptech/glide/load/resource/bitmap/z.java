package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/z.class */
public final class z implements j<Bitmap, Bitmap> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/z$a.class */
    static final class a implements u<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f7707a;

        a(Bitmap bitmap) {
            this.f7707a = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.u
        public final Class<Bitmap> a() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.u
        public final /* bridge */ /* synthetic */ Bitmap b() {
            return this.f7707a;
        }

        @Override // com.bumptech.glide.load.engine.u
        public final int c() {
            return k.a(this.f7707a);
        }

        @Override // com.bumptech.glide.load.engine.u
        public final void d() {
        }
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(Bitmap bitmap, int i, int i2, h hVar) throws IOException {
        return new a(bitmap);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(Bitmap bitmap, h hVar) throws IOException {
        return true;
    }
}
