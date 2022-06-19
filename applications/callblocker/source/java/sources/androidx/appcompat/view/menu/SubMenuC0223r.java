package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0199g;
/* renamed from: androidx.appcompat.view.menu.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/r.class */
public class SubMenuC0223r extends C0199g implements SubMenu {

    /* renamed from: d */
    private C0199g f883d;

    /* renamed from: e */
    private C0203i f884e;

    public SubMenuC0223r(Context context, C0199g c0199g, C0203i c0203i) {
        super(context);
        this.f883d = c0199g;
        this.f884e = c0203i;
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: a */
    public String mo21789a() {
        int itemId = this.f884e != null ? this.f884e.getItemId() : 0;
        return itemId == 0 ? null : super.mo21789a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: a */
    public void mo21788a(C0199g.AbstractC0200a abstractC0200a) {
        this.f883d.mo21788a(abstractC0200a);
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: a */
    public boolean mo21787a(C0199g c0199g, MenuItem menuItem) {
        return super.mo21787a(c0199g, menuItem) || this.f883d.mo21787a(c0199g, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: b */
    public boolean mo21786b() {
        return this.f883d.mo21786b();
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: c */
    public boolean mo21785c() {
        return this.f883d.mo21785c();
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: c */
    public boolean mo21784c(C0203i c0203i) {
        return this.f883d.mo21784c(c0203i);
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: d */
    public boolean mo21783d() {
        return this.f883d.mo21783d();
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: d */
    public boolean mo21782d(C0203i c0203i) {
        return this.f883d.mo21782d(c0203i);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f884e;
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: q */
    public C0199g mo21781q() {
        return this.f883d.mo21781q();
    }

    @Override // androidx.appcompat.view.menu.C0199g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f883d.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m21865e(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m21891a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m21869d(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m21881a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m21886a(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f884e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f884e.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0199g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f883d.setQwertyMode(z);
    }

    /* renamed from: t */
    public Menu m21780t() {
        return this.f883d;
    }
}
