package p151l;

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
import p066d0.C2134a;
import p098g0.C2789a;
import p109h0.AbstractMenuItemC2991b;
import p163m0.AbstractC3549b;
/* renamed from: l.a */
/* loaded from: classes-dex2jar.jar:l/a.class */
public class C3414a implements AbstractMenuItemC2991b {

    /* renamed from: a */
    public CharSequence f11453a;

    /* renamed from: b */
    public CharSequence f11454b;

    /* renamed from: c */
    public Intent f11455c;

    /* renamed from: d */
    public char f11456d;

    /* renamed from: f */
    public char f11458f;

    /* renamed from: h */
    public Drawable f11460h;

    /* renamed from: i */
    public Context f11461i;

    /* renamed from: j */
    public CharSequence f11462j;

    /* renamed from: k */
    public CharSequence f11463k;

    /* renamed from: e */
    public int f11457e = 4096;

    /* renamed from: g */
    public int f11459g = 4096;

    /* renamed from: l */
    public ColorStateList f11464l = null;

    /* renamed from: m */
    public PorterDuff.Mode f11465m = null;

    /* renamed from: n */
    public boolean f11466n = false;

    /* renamed from: o */
    public boolean f11467o = false;

    /* renamed from: p */
    public int f11468p = 16;

    public C3414a(Context context, int i, int i2, int i3, CharSequence charSequence) {
        this.f11461i = context;
        this.f11453a = charSequence;
    }

    @Override // p109h0.AbstractMenuItemC2991b
    /* renamed from: a */
    public AbstractC3549b mo2324a() {
        return null;
    }

    @Override // p109h0.AbstractMenuItemC2991b
    /* renamed from: b */
    public AbstractMenuItemC2991b mo2323b(AbstractC3549b abstractC3549b) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public final void m2322c() {
        Drawable drawable = this.f11460h;
        if (drawable != null) {
            if (!this.f11466n && !this.f11467o) {
                return;
            }
            Drawable m3007h = C2789a.m3007h(drawable);
            this.f11460h = m3007h;
            Drawable mutate = m3007h.mutate();
            this.f11460h = mutate;
            if (this.f11466n) {
                mutate.setTintList(this.f11464l);
            }
            if (!this.f11467o) {
                return;
            }
            this.f11460h.setTintMode(this.f11465m);
        }
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f11459g;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f11458f;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f11462j;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f11460h;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f11464l;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f11465m;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f11455c;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return 16908332;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f11457e;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f11456d;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f11453a;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f11454b;
        if (charSequence == null) {
            charSequence = this.f11453a;
        }
        return charSequence;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f11463k;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f11468p & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f11468p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f11468p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f11468p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f11458f = Character.toLowerCase(c);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f11458f = Character.toLowerCase(c);
        this.f11459g = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f11468p = (z ? 1 : 0) | (this.f11468p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f11468p = (z ? 2 : 0) | (this.f11468p & (-3));
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public MenuItem mo10809setContentDescription(CharSequence charSequence) {
        this.f11462j = charSequence;
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public AbstractMenuItemC2991b mo10809setContentDescription(CharSequence charSequence) {
        this.f11462j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f11468p = (z ? 16 : 0) | (this.f11468p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        Context context = this.f11461i;
        Object obj = C2134a.f7832a;
        this.f11460h = C2134a.C2136b.m3841b(context, i);
        m2322c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f11460h = drawable;
        m2322c();
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f11464l = colorStateList;
        this.f11466n = true;
        m2322c();
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f11465m = mode;
        this.f11467o = true;
        m2322c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f11455c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f11456d = c;
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f11456d = c;
        this.f11457e = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f11456d = c;
        this.f11458f = Character.toLowerCase(c2);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f11456d = c;
        this.f11457e = KeyEvent.normalizeMetaState(i);
        this.f11458f = Character.toLowerCase(c2);
        this.f11459g = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f11453a = this.f11461i.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f11453a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f11454b = charSequence;
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public MenuItem mo10810setTooltipText(CharSequence charSequence) {
        this.f11463k = charSequence;
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public AbstractMenuItemC2991b mo10810setTooltipText(CharSequence charSequence) {
        this.f11463k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f11468p;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f11468p = (i & 8) | i2;
        return this;
    }
}
