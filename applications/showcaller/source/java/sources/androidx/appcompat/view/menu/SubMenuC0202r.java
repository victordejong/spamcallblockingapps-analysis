package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0178g;
/* renamed from: androidx.appcompat.view.menu.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/r.class */
public class SubMenuC0202r extends C0178g implements SubMenu {

    /* renamed from: B */
    private C0178g f741B;

    /* renamed from: C */
    private C0182i f742C;

    public SubMenuC0202r(Context context, C0178g c0178g, C0182i c0182i) {
        super(context);
        this.f741B = c0178g;
        this.f742C = c0182i;
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: F */
    public C0178g mo35306F() {
        return this.f741B.mo35306F();
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: H */
    public boolean mo35305H() {
        return this.f741B.mo35305H();
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: I */
    public boolean mo35304I() {
        return this.f741B.mo35304I();
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: J */
    public boolean mo35303J() {
        return this.f741B.mo35303J();
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: V */
    public void mo35302V(C0178g.AbstractC0179a abstractC0179a) {
        this.f741B.mo35302V(abstractC0179a);
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: f */
    public boolean mo35301f(C0182i c0182i) {
        return this.f741B.mo35301f(c0182i);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f742C;
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: h */
    public boolean mo35300h(C0178g c0178g, MenuItem menuItem) {
        return super.mo35300h(c0178g, menuItem) || this.f741B.mo35300h(c0178g, menuItem);
    }

    /* renamed from: i0 */
    public Menu m35299i0() {
        return this.f741B;
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: m */
    public boolean mo35298m(C0182i c0182i) {
        return this.f741B.mo35298m(c0182i);
    }

    @Override // androidx.appcompat.view.menu.C0178g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f741B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m35396Y(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m35395Z(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m35392b0(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m35390c0(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m35388d0(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f742C.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f742C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0178g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f741B.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: v */
    public String mo35297v() {
        C0182i c0182i = this.f742C;
        int itemId = c0182i != null ? c0182i.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo35297v() + ":" + itemId;
    }
}
