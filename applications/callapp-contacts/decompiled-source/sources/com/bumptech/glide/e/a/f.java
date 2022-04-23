package com.bumptech.glide.e.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.e.b.d;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/f.class */
public abstract class f<Z> extends k<ImageView, Z> implements d.a {

    /* renamed from: b  reason: collision with root package name */
    private Animatable f7282b;

    public f(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public f(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    private void b(Z z) {
        a((f<Z>) z);
        c((f<Z>) z);
    }

    private void c(Z z) {
        if (z instanceof Animatable) {
            Animatable animatable = (Animatable) z;
            this.f7282b = animatable;
            animatable.start();
            return;
        }
        this.f7282b = null;
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.manager.m
    public final void a() {
        Animatable animatable = this.f7282b;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public final void a(Drawable drawable) {
        super.a(drawable);
        b((f<Z>) null);
        d(drawable);
    }

    protected abstract void a(Z z);

    @Override // com.bumptech.glide.e.a.j
    public final void a(Z z, d<? super Z> dVar) {
        if (dVar == null || !dVar.a(z, this)) {
            b((f<Z>) z);
        } else {
            c((f<Z>) z);
        }
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.manager.m
    public final void b() {
        Animatable animatable = this.f7282b;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.e.a.k, com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public final void b(Drawable drawable) {
        super.b(drawable);
        Animatable animatable = this.f7282b;
        if (animatable != null) {
            animatable.stop();
        }
        b((f<Z>) null);
        d(drawable);
    }

    @Override // com.bumptech.glide.e.a.k, com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public final void c(Drawable drawable) {
        super.c(drawable);
        b((f<Z>) null);
        d(drawable);
    }

    @Override // com.bumptech.glide.e.b.d.a
    public final Drawable d() {
        return ((ImageView) this.f7287a).getDrawable();
    }

    @Override // com.bumptech.glide.e.b.d.a
    public final void d(Drawable drawable) {
        ((ImageView) this.f7287a).setImageDrawable(drawable);
    }
}
