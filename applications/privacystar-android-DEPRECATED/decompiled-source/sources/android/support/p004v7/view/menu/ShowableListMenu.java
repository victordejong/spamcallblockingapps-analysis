package android.support.p004v7.view.menu;

import android.support.annotation.RestrictTo;
import android.widget.ListView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.ShowableListMenu */
/* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/ShowableListMenu.class */
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
