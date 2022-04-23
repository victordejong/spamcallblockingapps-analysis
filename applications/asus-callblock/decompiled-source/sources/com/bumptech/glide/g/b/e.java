package com.bumptech.glide.g.b;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.g.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/e.class */
public abstract class e<Z> extends k<ImageView, Z> implements c.a {
    public e(ImageView imageView) {
        super(imageView);
    }

    protected abstract void a(Z z);

    @Override // com.bumptech.glide.g.a.c.a
    public Drawable getCurrentDrawable() {
        return ((ImageView) this.d).getDrawable();
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
    public void onLoadCleared(Drawable drawable) {
        ((ImageView) this.d).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
    public void onLoadFailed(Exception exc, Drawable drawable) {
        ((ImageView) this.d).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
    public void onLoadStarted(Drawable drawable) {
        ((ImageView) this.d).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.g.b.j
    public void onResourceReady(Z z, c<? super Z> cVar) {
        if (cVar == null || !cVar.a(z, this)) {
            a(z);
        }
    }

    @Override // com.bumptech.glide.g.a.c.a
    public void setDrawable(Drawable drawable) {
        ((ImageView) this.d).setImageDrawable(drawable);
    }
}
