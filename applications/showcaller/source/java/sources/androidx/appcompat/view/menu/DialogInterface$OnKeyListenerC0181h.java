package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.appcompat.view.menu.AbstractC0193m;
import p020b.p021a.C1429g;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
class DialogInterface$OnKeyListenerC0181h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, AbstractC0193m.AbstractC0194a {

    /* renamed from: d */
    private C0178g f656d;

    /* renamed from: e */
    private DialogInterfaceC0146a f657e;

    /* renamed from: f */
    C0175e f658f;

    /* renamed from: g */
    private AbstractC0193m.AbstractC0194a f659g;

    public DialogInterface$OnKeyListenerC0181h(C0178g c0178g) {
        this.f656d = c0178g;
    }

    /* renamed from: a */
    public void m35365a() {
        DialogInterfaceC0146a dialogInterfaceC0146a = this.f657e;
        if (dialogInterfaceC0146a != null) {
            dialogInterfaceC0146a.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
    /* renamed from: b */
    public void mo35224b(C0178g c0178g, boolean z) {
        if (z || c0178g == this.f656d) {
            m35365a();
        }
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f659g;
        if (abstractC0194a != null) {
            abstractC0194a.mo35224b(c0178g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
    /* renamed from: c */
    public boolean mo35223c(C0178g c0178g) {
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f659g;
        if (abstractC0194a != null) {
            return abstractC0194a.mo35223c(c0178g);
        }
        return false;
    }

    /* renamed from: d */
    public void m35364d(IBinder iBinder) {
        C0178g c0178g = this.f656d;
        DialogInterfaceC0146a.C0147a c0147a = new DialogInterfaceC0146a.C0147a(c0178g.m35369w());
        C0175e c0175e = new C0175e(c0147a.m35573b(), C1429g.abc_list_menu_item_layout);
        this.f658f = c0175e;
        c0175e.mo35315g(this);
        this.f656d.m35393b(this.f658f);
        c0147a.m35572c(this.f658f.m35424a(), this);
        View m35414A = c0178g.m35414A();
        if (m35414A != null) {
            c0147a.m35570e(m35414A);
        } else {
            c0147a.m35569f(c0178g.m35367y()).m35558q(c0178g.m35366z());
        }
        c0147a.m35563l(this);
        DialogInterfaceC0146a m35574a = c0147a.m35574a();
        this.f657e = m35574a;
        m35574a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f657e.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f657e.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f656d.m35406N((C0182i) this.f658f.m35424a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f658f.mo4537b(this.f656d, true);
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
                Window window2 = this.f657e.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f657e.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f656d.m35387e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f656d.performShortcut(i, keyEvent, 0);
    }
}
