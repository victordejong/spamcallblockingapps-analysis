package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuPresenter.class */
public interface MenuPresenter {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuPresenter$Callback.class */
    public interface Callback {
        /* renamed from: c */
        void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z);

        /* renamed from: d */
        boolean mo21697d(@NonNull MenuBuilder menuBuilder);
    }

    /* renamed from: c */
    void mo9524c(MenuBuilder menuBuilder, boolean z);

    /* renamed from: d */
    void mo9523d(boolean z);

    /* renamed from: e */
    boolean mo9522e();

    /* renamed from: f */
    boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    /* renamed from: g */
    boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    int getId();

    /* renamed from: h */
    void mo9519h(Callback callback);

    /* renamed from: i */
    void mo9518i(Context context, MenuBuilder menuBuilder);

    /* renamed from: j */
    void mo9517j(Parcelable parcelable);

    /* renamed from: l */
    boolean mo9515l(SubMenuBuilder subMenuBuilder);

    /* renamed from: m */
    Parcelable mo9514m();
}
