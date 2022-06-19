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
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.C0409a;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
import androidx.core.p023g.AbstractC0530b;
import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public class C0170a implements AbstractMenuItemC0461b {

    /* renamed from: a */
    private final int f629a;

    /* renamed from: b */
    private final int f630b;

    /* renamed from: c */
    private final int f631c;

    /* renamed from: d */
    private final int f632d;

    /* renamed from: e */
    private CharSequence f633e;

    /* renamed from: f */
    private CharSequence f634f;

    /* renamed from: g */
    private Intent f635g;

    /* renamed from: h */
    private char f636h;

    /* renamed from: j */
    private char f638j;

    /* renamed from: l */
    private Drawable f640l;

    /* renamed from: n */
    private Context f642n;

    /* renamed from: o */
    private MenuItem.OnMenuItemClickListener f643o;

    /* renamed from: p */
    private CharSequence f644p;

    /* renamed from: q */
    private CharSequence f645q;

    /* renamed from: i */
    private int f637i = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: k */
    private int f639k = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: m */
    private int f641m = 0;

    /* renamed from: r */
    private ColorStateList f646r = null;

    /* renamed from: s */
    private PorterDuff.Mode f647s = null;

    /* renamed from: t */
    private boolean f648t = false;

    /* renamed from: u */
    private boolean f649u = false;

    /* renamed from: v */
    private int f650v = 16;

    public C0170a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f642n = context;
        this.f629a = i2;
        this.f630b = i;
        this.f631c = i3;
        this.f632d = i4;
        this.f633e = charSequence;
    }

    /* renamed from: b */
    private void m7595b() {
        if (this.f640l != null) {
            if (!this.f648t && !this.f649u) {
                return;
            }
            this.f640l = C0575a.m6122g(this.f640l);
            this.f640l = this.f640l.mutate();
            if (this.f648t) {
                C0575a.m6133a(this.f640l, this.f646r);
            }
            if (!this.f649u) {
                return;
            }
            C0575a.m6130a(this.f640l, this.f647s);
        }
    }

    /* renamed from: a */
    public AbstractMenuItemC0461b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public AbstractMenuItemC0461b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractMenuItemC0461b mo6549a(AbstractC0530b abstractC0530b) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractMenuItemC0461b setContentDescription(CharSequence charSequence) {
        this.f644p = charSequence;
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractC0530b mo6550a() {
        return null;
    }

    /* renamed from: b */
    public AbstractMenuItemC0461b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: b */
    public AbstractMenuItemC0461b setTooltipText(CharSequence charSequence) {
        this.f645q = charSequence;
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f639k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f638j;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f644p;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f630b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f640l;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f646r;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f647s;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f635g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f629a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f637i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f636h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f632d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f633e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f634f;
        if (charSequence == null) {
            charSequence = this.f633e;
        }
        return charSequence;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f645q;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f650v & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f650v & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f650v & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f650v & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f638j = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f638j = Character.toLowerCase(c);
        this.f639k = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f650v = (z ? 1 : 0) | (this.f650v & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f650v = (z ? 2 : 0) | (this.f650v & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f650v = (z ? 16 : 0) | (this.f650v & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f641m = i;
        this.f640l = C0409a.m6753a(this.f642n, i);
        m7595b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f640l = drawable;
        this.f641m = 0;
        m7595b();
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f646r = colorStateList;
        this.f648t = true;
        m7595b();
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f647s = mode;
        this.f649u = true;
        m7595b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f635g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f636h = c;
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f636h = c;
        this.f637i = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f643o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f636h = c;
        this.f638j = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f636h = c;
        this.f637i = KeyEvent.normalizeMetaState(i);
        this.f638j = Character.toLowerCase(c2);
        this.f639k = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f633e = this.f642n.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f633e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f634f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f650v;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f650v = (i & 8) | i2;
        return this;
    }
}
