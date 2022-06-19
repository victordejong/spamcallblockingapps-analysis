package p1727n3.p1807k.p1824j;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Method;
/* renamed from: n3.k.j.h */
/* loaded from: classes-dex2jar.jar:n3/k/j/h.class */
public class ActionMode$CallbackC26637h implements ActionMode.Callback {

    /* renamed from: a */
    public final ActionMode.Callback f74564a;

    /* renamed from: b */
    public final TextView f74565b;

    /* renamed from: c */
    public Class<?> f74566c;

    /* renamed from: d */
    public Method f74567d;

    /* renamed from: e */
    public boolean f74568e;

    /* renamed from: f */
    public boolean f74569f = false;

    public ActionMode$CallbackC26637h(ActionMode.Callback callback, TextView textView) {
        this.f74564a = callback;
        this.f74565b = textView;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f74564a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.f74564a.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f74564a.onDestroyActionMode(actionMode);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0168 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0105 A[SYNTHETIC] */
    @Override // android.view.ActionMode.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onPrepareActionMode(android.view.ActionMode r9, android.view.Menu r10) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1824j.ActionMode$CallbackC26637h.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
    }
}
