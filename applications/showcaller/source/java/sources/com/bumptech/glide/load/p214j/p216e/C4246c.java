package com.bumptech.glide.load.p214j.p216e;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC4083s;
/* renamed from: com.bumptech.glide.load.j.e.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/e/c.class */
final class C4246c extends AbstractC4245b<Drawable> {
    private C4246c(Drawable drawable) {
        super(drawable);
    }

    /* renamed from: f */
    public static AbstractC4083s<Drawable> m23061f(Drawable drawable) {
        return drawable != null ? new C4246c(drawable) : null;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return Math.max(1, this.f13141d.getIntrinsicWidth() * this.f13141d.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<Drawable> mo22855d() {
        return this.f13141d.getClass();
    }
}
