package p000;

import android.content.Context;
import android.os.Parcelable;
/* renamed from: d1 */
/* loaded from: classes-dex2jar.jar:d1.class */
public interface AbstractC1270d1 {

    /* renamed from: d1$a */
    /* loaded from: classes-dex2jar.jar:d1$a.class */
    public interface AbstractC1271a {
        /* renamed from: a */
        boolean m2914a(x0 x0Var);

        void onCloseMenu(x0 x0Var, boolean z);
    }

    boolean collapseItemActionView(x0 x0Var, z0 z0Var);

    boolean expandItemActionView(x0 x0Var, z0 z0Var);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, x0 x0Var);

    void onCloseMenu(x0 x0Var, boolean z);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(i1 i1Var);

    void setCallback(AbstractC1271a abstractC1271a);

    void updateMenuView(boolean z);
}
