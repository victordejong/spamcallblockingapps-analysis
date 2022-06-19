package com.bumptech.glide.p112e.p113a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
/* renamed from: com.bumptech.glide.e.a.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/f.class */
public abstract class AbstractC3580f<Z> extends AbstractC3586k<ImageView, Z> implements AbstractC3595d.AbstractC3596a {

    /* renamed from: b */
    private Animatable f13633b;

    public AbstractC3580f(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public AbstractC3580f(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    /* renamed from: b */
    private void m37680b(Z z) {
        mo37681a((AbstractC3580f<Z>) z);
        m37679c((AbstractC3580f<Z>) z);
    }

    /* renamed from: c */
    private void m37679c(Z z) {
        if (!(z instanceof Animatable)) {
            this.f13633b = null;
            return;
        }
        Animatable animatable = (Animatable) z;
        this.f13633b = animatable;
        animatable.start();
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
        Animatable animatable = this.f13633b;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27009a(Drawable drawable) {
        super.mo27009a(drawable);
        m37680b((AbstractC3580f<Z>) null);
        mo37662d(drawable);
    }

    /* renamed from: a */
    protected abstract void mo37681a(Z z);

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27008a(Z z, AbstractC3595d<? super Z> abstractC3595d) {
        if (abstractC3595d == null || !abstractC3595d.mo37664a(z, this)) {
            m37680b((AbstractC3580f<Z>) z);
        } else {
            m37679c((AbstractC3580f<Z>) z);
        }
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
        Animatable animatable = this.f13633b;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3586k, com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37199b(Drawable drawable) {
        super.mo37199b(drawable);
        Animatable animatable = this.f13633b;
        if (animatable != null) {
            animatable.stop();
        }
        m37680b((AbstractC3580f<Z>) null);
        mo37662d(drawable);
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3586k, com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: c */
    public final void mo37657c(Drawable drawable) {
        super.mo37657c(drawable);
        m37680b((AbstractC3580f<Z>) null);
        mo37662d(drawable);
    }

    @Override // com.bumptech.glide.p112e.p114b.AbstractC3595d.AbstractC3596a
    /* renamed from: d */
    public final Drawable mo37663d() {
        return ((ImageView) this.f13638a).getDrawable();
    }

    @Override // com.bumptech.glide.p112e.p114b.AbstractC3595d.AbstractC3596a
    /* renamed from: d */
    public final void mo37662d(Drawable drawable) {
        ((ImageView) this.f13638a).setImageDrawable(drawable);
    }
}
