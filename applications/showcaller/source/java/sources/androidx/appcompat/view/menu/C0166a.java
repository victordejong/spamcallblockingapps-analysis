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
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
import p020b.p041h.p050l.AbstractC1605b;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public class C0166a implements AbstractMenuItemC1540b {

    /* renamed from: a */
    private final int f541a;

    /* renamed from: b */
    private final int f542b;

    /* renamed from: c */
    private final int f543c;

    /* renamed from: d */
    private CharSequence f544d;

    /* renamed from: e */
    private CharSequence f545e;

    /* renamed from: f */
    private Intent f546f;

    /* renamed from: g */
    private char f547g;

    /* renamed from: i */
    private char f549i;

    /* renamed from: k */
    private Drawable f551k;

    /* renamed from: l */
    private Context f552l;

    /* renamed from: m */
    private MenuItem.OnMenuItemClickListener f553m;

    /* renamed from: n */
    private CharSequence f554n;

    /* renamed from: o */
    private CharSequence f555o;

    /* renamed from: h */
    private int f548h = 4096;

    /* renamed from: j */
    private int f550j = 4096;

    /* renamed from: p */
    private ColorStateList f556p = null;

    /* renamed from: q */
    private PorterDuff.Mode f557q = null;

    /* renamed from: r */
    private boolean f558r = false;

    /* renamed from: s */
    private boolean f559s = false;

    /* renamed from: t */
    private int f560t = 16;

    public C0166a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f552l = context;
        this.f541a = i2;
        this.f542b = i;
        this.f543c = i4;
        this.f544d = charSequence;
    }

    /* renamed from: c */
    private void m35445c() {
        Drawable drawable = this.f551k;
        if (drawable != null) {
            if (!this.f558r && !this.f559s) {
                return;
            }
            Drawable m33212r = C0615a.m33212r(drawable);
            this.f551k = m33212r;
            Drawable mutate = m33212r.mutate();
            this.f551k = mutate;
            if (this.f558r) {
                C0615a.m33215o(mutate, this.f556p);
            }
            if (!this.f559s) {
                return;
            }
            C0615a.m33214p(this.f551k, this.f557q);
        }
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b
    /* renamed from: a */
    public AbstractMenuItemC1540b mo29772a(AbstractC1605b abstractC1605b) {
        throw new UnsupportedOperationException();
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b
    /* renamed from: b */
    public AbstractC1605b mo29771b() {
        return null;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    /* renamed from: d */
    public AbstractMenuItemC1540b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public AbstractMenuItemC1540b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    /* renamed from: f */
    public AbstractMenuItemC1540b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f550j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f549i;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f554n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f542b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f551k;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f556p;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f557q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f546f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f541a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f548h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f547g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f543c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f544d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f545e;
        if (charSequence == null) {
            charSequence = this.f544d;
        }
        return charSequence;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f555o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f560t & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f560t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f560t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f560t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f549i = Character.toLowerCase(c);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f549i = Character.toLowerCase(c);
        this.f550j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f560t = (z ? 1 : 0) | (this.f560t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f560t = (z ? 2 : 0) | (this.f560t & (-3));
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public AbstractMenuItemC1540b setContentDescription(CharSequence charSequence) {
        this.f554n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f560t = (z ? 16 : 0) | (this.f560t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f551k = C0586a.m33348f(this.f552l, i);
        m35445c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f551k = drawable;
        m35445c();
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f556p = colorStateList;
        this.f558r = true;
        m35445c();
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f557q = mode;
        this.f559s = true;
        m35445c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f546f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f547g = c;
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f547g = c;
        this.f548h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f553m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f547g = c;
        this.f549i = Character.toLowerCase(c2);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f547g = c;
        this.f548h = KeyEvent.normalizeMetaState(i);
        this.f549i = Character.toLowerCase(c2);
        this.f550j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f544d = this.f552l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f544d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f545e = charSequence;
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public AbstractMenuItemC1540b setTooltipText(CharSequence charSequence) {
        this.f555o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f560t;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f560t = (i & 8) | i2;
        return this;
    }
}
