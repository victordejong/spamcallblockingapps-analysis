package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.c;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/d.class */
final class d extends c {

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/d$a.class */
    private static final class a extends c.a {
        a(c.a aVar) {
            super(aVar);
        }

        @Override // android.support.v4.a.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Drawable drawable) {
        super(drawable);
    }

    d(c.a aVar, Resources resources) {
        super(aVar, resources);
    }

    @Override // android.support.v4.a.a.c
    protected final Drawable a(Drawable.ConstantState constantState, Resources resources) {
        return constantState.newDrawable(resources);
    }

    @Override // android.support.v4.a.a.c
    final c.a a() {
        return new a(this.f22b);
    }
}
