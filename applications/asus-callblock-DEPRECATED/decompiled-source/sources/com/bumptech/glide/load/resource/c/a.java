package com.bumptech.glide.load.resource.c;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.b.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/a.class */
final class a implements a.AbstractC0091a {

    /* renamed from: a  reason: collision with root package name */
    private final c f3628a;

    public a(c cVar) {
        this.f3628a = cVar;
    }

    @Override // com.bumptech.glide.b.a.AbstractC0091a
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f3628a.b(i, i2, config);
    }

    @Override // com.bumptech.glide.b.a.AbstractC0091a
    public final void a(Bitmap bitmap) {
        if (!this.f3628a.a(bitmap)) {
            bitmap.recycle();
        }
    }
}
