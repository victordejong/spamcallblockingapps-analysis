package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItem.class */
public class ActionMenuItem implements SupportMenuItem {

    /* renamed from: a */
    private final int f512a;

    /* renamed from: b */
    private final int f513b;

    /* renamed from: c */
    private final int f514c;

    /* renamed from: d */
    private CharSequence f515d;

    /* renamed from: e */
    private CharSequence f516e;

    /* renamed from: f */
    private Intent f517f;

    /* renamed from: g */
    private char f518g;

    /* renamed from: i */
    private char f520i;

    /* renamed from: k */
    private Drawable f522k;

    /* renamed from: l */
    private Context f523l;

    /* renamed from: m */
    private CharSequence f524m;

    /* renamed from: n */
    private CharSequence f525n;

    /* renamed from: h */
    private int f519h = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: j */
    private int f521j = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: o */
    private ColorStateList f526o = null;

    /* renamed from: p */
    private PorterDuff.Mode f527p = null;

    /* renamed from: q */
    private boolean f528q = false;

    /* renamed from: r */
    private boolean f529r = false;

    /* renamed from: s */
    private int f530s = 16;

    public ActionMenuItem(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f523l = context;
        this.f512a = i2;
        this.f513b = i;
        this.f514c = i4;
        this.f515d = charSequence;
    }

    /* renamed from: c */
    private void m21934c() {
        if (this.f522k == null) {
            return;
        }
        if (this.f528q || this.f529r) {
            Drawable r = DrawableCompat.m19495r(this.f522k);
            this.f522k = r;
            Drawable mutate = r.mutate();
            this.f522k = mutate;
            if (this.f528q) {
                DrawableCompat.m19498o(mutate, this.f526o);
            }
            if (this.f529r) {
                DrawableCompat.m19497p(this.f522k, this.f527p);
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    /* renamed from: a */
    public SupportMenuItem mo19454a(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    /* renamed from: b */
    public ActionProvider mo19453b() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    /* renamed from: d */
    public SupportMenuItem m21933d(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public SupportMenuItem m21932e(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    /* renamed from: f */
    public SupportMenuItem m21931f(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f521j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f520i;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f524m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f513b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f522k;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f526o;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f527p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f517f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f512a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f519h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f518g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f514c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f515d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f516e;
        if (charSequence == null) {
            charSequence = this.f515d;
        }
        return charSequence;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f525n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f530s & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f530s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f530s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f530s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i) {
        m21933d(i);
        throw null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m21932e(view);
        throw null;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f520i = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f520i = Character.toLowerCase(c);
        this.f521j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f530s = (z ? 1 : 0) | (this.f530s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f530s = (z ? 2 : 0) | (this.f530s & (-3));
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f524m = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f530s = (z ? 16 : 0) | (this.f530s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f522k = ContextCompat.m19673f(this.f523l, i);
        m21934c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f522k = drawable;
        m21934c();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f526o = colorStateList;
        this.f528q = true;
        m21934c();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f527p = mode;
        this.f529r = true;
        m21934c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f517f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f518g = c;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f518g = c;
        this.f519h = KeyEvent.normalizeMetaState(i);
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
        this.f518g = c;
        this.f520i = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f518g = c;
        this.f519h = KeyEvent.normalizeMetaState(i);
        this.f520i = Character.toLowerCase(c2);
        this.f521j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        m21931f(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f515d = this.f523l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f515d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f516e = charSequence;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f525n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        int i = this.f530s;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f530s = (i & 8) | i2;
        return this;
    }
}
