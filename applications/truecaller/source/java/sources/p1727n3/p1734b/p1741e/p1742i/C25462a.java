package p1727n3.p1734b.p1741e.p1742i;

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
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1821i.AbstractC26561b;
/* renamed from: n3.b.e.i.a */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/a.class */
public class C25462a implements AbstractMenuItemC26506b {

    /* renamed from: a */
    public CharSequence f71162a;

    /* renamed from: b */
    public CharSequence f71163b;

    /* renamed from: c */
    public Intent f71164c;

    /* renamed from: d */
    public char f71165d;

    /* renamed from: f */
    public char f71167f;

    /* renamed from: h */
    public Drawable f71169h;

    /* renamed from: i */
    public Context f71170i;

    /* renamed from: j */
    public CharSequence f71171j;

    /* renamed from: k */
    public CharSequence f71172k;

    /* renamed from: e */
    public int f71166e = 4096;

    /* renamed from: g */
    public int f71168g = 4096;

    /* renamed from: l */
    public ColorStateList f71173l = null;

    /* renamed from: m */
    public PorterDuff.Mode f71174m = null;

    /* renamed from: n */
    public boolean f71175n = false;

    /* renamed from: o */
    public boolean f71176o = false;

    /* renamed from: p */
    public int f71177p = 16;

    public C25462a(Context context, int i, int i2, int i3, CharSequence charSequence) {
        this.f71170i = context;
        this.f71162a = charSequence;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b
    /* renamed from: a */
    public AbstractC26561b mo1724a() {
        return null;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b
    /* renamed from: b */
    public AbstractMenuItemC26506b mo1723b(AbstractC26561b abstractC26561b) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public final void m3492c() {
        Drawable drawable = this.f71169h;
        if (drawable != null) {
            if (!this.f71175n && !this.f71176o) {
                return;
            }
            this.f71169h = drawable;
            Drawable mutate = drawable.mutate();
            this.f71169h = mutate;
            if (this.f71175n) {
                mutate.setTintList(this.f71173l);
            }
            if (!this.f71176o) {
                return;
            }
            this.f71169h.setTintMode(this.f71174m);
        }
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f71168g;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f71167f;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f71171j;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f71169h;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f71173l;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f71174m;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f71164c;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return 16908332;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f71166e;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f71165d;
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
        return this.f71162a;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f71163b;
        if (charSequence == null) {
            charSequence = this.f71162a;
        }
        return charSequence;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f71172k;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f71177p & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f71177p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f71177p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f71177p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f71167f = Character.toLowerCase(c);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f71167f = Character.toLowerCase(c);
        this.f71168g = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f71177p = (z ? 1 : 0) | (this.f71177p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f71177p = (z ? 2 : 0) | (this.f71177p & (-3));
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public MenuItem mo50026setContentDescription(CharSequence charSequence) {
        this.f71171j = charSequence;
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public AbstractMenuItemC26506b mo50026setContentDescription(CharSequence charSequence) {
        this.f71171j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f71177p = (z ? 16 : 0) | (this.f71177p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        Context context = this.f71170i;
        Object obj = C26467a.f74235a;
        this.f71169h = C26467a.C26470c.m1789b(context, i);
        m3492c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f71169h = drawable;
        m3492c();
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f71173l = colorStateList;
        this.f71175n = true;
        m3492c();
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f71174m = mode;
        this.f71176o = true;
        m3492c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f71164c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f71165d = c;
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f71165d = c;
        this.f71166e = KeyEvent.normalizeMetaState(i);
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
        this.f71165d = c;
        this.f71167f = Character.toLowerCase(c2);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f71165d = c;
        this.f71166e = KeyEvent.normalizeMetaState(i);
        this.f71167f = Character.toLowerCase(c2);
        this.f71168g = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f71162a = this.f71170i.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f71162a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f71163b = charSequence;
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public MenuItem mo50027setTooltipText(CharSequence charSequence) {
        this.f71172k = charSequence;
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public AbstractMenuItemC26506b mo50027setTooltipText(CharSequence charSequence) {
        this.f71172k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f71177p;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f71177p = (i & 8) | i2;
        return this;
    }
}
