package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.d.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/b.class */
public abstract class b<T extends Drawable> implements q, u<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f7635a;

    public b(T t) {
        this.f7635a = (T) ((Drawable) j.a(t, "Argument must not be null"));
    }

    @Override // com.bumptech.glide.load.engine.u
    public final /* synthetic */ Object b() {
        Drawable.ConstantState constantState = this.f7635a.getConstantState();
        return constantState == null ? this.f7635a : constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.engine.q
    public void e() {
        T t = this.f7635a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof c) {
            ((c) t).a().prepareToDraw();
        }
    }
}
