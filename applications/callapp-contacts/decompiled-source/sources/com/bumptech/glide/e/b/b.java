package com.bumptech.glide.e.b;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.e.b.d;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/b.class */
public final class b implements d<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f7303a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f7304b;

    public b(int i, boolean z) {
        this.f7303a = i;
        this.f7304b = z;
    }

    @Override // com.bumptech.glide.e.b.d
    public final /* synthetic */ boolean a(Drawable drawable, d.a aVar) {
        Drawable drawable2 = drawable;
        Drawable d2 = aVar.d();
        Drawable drawable3 = d2;
        if (d2 == null) {
            drawable3 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable3, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.f7304b);
        transitionDrawable.startTransition(this.f7303a);
        aVar.d(transitionDrawable);
        return true;
    }
}
