package com.uservoice.uservoicesdk.ui;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuItem;
import com.uservoice.uservoicesdk.activity.d;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
@SuppressLint({"NewApi"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/i.class */
public final class i implements MenuItem.OnActionExpandListener {

    /* renamed from: a  reason: collision with root package name */
    private final d f4795a;

    /* renamed from: b  reason: collision with root package name */
    private final Menu f4796b;

    public i(d dVar, Menu menu) {
        this.f4795a = dVar;
        this.f4796b = menu;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        MenuItem findItem = this.f4796b.findItem(d.b.v);
        if (findItem != null && e.a().f4631b.c()) {
            findItem.setVisible(true);
        }
        this.f4795a.c().a(false);
        this.f4795a.e();
        return true;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        this.f4795a.c().a(true);
        this.f4796b.findItem(d.b.v).setVisible(false);
        return true;
    }
}
