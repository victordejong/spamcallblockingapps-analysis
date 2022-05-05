package androidx.appcompat.widget;

import android.view.Menu;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DecorContentParent.class */
public interface DecorContentParent {
    /* renamed from: a */
    boolean mo21512a();

    /* renamed from: b */
    boolean mo21511b();

    /* renamed from: c */
    boolean mo21510c();

    /* renamed from: d */
    boolean mo21509d();

    /* renamed from: e */
    boolean mo21508e();

    /* renamed from: f */
    void mo21507f(int i);

    /* renamed from: g */
    void mo21506g();

    void setMenu(Menu menu, MenuPresenter.Callback callback);

    void setMenuPrepared();

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
