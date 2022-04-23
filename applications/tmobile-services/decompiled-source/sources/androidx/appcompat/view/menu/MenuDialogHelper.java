package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuDialogHelper.class */
class MenuDialogHelper implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, MenuPresenter.Callback {

    /* renamed from: f */
    private MenuBuilder f657f;

    /* renamed from: g */
    private AlertDialog f658g;

    /* renamed from: h */
    ListMenuPresenter f659h;

    /* renamed from: i */
    private MenuPresenter.Callback f660i;

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.f657f = menuBuilder;
    }

    /* renamed from: a */
    public void m21846a() {
        AlertDialog alertDialog = this.f658g;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: b */
    public void m21845b(IBinder iBinder) {
        MenuBuilder menuBuilder = this.f657f;
        AlertDialog.Builder builder = new AlertDialog.Builder(menuBuilder.m21850w());
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(builder.m22276b(), C0042R.layout.abc_list_menu_item_layout);
        this.f659h = listMenuPresenter;
        listMenuPresenter.mo9519h(this);
        this.f657f.m21874b(this.f659h);
        builder.mo9822c(this.f659h.m21905a(), this);
        View A = menuBuilder.m21895A();
        if (A != null) {
            builder.mo9821d(A);
        } else {
            builder.mo9820e(menuBuilder.m21848y());
            builder.mo9812m(menuBuilder.m21847z());
        }
        builder.mo9816i(this);
        AlertDialog a = builder.mo9823a();
        this.f658g = a;
        a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f658g.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f658g.show();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    /* renamed from: c */
    public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.f657f) {
            m21846a();
        }
        MenuPresenter.Callback callback = this.f660i;
        if (callback != null) {
            callback.mo21698c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    /* renamed from: d */
    public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
        MenuPresenter.Callback callback = this.f660i;
        if (callback != null) {
            return callback.mo21697d(menuBuilder);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f657f.m21887N((MenuItemImpl) this.f659h.m21905a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f659h.mo9524c(this.f657f, true);
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
                Window window2 = this.f658g.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f658g.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f657f.m21868e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f657f.performShortcut(i, keyEvent, 0);
    }
}
