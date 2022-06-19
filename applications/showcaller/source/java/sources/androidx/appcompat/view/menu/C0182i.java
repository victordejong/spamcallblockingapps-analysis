package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.AbstractC0195n;
import p020b.p021a.C1430h;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
import p020b.p041h.p050l.AbstractC1605b;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class C0182i implements AbstractMenuItemC1540b {

    /* renamed from: A */
    private View f660A;

    /* renamed from: B */
    private AbstractC1605b f661B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f662C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f664E;

    /* renamed from: a */
    private final int f665a;

    /* renamed from: b */
    private final int f666b;

    /* renamed from: c */
    private final int f667c;

    /* renamed from: d */
    private final int f668d;

    /* renamed from: e */
    private CharSequence f669e;

    /* renamed from: f */
    private CharSequence f670f;

    /* renamed from: g */
    private Intent f671g;

    /* renamed from: h */
    private char f672h;

    /* renamed from: j */
    private char f674j;

    /* renamed from: l */
    private Drawable f676l;

    /* renamed from: n */
    C0178g f678n;

    /* renamed from: o */
    private SubMenuC0202r f679o;

    /* renamed from: p */
    private Runnable f680p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f681q;

    /* renamed from: r */
    private CharSequence f682r;

    /* renamed from: s */
    private CharSequence f683s;

    /* renamed from: z */
    private int f690z;

    /* renamed from: i */
    private int f673i = 4096;

    /* renamed from: k */
    private int f675k = 4096;

    /* renamed from: m */
    private int f677m = 0;

    /* renamed from: t */
    private ColorStateList f684t = null;

    /* renamed from: u */
    private PorterDuff.Mode f685u = null;

    /* renamed from: v */
    private boolean f686v = false;

    /* renamed from: w */
    private boolean f687w = false;

    /* renamed from: x */
    private boolean f688x = false;

    /* renamed from: y */
    private int f689y = 16;

    /* renamed from: D */
    private boolean f663D = false;

    /* renamed from: androidx.appcompat.view.menu.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i$a.class */
    class C0183a implements AbstractC1605b.AbstractC1607b {
        C0183a() {
            C0182i.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1605b.AbstractC1607b
        public void onActionProviderVisibilityChanged(boolean z) {
            C0182i c0182i = C0182i.this;
            c0182i.f678n.m35407L(c0182i);
        }
    }

    public C0182i(C0178g c0178g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f690z = 0;
        this.f678n = c0178g;
        this.f665a = i2;
        this.f666b = i;
        this.f667c = i3;
        this.f668d = i4;
        this.f669e = charSequence;
        this.f690z = i5;
    }

    /* renamed from: d */
    private static void m35360d(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f687w != false) goto L10;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m35359e(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L4a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f688x
            if (r0 == 0) goto L4a
            r0 = r3
            boolean r0 = r0.f686v
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f687w
            if (r0 == 0) goto L4a
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0615a.m33212r(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f686v
            if (r0 == 0) goto L36
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f684t
            androidx.core.graphics.drawable.C0615a.m33215o(r0, r1)
        L36:
            r0 = r3
            boolean r0 = r0.f687w
            if (r0 == 0) goto L45
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f685u
            androidx.core.graphics.drawable.C0615a.m33214p(r0, r1)
        L45:
            r0 = r3
            r1 = 0
            r0.f688x = r1
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0182i.m35359e(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: A */
    public boolean m35363A() {
        return this.f678n.mo35303J() && m35357g() != 0;
    }

    /* renamed from: B */
    public boolean m35362B() {
        return (this.f690z & 4) == 4;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b
    /* renamed from: a */
    public AbstractMenuItemC1540b mo29772a(AbstractC1605b abstractC1605b) {
        AbstractC1605b abstractC1605b2 = this.f661B;
        if (abstractC1605b2 != null) {
            abstractC1605b2.m29624h();
        }
        this.f660A = null;
        this.f661B = abstractC1605b;
        this.f678n.mo4492M(true);
        AbstractC1605b abstractC1605b3 = this.f661B;
        if (abstractC1605b3 != null) {
            abstractC1605b3.mo29622j(new C0183a());
        }
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b
    /* renamed from: b */
    public AbstractC1605b mo29771b() {
        return this.f661B;
    }

    /* renamed from: c */
    public void m35361c() {
        this.f678n.m35408K(this);
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f690z & 8) == 0) {
            return false;
        }
        if (this.f660A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f662C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f678n.mo35301f(this);
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m35354j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f662C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f678n.mo35298m(this);
    }

    /* renamed from: f */
    public int m35358f() {
        return this.f668d;
    }

    /* renamed from: g */
    public char m35357g() {
        return this.f678n.mo35304I() ? this.f674j : this.f672h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public View getActionView() {
        View view = this.f660A;
        if (view != null) {
            return view;
        }
        AbstractC1605b abstractC1605b = this.f661B;
        if (abstractC1605b == null) {
            return null;
        }
        View mo29628d = abstractC1605b.mo29628d(this);
        this.f660A = mo29628d;
        return mo29628d;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f675k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f674j;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f682r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f666b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f676l;
        if (drawable != null) {
            return m35359e(drawable);
        }
        if (this.f677m == 0) {
            return null;
        }
        Drawable m30126d = C1433a.m30126d(this.f678n.m35369w(), this.f677m);
        this.f677m = 0;
        this.f676l = m30126d;
        return m35359e(m30126d);
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f684t;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f685u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f671g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f665a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f664E;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f673i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f672h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f667c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f679o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f669e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f670f;
        if (charSequence == null) {
            charSequence = this.f669e;
        }
        String str = charSequence;
        if (Build.VERSION.SDK_INT < 18) {
            str = charSequence;
            if (charSequence != null) {
                str = charSequence;
                if (!(charSequence instanceof String)) {
                    str = charSequence.toString();
                }
            }
        }
        return str;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f683s;
    }

    /* renamed from: h */
    public String m35356h() {
        char m35357g = m35357g();
        if (m35357g == 0) {
            return "";
        }
        Resources resources = this.f678n.m35369w().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f678n.m35369w()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C1430h.abc_prepend_shortcut_label));
        }
        int i = this.f678n.mo35304I() ? this.f675k : this.f673i;
        m35360d(sb, i, 65536, resources.getString(C1430h.abc_menu_meta_shortcut_label));
        m35360d(sb, i, 4096, resources.getString(C1430h.abc_menu_ctrl_shortcut_label));
        m35360d(sb, i, 2, resources.getString(C1430h.abc_menu_alt_shortcut_label));
        m35360d(sb, i, 1, resources.getString(C1430h.abc_menu_shift_shortcut_label));
        m35360d(sb, i, 4, resources.getString(C1430h.abc_menu_sym_shortcut_label));
        m35360d(sb, i, 8, resources.getString(C1430h.abc_menu_function_shortcut_label));
        if (m35357g == '\b') {
            sb.append(resources.getString(C1430h.abc_menu_delete_shortcut_label));
        } else if (m35357g == '\n') {
            sb.append(resources.getString(C1430h.abc_menu_enter_shortcut_label));
        } else if (m35357g != ' ') {
            sb.append(m35357g);
        } else {
            sb.append(resources.getString(C1430h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f679o != null;
    }

    /* renamed from: i */
    public CharSequence m35355i(AbstractC0195n.AbstractC0196a abstractC0196a) {
        return (abstractC0196a == null || !abstractC0196a.mo4641d()) ? getTitle() : getTitleCondensed();
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f663D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f689y & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f689y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f689y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC1605b abstractC1605b = this.f661B;
        boolean z = true;
        if (abstractC1605b == null || !abstractC1605b.mo29625g()) {
            return (this.f689y & 8) == 0;
        }
        if ((this.f689y & 8) != 0 || !this.f661B.mo29630b()) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m35354j() {
        AbstractC1605b abstractC1605b;
        boolean z = false;
        if ((this.f690z & 8) != 0) {
            if (this.f660A == null && (abstractC1605b = this.f661B) != null) {
                this.f660A = abstractC1605b.mo29628d(this);
            }
            z = false;
            if (this.f660A != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public boolean m35353k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f681q;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            C0178g c0178g = this.f678n;
            if (c0178g.mo35300h(c0178g, this)) {
                return true;
            }
            Runnable runnable = this.f680p;
            if (runnable != null) {
                runnable.run();
                return true;
            }
            if (this.f671g != null) {
                try {
                    this.f678n.m35369w().startActivity(this.f671g);
                    return true;
                } catch (ActivityNotFoundException e) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
                }
            }
            AbstractC1605b abstractC1605b = this.f661B;
            return abstractC1605b != null && abstractC1605b.mo29627e();
        }
        return true;
    }

    /* renamed from: l */
    public boolean m35352l() {
        return (this.f689y & 32) == 32;
    }

    /* renamed from: m */
    public boolean m35351m() {
        return (this.f689y & 4) != 0;
    }

    /* renamed from: n */
    public boolean m35350n() {
        boolean z = true;
        if ((this.f690z & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public boolean m35349o() {
        return (this.f690z & 2) == 2;
    }

    /* renamed from: p */
    public AbstractMenuItemC1540b setActionView(int i) {
        Context m35369w = this.f678n.m35369w();
        setActionView(LayoutInflater.from(m35369w).inflate(i, (ViewGroup) new LinearLayout(m35369w), false));
        return this;
    }

    /* renamed from: q */
    public AbstractMenuItemC1540b setActionView(View view) {
        int i;
        this.f660A = view;
        this.f661B = null;
        if (view != null && view.getId() == -1 && (i = this.f665a) > 0) {
            view.setId(i);
        }
        this.f678n.m35408K(this);
        return this;
    }

    /* renamed from: r */
    public void m35346r(boolean z) {
        this.f663D = z;
        this.f678n.mo4492M(false);
    }

    /* renamed from: s */
    public void m35345s(boolean z) {
        int i = this.f689y;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f689y = i2;
        if (i != i2) {
            this.f678n.mo4492M(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f674j == c) {
            return this;
        }
        this.f674j = Character.toLowerCase(c);
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f674j == c && this.f675k == i) {
            return this;
        }
        this.f674j = Character.toLowerCase(c);
        this.f675k = KeyEvent.normalizeMetaState(i);
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f689y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f689y = i2;
        if (i != i2) {
            this.f678n.mo4492M(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f689y & 4) != 0) {
            this.f678n.m35397X(this);
        } else {
            m35345s(z);
        }
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public AbstractMenuItemC1540b setContentDescription(CharSequence charSequence) {
        this.f682r = charSequence;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f689y |= 16;
        } else {
            this.f689y &= -17;
        }
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f676l = null;
        this.f677m = i;
        this.f688x = true;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f677m = 0;
        this.f676l = drawable;
        this.f688x = true;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f684t = colorStateList;
        this.f686v = true;
        this.f688x = true;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f685u = mode;
        this.f687w = true;
        this.f688x = true;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f671g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f672h == c) {
            return this;
        }
        this.f672h = c;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f672h == c && this.f673i == i) {
            return this;
        }
        this.f672h = c;
        this.f673i = KeyEvent.normalizeMetaState(i);
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f662C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f681q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f672h = c;
        this.f674j = Character.toLowerCase(c2);
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f672h = c;
        this.f673i = KeyEvent.normalizeMetaState(i);
        this.f674j = Character.toLowerCase(c2);
        this.f675k = KeyEvent.normalizeMetaState(i2);
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f690z = i;
            this.f678n.m35408K(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f678n.m35369w().getString(i));
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f669e = charSequence;
        this.f678n.mo4492M(false);
        SubMenuC0202r subMenuC0202r = this.f679o;
        if (subMenuC0202r != null) {
            subMenuC0202r.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f670f = charSequence;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // p020b.p041h.p043f.p044a.AbstractMenuItemC1540b, android.view.MenuItem
    public AbstractMenuItemC1540b setTooltipText(CharSequence charSequence) {
        this.f683s = charSequence;
        this.f678n.mo4492M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m35339y(z)) {
            this.f678n.m35407L(this);
        }
        return this;
    }

    /* renamed from: t */
    public void m35344t(boolean z) {
        this.f689y = (z ? 4 : 0) | (this.f689y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f669e;
        return charSequence != null ? charSequence.toString() : null;
    }

    /* renamed from: u */
    public void m35343u(boolean z) {
        if (z) {
            this.f689y |= 32;
        } else {
            this.f689y &= -33;
        }
    }

    /* renamed from: v */
    public void m35342v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f664E = contextMenuInfo;
    }

    /* renamed from: w */
    public AbstractMenuItemC1540b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    /* renamed from: x */
    public void m35340x(SubMenuC0202r subMenuC0202r) {
        this.f679o = subMenuC0202r;
        subMenuC0202r.setHeaderTitle(getTitle());
    }

    /* renamed from: y */
    public boolean m35339y(boolean z) {
        int i = this.f689y;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f689y = i2;
        boolean z2 = false;
        if (i != i2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: z */
    public boolean m35338z() {
        return this.f678n.m35412C();
    }
}
