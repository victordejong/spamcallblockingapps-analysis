package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class SubMenuC0151l extends C0136e implements SubMenu {

    /* renamed from: A */
    public C0140g f520A;

    /* renamed from: z */
    public C0136e f521z;

    public SubMenuC0151l(Context context, C0136e c0136e, C0140g c0140g) {
        super(context);
        this.f521z = c0136e;
        this.f520A = c0140g;
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: d */
    public boolean mo8680d(C0140g c0140g) {
        return this.f521z.mo8680d(c0140g);
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: e */
    public boolean mo8679e(C0136e c0136e, MenuItem menuItem) {
        return super.mo8679e(c0136e, menuItem) || this.f521z.mo8679e(c0136e, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: f */
    public boolean mo8678f(C0140g c0140g) {
        return this.f521z.mo8678f(c0140g);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f520A;
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: j */
    public String mo8677j() {
        C0140g c0140g = this.f520A;
        int i = c0140g != null ? c0140g.f458a : 0;
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: k */
    public C0136e mo8676k() {
        return this.f521z.mo8676k();
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: m */
    public boolean mo8675m() {
        return this.f521z.mo8675m();
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: n */
    public boolean mo8674n() {
        return this.f521z.mo8674n();
    }

    @Override // androidx.appcompat.view.menu.C0136e
    /* renamed from: o */
    public boolean mo8673o() {
        return this.f521z.mo8673o();
    }

    @Override // androidx.appcompat.view.menu.C0136e, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f521z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        m8701w(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        m8701w(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        m8701w(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        m8701w(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        m8701w(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f520A.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f520A.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0136e, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f521z.setQwertyMode(z);
    }
}
