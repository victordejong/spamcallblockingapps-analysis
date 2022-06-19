package com.bumptech.glide.load.p214j.p216e;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC4078o;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.p214j.p218g.C4255c;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.j.e.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/e/b.class */
public abstract class AbstractC4245b<T extends Drawable> implements AbstractC4083s<T>, AbstractC4078o {

    /* renamed from: d */
    protected final T f13141d;

    public AbstractC4245b(T t) {
        this.f13141d = (T) C4382j.m22719d(t);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4078o
    /* renamed from: b */
    public void mo22888b() {
        T t = this.f13141d;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (!(t instanceof C4255c)) {
        } else {
            ((C4255c) t).m23034e().prepareToDraw();
        }
    }

    /* renamed from: e */
    public final T get() {
        Drawable.ConstantState constantState = this.f13141d.getConstantState();
        return constantState == null ? this.f13141d : (T) constantState.newDrawable();
    }
}
