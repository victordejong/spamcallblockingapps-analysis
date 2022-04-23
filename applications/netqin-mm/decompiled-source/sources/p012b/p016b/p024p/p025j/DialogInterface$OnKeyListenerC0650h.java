package p012b.p016b.p024p.p025j;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import p012b.p016b.C0580g;
import p012b.p016b.p017k.DialogInterfaceC0584a;
import p012b.p016b.p024p.p025j.AbstractC0662m;
/* renamed from: b.b.p.j.h */
/* loaded from: classes-dex2jar.jar:b/b/p/j/h.class */
public class DialogInterface$OnKeyListenerC0650h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, AbstractC0662m.AbstractC0663a {

    /* renamed from: a */
    public C0647g f3255a;

    /* renamed from: b */
    public DialogInterfaceC0584a f3256b;

    /* renamed from: c */
    public C0644e f3257c;

    /* renamed from: d */
    public AbstractC0662m.AbstractC0663a f3258d;

    public DialogInterface$OnKeyListenerC0650h(C0647g gVar) {
        this.f3255a = gVar;
    }

    /* renamed from: a */
    public void m36574a() {
        DialogInterfaceC0584a aVar = this.f3256b;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    /* renamed from: a */
    public void m36573a(IBinder iBinder) {
        C0647g gVar = this.f3255a;
        DialogInterfaceC0584a.C0585a aVar = new DialogInterfaceC0584a.C0585a(gVar.m36591e());
        C0644e eVar = new C0644e(aVar.m36888b(), C0580g.abc_list_menu_item_layout);
        this.f3257c = eVar;
        eVar.mo36511a(this);
        this.f3255a.m36610a(this.f3257c);
        aVar.m36891a(this.f3257c.m36630a(), this);
        View i = gVar.m36584i();
        if (i != null) {
            aVar.m36893a(i);
        } else {
            aVar.m36894a(gVar.m36586g());
            aVar.m36890a(gVar.m36585h());
        }
        aVar.m36895a(this);
        DialogInterfaceC0584a a = aVar.m36898a();
        this.f3256b = a;
        a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f3256b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f3256b.show();
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
    /* renamed from: a */
    public void mo36521a(C0647g gVar, boolean z) {
        if (z || gVar == this.f3255a) {
            m36574a();
        }
        AbstractC0662m.AbstractC0663a aVar = this.f3258d;
        if (aVar != null) {
            aVar.mo36521a(gVar, z);
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
    /* renamed from: a */
    public boolean mo36522a(C0647g gVar) {
        AbstractC0662m.AbstractC0663a aVar = this.f3258d;
        if (aVar != null) {
            return aVar.mo36522a(gVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f3255a.m36613a((C0651i) this.f3257c.m36630a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f3257c.mo36512a(this.f3255a, true);
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
                Window window2 = this.f3256b.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f3256b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f3255a.m36604a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f3255a.performShortcut(i, keyEvent, 0);
    }
}
