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
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.core.view.AbstractC0899b;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public final class C0256a implements AbstractMenuItemC0713b {

    /* renamed from: a */
    private final int f793a;

    /* renamed from: b */
    private final int f794b;

    /* renamed from: c */
    private final int f795c;

    /* renamed from: d */
    private CharSequence f796d;

    /* renamed from: e */
    private CharSequence f797e;

    /* renamed from: f */
    private Intent f798f;

    /* renamed from: g */
    private char f799g;

    /* renamed from: i */
    private char f801i;

    /* renamed from: k */
    private Drawable f803k;

    /* renamed from: l */
    private Context f804l;

    /* renamed from: m */
    private MenuItem.OnMenuItemClickListener f805m;

    /* renamed from: n */
    private CharSequence f806n;

    /* renamed from: o */
    private CharSequence f807o;

    /* renamed from: h */
    private int f800h = 4096;

    /* renamed from: j */
    private int f802j = 4096;

    /* renamed from: p */
    private ColorStateList f808p = null;

    /* renamed from: q */
    private PorterDuff.Mode f809q = null;

    /* renamed from: r */
    private boolean f810r = false;

    /* renamed from: s */
    private boolean f811s = false;

    /* renamed from: t */
    private int f812t = 16;

    public C0256a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f804l = context;
        this.f793a = i2;
        this.f794b = i;
        this.f795c = i4;
        this.f796d = charSequence;
    }

    /* renamed from: b */
    private void m46126b() {
        Drawable drawable = this.f803k;
        if (drawable != null) {
            if (!this.f810r && !this.f811s) {
                return;
            }
            Drawable m44345f = C0840a.m44345f(drawable);
            this.f803k = m44345f;
            Drawable mutate = m44345f.mutate();
            this.f803k = mutate;
            if (this.f810r) {
                C0840a.m44355a(mutate, this.f808p);
            }
            if (!this.f811s) {
                return;
            }
            C0840a.m44352a(this.f803k, this.f809q);
        }
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractMenuItemC0713b mo44634a(AbstractC0899b abstractC0899b) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractMenuItemC0713b mo44633a(CharSequence charSequence) {
        this.f806n = charSequence;
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractC0899b mo44635a() {
        return null;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: b */
    public final AbstractMenuItemC0713b mo44632b(CharSequence charSequence) {
        this.f807o = charSequence;
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f802j;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f801i;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f806n;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f794b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f803k;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f808p;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f809q;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f798f;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f793a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f800h;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f799g;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f795c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f796d;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f797e;
        return charSequence != null ? charSequence : this.f796d;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f807o;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f812t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f812t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f812t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f812t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f801i = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f801i = Character.toLowerCase(c);
        this.f802j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f812t = (z ? 1 : 0) | (this.f812t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f812t = (z ? 2 : 0) | (this.f812t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        this.f806n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f812t = (z ? 16 : 0) | (this.f812t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f803k = C0790b.m44502a(this.f804l, i);
        m46126b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f803k = drawable;
        m46126b();
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f808p = colorStateList;
        this.f810r = true;
        m46126b();
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f809q = mode;
        this.f811s = true;
        m46126b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f798f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f799g = c;
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f799g = c;
        this.f800h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f805m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f799g = c;
        this.f801i = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f799g = c;
        this.f800h = KeyEvent.normalizeMetaState(i);
        this.f801i = Character.toLowerCase(c2);
        this.f802j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f796d = this.f804l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f796d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f797e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        this.f807o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.f812t;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f812t = (i & 8) | i2;
        return this;
    }
}
