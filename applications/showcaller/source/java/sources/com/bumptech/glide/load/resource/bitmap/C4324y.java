package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4383k;
/* renamed from: com.bumptech.glide.load.resource.bitmap.y */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y.class */
public final class C4324y implements AbstractC4146f<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.y$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y$a.class */
    public static final class C4325a implements AbstractC4083s<Bitmap> {

        /* renamed from: d */
        private final Bitmap f13305d;

        C4325a(Bitmap bitmap) {
            this.f13305d = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4083s
        /* renamed from: a */
        public void mo22858a() {
        }

        /* renamed from: b */
        public Bitmap get() {
            return this.f13305d;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4083s
        /* renamed from: c */
        public int mo22856c() {
            return C4383k.m22711g(this.f13305d);
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4083s
        /* renamed from: d */
        public Class<Bitmap> mo22855d() {
            return Bitmap.class;
        }
    }

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(Bitmap bitmap, int i, int i2, C4032e c4032e) {
        return new C4325a(bitmap);
    }

    /* renamed from: d */
    public boolean mo22862a(Bitmap bitmap, C4032e c4032e) {
        return true;
    }
}
