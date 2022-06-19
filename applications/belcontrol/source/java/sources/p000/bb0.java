package p000;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.Serializable;
/* renamed from: bb0 */
/* loaded from: classes-dex2jar.jar:bb0.class */
public class bb0 implements MenuItem, Serializable {

    /* renamed from: a */
    public Drawable f1871a;

    /* renamed from: b */
    public boolean f1872b;

    /* renamed from: c */
    public boolean f1873c;

    /* renamed from: d */
    public int f1874d;

    /* renamed from: f */
    public Drawable f1875f;

    /* renamed from: g */
    public CharSequence f1876g;

    /* renamed from: h */
    public int f1877h;

    /* renamed from: j */
    public int f1878j;

    /* renamed from: k */
    public int f1879k;

    /* renamed from: l */
    public ColorStateList f1880l;

    public bb0(int i, int i2, int i3, CharSequence charSequence) {
        this.f1877h = i2;
        this.f1878j = i;
        this.f1879k = i3;
        this.f1876g = charSequence;
    }

    /* renamed from: c */
    public Drawable m5687c() {
        return this.f1871a;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    /* renamed from: d */
    public Drawable m5686d(Context context) {
        return this.f1874d == 0 ? this.f1875f : context.getResources().getDrawable(this.f1874d);
    }

    /* renamed from: e */
    public ColorStateList m5685e() {
        return this.f1880l;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    /* renamed from: f */
    public void m5684f() {
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1878j;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f1875f;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return null;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1877h;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1879k;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1876g;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f1872b;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f1873c;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f1872b = z;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f1874d = i;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1875f = drawable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1876g = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f1873c = z;
        return this;
    }
}
