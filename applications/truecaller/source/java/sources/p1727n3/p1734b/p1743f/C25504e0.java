package p1727n3.p1734b.p1743f;

import android.view.MenuItem;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.C25508g0;
/* renamed from: n3.b.f.e0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/e0.class */
public class C25504e0 implements C25469g.AbstractC25470a {

    /* renamed from: a */
    public final /* synthetic */ C25508g0 f71372a;

    public C25504e0(C25508g0 c25508g0) {
        this.f71372a = c25508g0;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: a */
    public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
        C25508g0.AbstractC25510b abstractC25510b = this.f71372a.f71383e;
        if (abstractC25510b != null) {
            return abstractC25510b.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: b */
    public void mo3368b(C25469g c25469g) {
    }
}
