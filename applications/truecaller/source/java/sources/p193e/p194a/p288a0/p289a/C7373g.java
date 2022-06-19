package p193e.p194a.p288a0.p289a;

import android.view.MenuItem;
import android.widget.PopupMenu;
import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.a0.a.g */
/* loaded from: classes12-dex2jar.jar:e/a/a0/a/g.class */
public final class C7373g implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7376j f23490a;

    /* renamed from: b */
    public final /* synthetic */ List f23491b;

    public C7373g(AbstractC7376j abstractC7376j, List list) {
        this.f23490a = abstractC7376j;
        this.f23491b = list;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        AbstractC7376j abstractC7376j = this.f23490a;
        List list = this.f23491b;
        l.d(menuItem, "item");
        abstractC7376j.mo29724vn((AbstractC7379m) list.get(menuItem.getOrder()));
        return true;
    }
}
