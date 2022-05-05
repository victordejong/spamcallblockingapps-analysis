package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/BaseMenuPresenter.class */
public abstract class BaseMenuPresenter implements MenuPresenter {

    /* renamed from: f */
    protected Context f543f;

    /* renamed from: g */
    protected Context f544g;

    /* renamed from: h */
    protected MenuBuilder f545h;

    /* renamed from: i */
    protected LayoutInflater f546i;

    /* renamed from: j */
    private MenuPresenter.Callback f547j;

    /* renamed from: k */
    private int f548k;

    /* renamed from: l */
    private int f549l;

    /* renamed from: m */
    protected MenuView f550m;

    /* renamed from: n */
    private int f551n;

    public BaseMenuPresenter(Context context, int i, int i2) {
        this.f543f = context;
        this.f546i = LayoutInflater.from(context);
        this.f548k = i;
        this.f549l = i2;
    }

    /* renamed from: b */
    protected void m21927b(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f550m).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f547j;
        if (callback != null) {
            callback.mo21698c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f550m;
        if (viewGroup != null) {
            MenuBuilder menuBuilder = this.f545h;
            int i = 0;
            if (menuBuilder != null) {
                menuBuilder.m21852t();
                ArrayList<MenuItemImpl> G = this.f545h.m21890G();
                int size = G.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItemImpl menuItemImpl = G.get(i2);
                    i = i;
                    if (mo21726t(i, menuItemImpl)) {
                        View childAt = viewGroup.getChildAt(i);
                        MenuItemImpl itemData = childAt instanceof MenuView.ItemView ? ((MenuView.ItemView) childAt).getItemData() : null;
                        View q = mo21728q(menuItemImpl, childAt, viewGroup);
                        if (menuItemImpl != itemData) {
                            q.setPressed(false);
                            q.jumpDrawablesToCurrentState();
                        }
                        if (q != childAt) {
                            m21927b(q, i);
                        }
                        i++;
                    }
                }
            }
            while (i < viewGroup.getChildCount()) {
                if (!mo21729o(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    public boolean mo9522e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: f */
    public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: g */
    public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f551n;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: h */
    public void mo9519h(MenuPresenter.Callback callback) {
        this.f547j = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(Context context, MenuBuilder menuBuilder) {
        this.f544g = context;
        LayoutInflater.from(context);
        this.f545h = menuBuilder;
    }

    /* renamed from: k */
    public abstract void mo21730k(MenuItemImpl menuItemImpl, MenuView.ItemView itemView);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.appcompat.view.menu.MenuBuilder] */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        MenuPresenter.Callback callback = this.f547j;
        if (callback == null) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        if (subMenuBuilder == null) {
            subMenuBuilder2 = this.f545h;
        }
        return callback.mo21697d(subMenuBuilder2);
    }

    /* renamed from: n */
    public MenuView.ItemView m21926n(ViewGroup viewGroup) {
        return (MenuView.ItemView) this.f546i.inflate(this.f549l, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public boolean mo21729o(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: p */
    public MenuPresenter.Callback m21925p() {
        return this.f547j;
    }

    /* renamed from: q */
    public View mo21728q(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        MenuView.ItemView n = view instanceof MenuView.ItemView ? (MenuView.ItemView) view : m21926n(viewGroup);
        mo21730k(menuItemImpl, n);
        return (View) n;
    }

    /* renamed from: r */
    public MenuView mo21727r(ViewGroup viewGroup) {
        if (this.f550m == null) {
            MenuView menuView = (MenuView) this.f546i.inflate(this.f548k, viewGroup, false);
            this.f550m = menuView;
            menuView.mo9485b(this.f545h);
            mo9523d(true);
        }
        return this.f550m;
    }

    /* renamed from: s */
    public void m21924s(int i) {
        this.f551n = i;
    }

    /* renamed from: t */
    public boolean mo21726t(int i, MenuItemImpl menuItemImpl) {
        return true;
    }
}
