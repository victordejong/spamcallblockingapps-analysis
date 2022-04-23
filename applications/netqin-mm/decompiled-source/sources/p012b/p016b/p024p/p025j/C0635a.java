package p012b.p016b.p024p.p025j;

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
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
import p012b.p042i.p054p.AbstractC0952b;
/* renamed from: b.b.p.j.a */
/* loaded from: classes-dex2jar.jar:b/b/p/j/a.class */
public class C0635a implements AbstractMenuItemC0914b {

    /* renamed from: a */
    public final int f3144a;

    /* renamed from: b */
    public final int f3145b;

    /* renamed from: c */
    public final int f3146c;

    /* renamed from: d */
    public CharSequence f3147d;

    /* renamed from: e */
    public CharSequence f3148e;

    /* renamed from: f */
    public Intent f3149f;

    /* renamed from: g */
    public char f3150g;

    /* renamed from: i */
    public char f3152i;

    /* renamed from: k */
    public Drawable f3154k;

    /* renamed from: l */
    public Context f3155l;

    /* renamed from: m */
    public CharSequence f3156m;

    /* renamed from: n */
    public CharSequence f3157n;

    /* renamed from: h */
    public int f3151h = 4096;

    /* renamed from: j */
    public int f3153j = 4096;

    /* renamed from: o */
    public ColorStateList f3158o = null;

    /* renamed from: p */
    public PorterDuff.Mode f3159p = null;

    /* renamed from: q */
    public boolean f3160q = false;

    /* renamed from: r */
    public boolean f3161r = false;

    /* renamed from: s */
    public int f3162s = 16;

    public C0635a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f3155l = context;
        this.f3144a = i2;
        this.f3145b = i;
        this.f3146c = i4;
        this.f3147d = charSequence;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b
    /* renamed from: a */
    public AbstractMenuItemC0914b mo35504a(AbstractC0952b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b
    /* renamed from: a */
    public AbstractC0952b mo35505a() {
        return null;
    }

    /* renamed from: b */
    public final void m36653b() {
        if (this.f3154k == null) {
            return;
        }
        if (this.f3160q || this.f3161r) {
            Drawable h = C0907a.m35514h(this.f3154k);
            this.f3154k = h;
            Drawable mutate = h.mutate();
            this.f3154k = mutate;
            if (this.f3160q) {
                C0907a.m35526a(mutate, this.f3158o);
            }
            if (this.f3161r) {
                C0907a.m35523a(this.f3154k, this.f3159p);
            }
        }
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f3153j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f3152i;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f3156m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f3145b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f3154k;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f3158o;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f3159p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f3149f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f3144a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f3151h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f3150g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f3146c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f3147d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f3148e;
        if (charSequence == null) {
            charSequence = this.f3147d;
        }
        return charSequence;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f3157n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f3162s & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f3162s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f3162s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f3162s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f3152i = Character.toLowerCase(c);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f3152i = Character.toLowerCase(c);
        this.f3153j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f3162s = (z ? 1 : 0) | (this.f3162s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f3162s = (z ? 2 : 0) | (this.f3162s & (-3));
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setContentDescription(CharSequence charSequence) {
        this.f3156m = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f3162s = (z ? 16 : 0) | (this.f3162s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f3154k = C0869a.m35684c(this.f3155l, i);
        m36653b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f3154k = drawable;
        m36653b();
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3158o = colorStateList;
        this.f3160q = true;
        m36653b();
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3159p = mode;
        this.f3161r = true;
        m36653b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f3149f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f3150g = c;
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f3150g = c;
        this.f3151h = KeyEvent.normalizeMetaState(i);
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
        this.f3150g = c;
        this.f3152i = Character.toLowerCase(c2);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f3150g = c;
        this.f3151h = KeyEvent.normalizeMetaState(i);
        this.f3152i = Character.toLowerCase(c2);
        this.f3153j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f3147d = this.f3155l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f3147d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f3148e = charSequence;
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setTooltipText(CharSequence charSequence) {
        this.f3157n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f3162s;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f3162s = (i & 8) | i2;
        return this;
    }
}
