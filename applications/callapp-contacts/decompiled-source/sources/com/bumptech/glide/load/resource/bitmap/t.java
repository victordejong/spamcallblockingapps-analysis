package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/t.class */
public final class t implements q, u<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f7690a;

    /* renamed from: b  reason: collision with root package name */
    private final u<Bitmap> f7691b;

    private t(Resources resources, u<Bitmap> uVar) {
        this.f7690a = (Resources) j.a(resources, "Argument must not be null");
        this.f7691b = (u) j.a(uVar, "Argument must not be null");
    }

    public static u<BitmapDrawable> a(Resources resources, u<Bitmap> uVar) {
        if (uVar == null) {
            return null;
        }
        return new t(resources, uVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final /* synthetic */ BitmapDrawable b() {
        return new BitmapDrawable(this.f7690a, this.f7691b.b());
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return this.f7691b.c();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
        this.f7691b.d();
    }

    @Override // com.bumptech.glide.load.engine.q
    public final void e() {
        u<Bitmap> uVar = this.f7691b;
        if (uVar instanceof q) {
            ((q) uVar).e();
        }
    }
}
