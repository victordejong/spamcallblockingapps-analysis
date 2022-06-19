package androidx.appcompat.view.menu;

import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ShowableListMenu.class */
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
