package p193e.p194a.p195a.p224d;

import android.view.MenuItem;
import android.widget.PopupMenu;
import s1.z.c.l;
/* renamed from: e.a.a.d.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/i.class */
public final class C5921i implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ C5903b f19801a;

    public C5921i(C5903b c5903b) {
        this.f19801a = c5903b;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        boolean z;
        l.d(menuItem, "item");
        if (menuItem.getItemId() != 2131364919) {
            z = false;
        } else {
            AbstractC5928p abstractC5928p = this.f19801a.f19719d;
            if (abstractC5928p == null) {
                l.l("groupPresenter");
                throw null;
            }
            z = abstractC5928p.mo32190Oj();
        }
        return z;
    }
}
