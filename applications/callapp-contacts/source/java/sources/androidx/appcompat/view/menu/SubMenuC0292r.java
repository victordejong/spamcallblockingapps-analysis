package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0268g;
/* renamed from: androidx.appcompat.view.menu.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/r.class */
public class SubMenuC0292r extends C0268g implements SubMenu {

    /* renamed from: l */
    public C0268g f993l;

    /* renamed from: m */
    private C0272i f994m;

    public SubMenuC0292r(Context context, C0268g c0268g, C0272i c0272i) {
        super(context);
        this.f993l = c0268g;
        this.f994m = c0272i;
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: a */
    public final String mo46042a() {
        C0272i c0272i = this.f994m;
        int itemId = c0272i != null ? c0272i.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo46042a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: a */
    public final void mo46041a(C0268g.AbstractC0269a abstractC0269a) {
        this.f993l.mo46041a(abstractC0269a);
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: a */
    public final boolean mo46040a(C0268g c0268g, MenuItem menuItem) {
        return super.mo46040a(c0268g, menuItem) || this.f993l.mo46040a(c0268g, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: a */
    public final boolean mo46039a(C0272i c0272i) {
        return this.f993l.mo46039a(c0272i);
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: b */
    public final boolean mo46038b() {
        return this.f993l.mo46038b();
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: b */
    public final boolean mo46037b(C0272i c0272i) {
        return this.f993l.mo46037b(c0272i);
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: c */
    public final boolean mo46036c() {
        return this.f993l.mo46036c();
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: d */
    public final boolean mo46035d() {
        return this.f993l.mo46035d();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f994m;
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: l */
    public final C0268g mo46034l() {
        return this.f993l.mo46034l();
    }

    @Override // androidx.appcompat.view.menu.C0268g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f993l.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m46093b(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m46104a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m46108a(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m46097a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m46101a(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f994m.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f994m.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0268g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f993l.setQwertyMode(z);
    }
}
