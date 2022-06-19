package com.bumptech.glide.load.resource.p123b;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC3806q;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.resource.b.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/b.class */
public abstract class AbstractC3842b<T extends Drawable> implements AbstractC3806q, AbstractC3811u<T> {

    /* renamed from: a */
    protected final T f14196a;

    public AbstractC3842b(T t) {
        this.f14196a = (T) C3643j.m37588a(t, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final /* synthetic */ Object mo37235b() {
        Drawable.ConstantState constantState = this.f14196a.getConstantState();
        return constantState == null ? this.f14196a : constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3806q
    /* renamed from: e */
    public void mo37210e() {
        T t = this.f14196a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (!(t instanceof C3909c)) {
        } else {
            ((C3909c) t).m37223a().prepareToDraw();
        }
    }
}
