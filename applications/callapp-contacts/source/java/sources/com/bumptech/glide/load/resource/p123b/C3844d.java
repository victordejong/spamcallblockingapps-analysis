package com.bumptech.glide.load.resource.p123b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC3811u;
/* renamed from: com.bumptech.glide.load.resource.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/d.class */
final class C3844d extends AbstractC3842b<Drawable> {
    private C3844d(Drawable drawable) {
        super(drawable);
    }

    /* renamed from: a */
    public static AbstractC3811u<Drawable> m37309a(Drawable drawable) {
        if (drawable != null) {
            return new C3844d(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<Drawable> mo37213a() {
        return this.f14196a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return Math.max(1, this.f14196a.getIntrinsicWidth() * this.f14196a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
    }
}
