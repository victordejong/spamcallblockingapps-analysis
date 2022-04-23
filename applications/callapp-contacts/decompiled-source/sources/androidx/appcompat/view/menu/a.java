package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.a.a.b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f773a;

    /* renamed from: b  reason: collision with root package name */
    private final int f774b;

    /* renamed from: c  reason: collision with root package name */
    private final int f775c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f776d;
    private CharSequence e;
    private Intent f;
    private char g;
    private char i;
    private Drawable k;
    private Context l;
    private MenuItem.OnMenuItemClickListener m;
    private CharSequence n;
    private CharSequence o;
    private int h = 4096;
    private int j = 4096;
    private ColorStateList p = null;
    private PorterDuff.Mode q = null;
    private boolean r = false;
    private boolean s = false;
    private int t = 16;

    public a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.l = context;
        this.f773a = i2;
        this.f774b = i;
        this.f775c = i4;
        this.f776d = charSequence;
    }

    private void b() {
        Drawable drawable = this.k;
        if (drawable == null) {
            return;
        }
        if (this.r || this.s) {
            Drawable f = androidx.core.graphics.drawable.a.f(drawable);
            this.k = f;
            Drawable mutate = f.mutate();
            this.k = mutate;
            if (this.r) {
                androidx.core.graphics.drawable.a.a(mutate, this.p);
            }
            if (this.s) {
                androidx.core.graphics.drawable.a.a(this.k, this.q);
            }
        }
    }

    @Override // androidx.core.a.a.b
    public final b a(androidx.core.view.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.a.a.b
    public final b a(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // androidx.core.a.a.b
    public final androidx.core.view.b a() {
        return null;
    }

    @Override // androidx.core.a.a.b
    public final b b(CharSequence charSequence) {
        this.o = charSequence;
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.i;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f774b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.k;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.p;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.q;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f773a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f775c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f776d;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.e;
        return charSequence != null ? charSequence : this.f776d;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.o;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        this.i = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i) {
        this.i = Character.toLowerCase(c2);
        this.j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.t = (z ? 1 : 0) | (this.t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.t = (z ? 2 : 0) | (this.t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.t = (z ? 16 : 0) | (this.t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.k = androidx.core.content.b.a(this.l, i);
        b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.k = drawable;
        b();
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.p = colorStateList;
        this.r = true;
        b();
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.q = mode;
        this.s = true;
        b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        this.g = c2;
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i) {
        this.g = c2;
        this.h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.g = c2;
        this.i = Character.toLowerCase(c3);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.g = c2;
        this.h = KeyEvent.normalizeMetaState(i);
        this.i = Character.toLowerCase(c3);
        this.j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f776d = this.l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f776d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        this.o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.t;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.t = (i & 8) | i2;
        return this;
    }
}
