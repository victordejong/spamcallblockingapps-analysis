package com.bumptech.glide.g.a;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.g.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/b.class */
public final class b<T extends Drawable> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f3425a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3426b;

    public b(c<T> cVar, int i) {
        this.f3425a = cVar;
        this.f3426b = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.g.a.c
    public final /* synthetic */ boolean a(Object obj, c.a aVar) {
        boolean z = true;
        Drawable drawable = (Drawable) obj;
        Drawable currentDrawable = aVar.getCurrentDrawable();
        if (currentDrawable != null) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable});
            transitionDrawable.setCrossFadeEnabled(true);
            transitionDrawable.startTransition(this.f3426b);
            aVar.setDrawable(transitionDrawable);
        } else {
            this.f3425a.a(drawable, aVar);
            z = false;
        }
        return z;
    }
}
