package com.bumptech.glide.request.p225h;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.request.p226i.AbstractC4417b;
/* renamed from: com.bumptech.glide.request.h.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/e.class */
public abstract class AbstractC4408e<Z> extends AbstractC4412i<ImageView, Z> implements AbstractC4417b.AbstractC4418a {

    /* renamed from: k */
    private Animatable f13485k;

    public AbstractC4408e(ImageView imageView) {
        super(imageView);
    }

    /* renamed from: n */
    private void m22566n(Z z) {
        if (!(z instanceof Animatable)) {
            this.f13485k = null;
            return;
        }
        Animatable animatable = (Animatable) z;
        this.f13485k = animatable;
        animatable.start();
    }

    /* renamed from: q */
    private void m22563q(Z z) {
        mo22564p(z);
        m22566n(z);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.manager.AbstractC4345m
    /* renamed from: a */
    public void mo22567a() {
        Animatable animatable = this.f13485k;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: c */
    public void mo22560c(Z z, AbstractC4417b<? super Z> abstractC4417b) {
        if (abstractC4417b == null || !abstractC4417b.mo22536a(z, this)) {
            m22563q(z);
        } else {
            m22566n(z);
        }
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: e */
    public void mo22559e(Drawable drawable) {
        super.mo22559e(drawable);
        m22563q(null);
        m22565o(drawable);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4412i, com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: f */
    public void mo22556f(Drawable drawable) {
        super.mo22556f(drawable);
        m22563q(null);
        m22565o(drawable);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4412i, com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: h */
    public void mo22554h(Drawable drawable) {
        super.mo22554h(drawable);
        Animatable animatable = this.f13485k;
        if (animatable != null) {
            animatable.stop();
        }
        m22563q(null);
        m22565o(drawable);
    }

    /* renamed from: o */
    public void m22565o(Drawable drawable) {
        ((ImageView) this.f13488f).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.manager.AbstractC4345m
    public void onStart() {
        Animatable animatable = this.f13485k;
        if (animatable != null) {
            animatable.start();
        }
    }

    /* renamed from: p */
    protected abstract void mo22564p(Z z);
}
