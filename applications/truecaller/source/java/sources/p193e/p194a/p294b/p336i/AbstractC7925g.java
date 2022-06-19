package p193e.p194a.p294b.p336i;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.b.i.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/g.class */
public abstract class AbstractC7925g extends FrameLayout implements b {

    /* renamed from: a */
    public ViewComponentManager f24547a;

    /* renamed from: b */
    public boolean f24548b;

    public AbstractC7925g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m29104a();
    }

    public AbstractC7925g(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m29104a();
    }

    /* renamed from: Yt */
    public final Object m29105Yt() {
        if (this.f24547a == null) {
            this.f24547a = new ViewComponentManager(this, false);
        }
        return this.f24547a.Yt();
    }

    /* renamed from: a */
    public void m29104a() {
        if (!this.f24548b) {
            this.f24548b = true;
            ((AbstractC7918b) m29105Yt()).mo11865c((AbstractC7917a) this);
        }
    }
}
