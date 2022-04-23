package com.uservoice.uservoicesdk.ui;

import android.text.TextUtils;
import android.widget.SearchView;
import android.widget.Toast;
import com.uservoice.uservoicesdk.activity.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.g;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/j.class */
public final class j implements SearchView.OnQueryTextListener {

    /* renamed from: a  reason: collision with root package name */
    private final d f4797a;

    public j(d dVar) {
        this.f4797a = dVar;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextChange(String str) {
        this.f4797a.c().a(str);
        if (str.length() > 0) {
            this.f4797a.d();
            return true;
        }
        this.f4797a.e();
        return true;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextSubmit(String str) {
        if (TextUtils.equals(str.toLowerCase(), "sdk version")) {
            Toast.makeText(e.a().f4630a, g.b(), 1).show();
        }
        this.f4797a.c().a(str);
        return true;
    }
}
