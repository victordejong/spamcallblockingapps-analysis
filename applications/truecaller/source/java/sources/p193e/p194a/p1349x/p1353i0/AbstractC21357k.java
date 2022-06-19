package p193e.p194a.p1349x.p1353i0;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.truecaller.ghost_call.callergradient.GhostCallerGradientView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.x.i0.k */
/* loaded from: classes9-dex2jar.jar:e/a/x/i0/k.class */
public abstract class AbstractC21357k extends View implements b {

    /* renamed from: a */
    public ViewComponentManager f59775a;

    /* renamed from: b */
    public boolean f59776b;

    public AbstractC21357k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m9866b();
    }

    public AbstractC21357k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m9866b();
    }

    /* renamed from: Yt */
    public final Object m9867Yt() {
        if (this.f59775a == null) {
            this.f59775a = new ViewComponentManager(this, false);
        }
        return this.f59775a.Yt();
    }

    /* renamed from: b */
    public void m9866b() {
        if (!this.f59776b) {
            this.f59776b = true;
            ((AbstractC21356j) m9867Yt()).mo9868e((GhostCallerGradientView) this);
        }
    }
}
