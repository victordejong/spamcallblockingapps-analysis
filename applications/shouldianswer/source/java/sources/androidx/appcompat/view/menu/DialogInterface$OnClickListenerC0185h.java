package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.C0051a;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.view.menu.AbstractC0197m;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
class DialogInterface$OnClickListenerC0185h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, AbstractC0197m.AbstractC0198a {

    /* renamed from: a */
    C0179e f719a;

    /* renamed from: b */
    private C0182g f720b;

    /* renamed from: c */
    private DialogInterfaceC0090d f721c;

    /* renamed from: d */
    private AbstractC0197m.AbstractC0198a f722d;

    public DialogInterface$OnClickListenerC0185h(C0182g c0182g) {
        this.f720b = c0182g;
    }

    /* renamed from: a */
    public void m7566a() {
        DialogInterfaceC0090d dialogInterfaceC0090d = this.f721c;
        if (dialogInterfaceC0090d != null) {
            dialogInterfaceC0090d.dismiss();
        }
    }

    /* renamed from: a */
    public void m7565a(IBinder iBinder) {
        C0182g c0182g = this.f720b;
        DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(c0182g.getContext());
        this.f719a = new C0179e(c0091a.m7929a(), C0051a.C0058g.abc_list_menu_item_layout);
        this.f719a.setCallback(this);
        this.f720b.addMenuPresenter(this.f719a);
        c0091a.m7921a(this.f719a.m7576a(), this);
        View headerView = c0182g.getHeaderView();
        if (headerView != null) {
            c0091a.m7923a(headerView);
        } else {
            c0091a.m7924a(c0182g.getHeaderIcon()).m7920a(c0182g.getHeaderTitle());
        }
        c0091a.m7925a(this);
        this.f721c = c0091a.m7916b();
        this.f721c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f721c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f721c.show();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
    /* renamed from: a */
    public void mo7435a(C0182g c0182g, boolean z) {
        if (z || c0182g == this.f720b) {
            m7566a();
        }
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f722d;
        if (abstractC0198a != null) {
            abstractC0198a.mo7435a(c0182g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
    /* renamed from: a */
    public boolean mo7436a(C0182g c0182g) {
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f722d;
        if (abstractC0198a != null) {
            return abstractC0198a.mo7436a(c0182g);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f720b.performItemAction((C0186i) this.f719a.m7576a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f719a.onCloseMenu(this.f720b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f721c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f721c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f720b.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f720b.performShortcut(i, keyEvent, 0);
    }
}
