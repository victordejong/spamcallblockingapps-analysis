package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/d.class */
final class d extends b<Drawable> {
    private d(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u<Drawable> a(Drawable drawable) {
        if (drawable != null) {
            return new d(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<Drawable> a() {
        return this.f7635a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return Math.max(1, this.f7635a.getIntrinsicWidth() * this.f7635a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
    }
}
