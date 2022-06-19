package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;
/* renamed from: androidx.appcompat.view.menu.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/m.class */
public interface AbstractC0197m {

    /* renamed from: androidx.appcompat.view.menu.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/m$a.class */
    public interface AbstractC0198a {
        /* renamed from: a */
        void mo7435a(C0182g c0182g, boolean z);

        /* renamed from: a */
        boolean mo7436a(C0182g c0182g);
    }

    boolean collapseItemActionView(C0182g c0182g, C0186i c0186i);

    boolean expandItemActionView(C0182g c0182g, C0186i c0186i);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, C0182g c0182g);

    void onCloseMenu(C0182g c0182g, boolean z);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r);

    void setCallback(AbstractC0198a abstractC0198a);

    void updateMenuView(boolean z);
}
