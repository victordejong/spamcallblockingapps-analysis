package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.m;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
final class h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, m.a {

    /* renamed from: a  reason: collision with root package name */
    g f812a;

    /* renamed from: b  reason: collision with root package name */
    c f813b;

    /* renamed from: c  reason: collision with root package name */
    e f814c;

    /* renamed from: d  reason: collision with root package name */
    private m.a f815d;

    public h(g gVar) {
        this.f812a = gVar;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public final void a(g gVar, boolean z) {
        c cVar;
        if ((z || gVar == this.f812a) && (cVar = this.f813b) != null) {
            cVar.dismiss();
        }
        m.a aVar = this.f815d;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public final boolean a(g gVar) {
        m.a aVar = this.f815d;
        if (aVar != null) {
            return aVar.a(gVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f812a.a((i) this.f814c.c().getItem(i), (m) null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f814c.a(this.f812a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f813b.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f813b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f812a.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f812a.performShortcut(i, keyEvent, 0);
    }
}
