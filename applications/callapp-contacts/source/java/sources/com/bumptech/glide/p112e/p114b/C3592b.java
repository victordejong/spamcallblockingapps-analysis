package com.bumptech.glide.p112e.p114b;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
/* renamed from: com.bumptech.glide.e.b.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/b.class */
public final class C3592b implements AbstractC3595d<Drawable> {

    /* renamed from: a */
    private final int f13660a;

    /* renamed from: b */
    private final boolean f13661b;

    public C3592b(int i, boolean z) {
        this.f13660a = i;
        this.f13661b = z;
    }

    @Override // com.bumptech.glide.p112e.p114b.AbstractC3595d
    /* renamed from: a */
    public final /* synthetic */ boolean mo37664a(Drawable drawable, AbstractC3595d.AbstractC3596a abstractC3596a) {
        Drawable drawable2 = drawable;
        Drawable mo37663d = abstractC3596a.mo37663d();
        Drawable drawable3 = mo37663d;
        if (mo37663d == null) {
            drawable3 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable3, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.f13661b);
        transitionDrawable.startTransition(this.f13660a);
        abstractC3596a.mo37662d(transitionDrawable);
        return true;
    }
}
