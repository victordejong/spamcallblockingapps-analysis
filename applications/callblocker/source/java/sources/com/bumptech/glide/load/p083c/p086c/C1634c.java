package com.bumptech.glide.load.p083c.p086c;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC1771t;
/* renamed from: com.bumptech.glide.load.c.c.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/c/c.class */
final class C1634c extends AbstractC1633b<Drawable> {
    private C1634c(Drawable drawable) {
        super(drawable);
    }

    /* renamed from: a */
    public static AbstractC1771t<Drawable> m16685a(Drawable drawable) {
        return drawable != null ? new C1634c(drawable) : null;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<Drawable> mo16348c() {
        return this.f5032a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return Math.max(1, this.f5032a.getIntrinsicWidth() * this.f5032a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
    }
}
