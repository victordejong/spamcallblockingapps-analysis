package com.bumptech.glide.load.p083c.p086c;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.AbstractC1766p;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.p083c.p088e.C1643c;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.c.c.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/c/b.class */
public abstract class AbstractC1633b<T extends Drawable> implements AbstractC1766p, AbstractC1771t<T> {

    /* renamed from: a */
    protected final T f5032a;

    public AbstractC1633b(T t) {
        this.f5032a = (T) C1456i.m16989a(t);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1766p
    /* renamed from: a */
    public void mo16362a() {
        if (this.f5032a instanceof BitmapDrawable) {
            ((BitmapDrawable) this.f5032a).getBitmap().prepareToDraw();
        } else if (!(this.f5032a instanceof C1643c)) {
        } else {
            ((C1643c) this.f5032a).m16661b().prepareToDraw();
        }
    }

    /* renamed from: b */
    public final T mo16347d() {
        Drawable.ConstantState constantState = this.f5032a.getConstantState();
        return (T) (constantState == null ? this.f5032a : constantState.newDrawable());
    }
}
