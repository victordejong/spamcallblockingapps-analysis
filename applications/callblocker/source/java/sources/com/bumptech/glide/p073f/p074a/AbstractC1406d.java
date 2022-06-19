package com.bumptech.glide.p073f.p074a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.p073f.p075b.AbstractC1417b;
/* renamed from: com.bumptech.glide.f.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/d.class */
public abstract class AbstractC1406d<Z> extends AbstractC1411i<ImageView, Z> implements AbstractC1417b.AbstractC1418a {

    /* renamed from: b */
    private Animatable f4632b;

    public AbstractC1406d(ImageView imageView) {
        super(imageView);
    }

    /* renamed from: b */
    private void m17191b(Z z) {
        mo17192a((AbstractC1406d<Z>) z);
        m17190c((AbstractC1406d<Z>) z);
    }

    /* renamed from: c */
    private void m17190c(Z z) {
        if (!(z instanceof Animatable)) {
            this.f4632b = null;
            return;
        }
        this.f4632b = (Animatable) z;
        this.f4632b.start();
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1411i, com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public void mo17185a(Drawable drawable) {
        super.mo17185a(drawable);
        if (this.f4632b != null) {
            this.f4632b.stop();
        }
        m17191b((AbstractC1406d<Z>) null);
        m17189e(drawable);
    }

    /* renamed from: a */
    protected abstract void mo17192a(Z z);

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public void mo16627a(Z z, AbstractC1417b<? super Z> abstractC1417b) {
        if (abstractC1417b == null || !abstractC1417b.mo17164a(z, this)) {
            m17191b((AbstractC1406d<Z>) z);
        } else {
            m17190c((AbstractC1406d<Z>) z);
        }
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1411i, com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: b */
    public void mo17180b(Drawable drawable) {
        super.mo17180b(drawable);
        m17191b((AbstractC1406d<Z>) null);
        m17189e(drawable);
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: c */
    public void mo16955c() {
        if (this.f4632b != null) {
            this.f4632b.start();
        }
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: c */
    public void mo17187c(Drawable drawable) {
        super.mo17187c(drawable);
        m17191b((AbstractC1406d<Z>) null);
        m17189e(drawable);
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: d */
    public void mo16953d() {
        if (this.f4632b != null) {
            this.f4632b.stop();
        }
    }

    /* renamed from: e */
    public void m17189e(Drawable drawable) {
        ((ImageView) this.f4637a).setImageDrawable(drawable);
    }
}
