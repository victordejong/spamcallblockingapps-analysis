package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.C0083a;
import androidx.appcompat.app.DialogInterfaceC0114b;
import androidx.appcompat.view.menu.AbstractC0214m;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
class DialogInterface$OnClickListenerC0202h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, AbstractC0214m.AbstractC0215a {

    /* renamed from: a */
    C0196e f798a;

    /* renamed from: b */
    private C0199g f799b;

    /* renamed from: c */
    private DialogInterfaceC0114b f800c;

    /* renamed from: d */
    private AbstractC0214m.AbstractC0215a f801d;

    public DialogInterface$OnClickListenerC0202h(C0199g c0199g) {
        this.f799b = c0199g;
    }

    /* renamed from: a */
    public void m21847a() {
        if (this.f800c != null) {
            this.f800c.dismiss();
        }
    }

    /* renamed from: a */
    public void m21846a(IBinder iBinder) {
        C0199g c0199g = this.f799b;
        DialogInterfaceC0114b.C0115a c0115a = new DialogInterfaceC0114b.C0115a(c0199g.m21862f());
        this.f798a = new C0196e(c0115a.m22232a(), C0083a.C0090g.abc_list_menu_item_layout);
        this.f798a.mo3585a(this);
        this.f799b.m21884a(this.f798a);
        c0115a.m22227a(this.f798a.m21907a(), this);
        View m21850p = c0199g.m21850p();
        if (m21850p != null) {
            c0115a.m22229a(m21850p);
        } else {
            c0115a.m22230a(c0199g.m21851o()).m22226a(c0199g.m21852n());
        }
        c0115a.m22231a(this);
        this.f800c = c0115a.m22225b();
        this.f800c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f800c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f800c.show();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
    /* renamed from: a */
    public void mo21353a(C0199g c0199g, boolean z) {
        if (z || c0199g == this.f799b) {
            m21847a();
        }
        if (this.f801d != null) {
            this.f801d.mo21353a(c0199g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
    /* renamed from: a */
    public boolean mo21354a(C0199g c0199g) {
        return this.f801d != null ? this.f801d.mo21354a(c0199g) : false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f799b.m21888a((C0203i) this.f798a.m21907a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f798a.mo3586a(this.f799b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        boolean z = true;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f800c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f800c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f799b.m21878a(true);
                dialogInterface.dismiss();
            }
            return z;
        }
        z = this.f799b.performShortcut(i, keyEvent, 0);
        return z;
    }
}
