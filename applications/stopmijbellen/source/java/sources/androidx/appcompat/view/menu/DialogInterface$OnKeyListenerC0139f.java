package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.DialogC0122b;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0133c;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class DialogInterface$OnKeyListenerC0139f implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, AbstractC0144i.AbstractC0145a {

    /* renamed from: a */
    public C0136e f451a;

    /* renamed from: b */
    public DialogC0122b f452b;

    /* renamed from: c */
    public C0133c f453c;

    public DialogInterface$OnKeyListenerC0139f(C0136e c0136e) {
        this.f451a = c0136e;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
    /* renamed from: a */
    public void mo3279a(C0136e c0136e, boolean z) {
        DialogC0122b dialogC0122b;
        if ((z || c0136e == this.f451a) && (dialogC0122b = this.f452b) != null) {
            dialogC0122b.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
    /* renamed from: b */
    public boolean mo3278b(C0136e c0136e) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f451a.m8707q(((C0133c.C0134a) this.f453c.m8719b()).getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        C0133c c0133c = this.f453c;
        C0136e c0136e = this.f451a;
        AbstractC0144i.AbstractC0145a abstractC0145a = c0133c.f416e;
        if (abstractC0145a != null) {
            abstractC0145a.mo3279a(c0136e, true);
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
                Window window2 = this.f452b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f452b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f451a.m8712c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f451a.performShortcut(i, keyEvent, 0);
    }
}
