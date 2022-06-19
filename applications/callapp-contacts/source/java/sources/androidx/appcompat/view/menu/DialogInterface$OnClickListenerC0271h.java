package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.DialogInterfaceC0196c;
import androidx.appcompat.view.menu.AbstractC0283m;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
final class DialogInterface$OnClickListenerC0271h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, AbstractC0283m.AbstractC0284a {

    /* renamed from: a */
    C0268g f908a;

    /* renamed from: b */
    DialogInterfaceC0196c f909b;

    /* renamed from: c */
    C0265e f910c;

    /* renamed from: d */
    private AbstractC0283m.AbstractC0284a f911d;

    public DialogInterface$OnClickListenerC0271h(C0268g c0268g) {
        this.f908a = c0268g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
    /* renamed from: a */
    public final void mo45990a(C0268g c0268g, boolean z) {
        DialogInterfaceC0196c dialogInterfaceC0196c;
        if ((z || c0268g == this.f908a) && (dialogInterfaceC0196c = this.f909b) != null) {
            dialogInterfaceC0196c.dismiss();
        }
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f911d;
        if (abstractC0284a != null) {
            abstractC0284a.mo45990a(c0268g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
    /* renamed from: a */
    public final boolean mo45991a(C0268g c0268g) {
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f911d;
        if (abstractC0284a != null) {
            return abstractC0284a.mo45991a(c0268g);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f908a.m46102a((C0272i) this.f910c.m46113c().getItem(i), (AbstractC0283m) null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f910c.mo10545a(this.f908a, true);
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
                Window window2 = this.f909b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f909b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f908a.m46094a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f908a.performShortcut(i, keyEvent, 0);
    }
}
