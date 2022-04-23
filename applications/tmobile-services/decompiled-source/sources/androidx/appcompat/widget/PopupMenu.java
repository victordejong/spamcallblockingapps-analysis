package androidx.appcompat.widget;

import android.view.MenuItem;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.ShowableListMenu;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu.class */
public class PopupMenu {

    /* renamed from: a */
    final MenuPopupHelper f1149a;

    /* renamed from: b */
    OnMenuItemClickListener f1150b;

    /* renamed from: c */
    OnDismissListener f1151c;

    /* renamed from: androidx.appcompat.widget.PopupMenu$1 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu$1.class */
    class C01121 implements MenuBuilder.Callback {

        /* renamed from: f */
        final /* synthetic */ PopupMenu f1152f;

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: a */
        public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = this.f1152f.f1150b;
            if (onMenuItemClickListener != null) {
                return onMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: b */
        public void mo9406b(@NonNull MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: androidx.appcompat.widget.PopupMenu$2 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu$2.class */
    class C01132 implements PopupWindow.OnDismissListener {

        /* renamed from: f */
        final /* synthetic */ PopupMenu f1153f;

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PopupMenu popupMenu = this.f1153f;
            OnDismissListener onDismissListener = popupMenu.f1151c;
            if (onDismissListener != null) {
                onDismissListener.m21408a(popupMenu);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.PopupMenu$3 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu$3.class */
    class C01143 extends ForwardingListener {

        /* renamed from: o */
        final /* synthetic */ PopupMenu f1154o;

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: b */
        public ShowableListMenu mo21411b() {
            return this.f1154o.f1149a.m21808c();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: c */
        protected boolean mo21410c() {
            this.f1154o.m21412b();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: d */
        protected boolean mo21409d() {
            this.f1154o.m21413a();
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu$OnDismissListener.class */
    public interface OnDismissListener {
        /* renamed from: a */
        void m21408a(PopupMenu popupMenu);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/PopupMenu$OnMenuItemClickListener.class */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* renamed from: a */
    public void m21413a() {
        this.f1149a.m21809b();
    }

    /* renamed from: b */
    public void m21412b() {
        this.f1149a.m21801k();
    }
}
