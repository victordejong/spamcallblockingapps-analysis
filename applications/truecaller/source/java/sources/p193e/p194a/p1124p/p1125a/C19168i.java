package p193e.p194a.p1124p.p1125a;

import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import s1.z.c.a0;
import s1.z.c.l;
/* renamed from: e.a.p.a.i */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/i.class */
public final class C19168i implements AppBarLayout.c {

    /* renamed from: a */
    public final /* synthetic */ C19138b f53466a;

    /* renamed from: b */
    public final /* synthetic */ a0 f53467b;

    /* renamed from: c */
    public final /* synthetic */ String f53468c;

    public C19168i(C19138b c19138b, a0 a0Var, String str) {
        this.f53466a = c19138b;
        this.f53467b = a0Var;
        this.f53468c = str;
    }

    /* renamed from: Xm */
    public final void m13948Xm(AppBarLayout appBarLayout, int i) {
        a0 a0Var = this.f53467b;
        if (a0Var.a == -1) {
            l.d(appBarLayout, "appBar");
            a0Var.a = appBarLayout.getTotalScrollRange();
        }
        if (this.f53467b.a + i == 0) {
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) this.f53466a.f53376N.getValue();
            if (collapsingToolbarLayout == null) {
                return;
            }
            collapsingToolbarLayout.setTitle(this.f53468c);
            return;
        }
        CollapsingToolbarLayout collapsingToolbarLayout2 = (CollapsingToolbarLayout) this.f53466a.f53376N.getValue();
        if (collapsingToolbarLayout2 == null) {
            return;
        }
        collapsingToolbarLayout2.setTitle("");
    }
}
