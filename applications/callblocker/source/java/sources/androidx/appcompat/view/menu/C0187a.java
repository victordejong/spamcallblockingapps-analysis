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
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.C0438a;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
import androidx.core.p026h.AbstractC0573b;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public class C0187a implements AbstractMenuItemC0484b {

    /* renamed from: a */
    private final int f681a;

    /* renamed from: b */
    private final int f682b;

    /* renamed from: c */
    private final int f683c;

    /* renamed from: d */
    private final int f684d;

    /* renamed from: e */
    private CharSequence f685e;

    /* renamed from: f */
    private CharSequence f686f;

    /* renamed from: g */
    private Intent f687g;

    /* renamed from: h */
    private char f688h;

    /* renamed from: j */
    private char f690j;

    /* renamed from: l */
    private Drawable f692l;

    /* renamed from: n */
    private Context f694n;

    /* renamed from: o */
    private MenuItem.OnMenuItemClickListener f695o;

    /* renamed from: p */
    private CharSequence f696p;

    /* renamed from: q */
    private CharSequence f697q;

    /* renamed from: i */
    private int f689i = 4096;

    /* renamed from: k */
    private int f691k = 4096;

    /* renamed from: m */
    private int f693m = 0;

    /* renamed from: r */
    private ColorStateList f698r = null;

    /* renamed from: s */
    private PorterDuff.Mode f699s = null;

    /* renamed from: t */
    private boolean f700t = false;

    /* renamed from: u */
    private boolean f701u = false;

    /* renamed from: v */
    private int f702v = 16;

    public C0187a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f694n = context;
        this.f681a = i2;
        this.f682b = i;
        this.f683c = i3;
        this.f684d = i4;
        this.f685e = charSequence;
    }

    /* renamed from: b */
    private void m21926b() {
        if (this.f692l != null) {
            if (!this.f700t && !this.f701u) {
                return;
            }
            this.f692l = C0535a.m20584g(this.f692l);
            this.f692l = this.f692l.mutate();
            if (this.f700t) {
                C0535a.m20595a(this.f692l, this.f698r);
            }
            if (!this.f701u) {
                return;
            }
            C0535a.m20592a(this.f692l, this.f699s);
        }
    }

    /* renamed from: a */
    public AbstractMenuItemC0484b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public AbstractMenuItemC0484b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractMenuItemC0484b mo20730a(AbstractC0573b abstractC0573b) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractMenuItemC0484b setContentDescription(CharSequence charSequence) {
        this.f696p = charSequence;
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractC0573b mo20731a() {
        return null;
    }

    /* renamed from: b */
    public AbstractMenuItemC0484b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: b */
    public AbstractMenuItemC0484b setTooltipText(CharSequence charSequence) {
        this.f697q = charSequence;
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f691k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f690j;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f696p;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f682b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f692l;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f698r;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f699s;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f687g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f681a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f689i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f688h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f684d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f685e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f686f != null ? this.f686f : this.f685e;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f697q;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f702v & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f702v & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f702v & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f702v & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f690j = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f690j = Character.toLowerCase(c);
        this.f691k = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f702v = (z ? 1 : 0) | (this.f702v & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f702v = (z ? 2 : 0) | (this.f702v & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f702v = (z ? 16 : 0) | (this.f702v & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f693m = i;
        this.f692l = C0438a.m20900a(this.f694n, i);
        m21926b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f692l = drawable;
        this.f693m = 0;
        m21926b();
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f698r = colorStateList;
        this.f700t = true;
        m21926b();
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f699s = mode;
        this.f701u = true;
        m21926b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f687g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f688h = c;
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f688h = c;
        this.f689i = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f695o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f688h = c;
        this.f690j = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f688h = c;
        this.f689i = KeyEvent.normalizeMetaState(i);
        this.f690j = Character.toLowerCase(c2);
        this.f691k = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f685e = this.f694n.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f685e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f686f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f702v = (z ? 0 : 8) | (this.f702v & 8);
        return this;
    }
}
