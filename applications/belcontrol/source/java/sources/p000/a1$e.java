package p000;

import android.view.MenuItem;
/* renamed from: a1$e */
/* loaded from: classes-dex2jar.jar:a1$e.class */
public class a1$e implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    public final MenuItem.OnMenuItemClickListener f15a;

    /* renamed from: b */
    public final /* synthetic */ a1 f16b;

    public a1$e(a1 a1Var, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f16b = a1Var;
        this.f15a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f15a.onMenuItemClick(this.f16b.c(menuItem));
    }
}
