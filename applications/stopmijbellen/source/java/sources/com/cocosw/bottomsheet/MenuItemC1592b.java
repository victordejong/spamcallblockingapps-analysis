package com.cocosw.bottomsheet;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p066d0.C2134a;
/* renamed from: com.cocosw.bottomsheet.b */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/b.class */
public class MenuItemC1592b implements MenuItem {

    /* renamed from: a */
    public final int f5900a;

    /* renamed from: b */
    public final int f5901b;

    /* renamed from: c */
    public final int f5902c;

    /* renamed from: d */
    public CharSequence f5903d;

    /* renamed from: e */
    public CharSequence f5904e;

    /* renamed from: f */
    public Intent f5905f;

    /* renamed from: g */
    public char f5906g;

    /* renamed from: h */
    public char f5907h;

    /* renamed from: i */
    public Drawable f5908i;

    /* renamed from: j */
    public Context f5909j;

    /* renamed from: k */
    public MenuItem.OnMenuItemClickListener f5910k;

    /* renamed from: l */
    public int f5911l = 16;

    public MenuItemC1592b(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f5909j = context;
        this.f5900a = i2;
        this.f5901b = i;
        this.f5902c = i4;
        this.f5903d = charSequence;
    }

    /* renamed from: c */
    public boolean m4861c() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f5910k;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            Intent intent = this.f5905f;
            if (intent == null) {
                return false;
            }
            this.f5909j.startActivity(intent);
            return true;
        }
        return true;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return 0;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f5907h;
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return null;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f5901b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f5908i;
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return null;
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return null;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f5905f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f5900a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return 0;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f5906g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f5902c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f5903d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f5904e;
        if (charSequence == null) {
            charSequence = this.f5903d;
        }
        return charSequence;
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
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
        boolean z = true;
        if ((this.f5911l & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f5911l & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f5911l & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f5911l & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f5907h = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f5911l = (z ? 1 : 0) | (this.f5911l & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f5911l = (z ? 2 : 0) | (this.f5911l & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f5911l = (z ? 16 : 0) | (this.f5911l & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        if (i > 0) {
            Context context = this.f5909j;
            Object obj = C2134a.f7832a;
            this.f5908i = C2134a.C2136b.m3841b(context, i);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f5908i = drawable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f5905f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f5906g = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f5910k = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f5906g = c;
        this.f5907h = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
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
        this.f5903d = this.f5909j.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f5903d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f5904e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f5911l = (z ? 0 : 8) | (this.f5911l & (-9));
        return this;
    }
}
