package p1727n3.p1734b.p1741e.p1742i;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import n3.b.a.g;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25466e;
/* renamed from: n3.b.e.i.h */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/h.class */
public class DialogInterface$OnKeyListenerC25472h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, AbstractC25483m.AbstractC25484a {

    /* renamed from: a */
    public C25469g f71240a;

    /* renamed from: b */
    public g f71241b;

    /* renamed from: c */
    public C25466e f71242c;

    public DialogInterface$OnKeyListenerC25472h(C25469g c25469g) {
        this.f71240a = c25469g;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
    /* renamed from: a */
    public void mo3413a(C25469g c25469g, boolean z) {
        g gVar;
        if ((z || c25469g == this.f71240a) && (gVar = this.f71241b) != null) {
            gVar.dismiss();
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
    /* renamed from: b */
    public boolean mo3412b(C25469g c25469g) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f71240a.m3466r(((C25466e.C25467a) this.f71242c.m3489h()).getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        C25466e c25466e = this.f71242c;
        C25469g c25469g = this.f71240a;
        AbstractC25483m.AbstractC25484a abstractC25484a = c25466e.f71205f;
        if (abstractC25484a != null) {
            abstractC25484a.mo3413a(c25469g, true);
        }
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
                Window window2 = this.f71241b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f71241b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f71240a.m3481c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f71240a.performShortcut(i, keyEvent, 0);
    }
}
