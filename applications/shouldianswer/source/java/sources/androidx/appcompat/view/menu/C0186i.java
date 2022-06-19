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
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
import androidx.core.p023g.AbstractC0530b;
import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class C0186i implements AbstractMenuItemC0461b {

    /* renamed from: A */
    private View f723A;

    /* renamed from: B */
    private AbstractC0530b f724B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f725C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f727E;

    /* renamed from: a */
    C0182g f728a;

    /* renamed from: b */
    private final int f729b;

    /* renamed from: c */
    private final int f730c;

    /* renamed from: d */
    private final int f731d;

    /* renamed from: e */
    private final int f732e;

    /* renamed from: f */
    private CharSequence f733f;

    /* renamed from: g */
    private CharSequence f734g;

    /* renamed from: h */
    private Intent f735h;

    /* renamed from: i */
    private char f736i;

    /* renamed from: k */
    private char f738k;

    /* renamed from: m */
    private Drawable f740m;

    /* renamed from: o */
    private SubMenuC0206r f742o;

    /* renamed from: p */
    private Runnable f743p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f744q;

    /* renamed from: r */
    private CharSequence f745r;

    /* renamed from: s */
    private CharSequence f746s;

    /* renamed from: z */
    private int f753z;

    /* renamed from: j */
    private int f737j = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: l */
    private int f739l = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: n */
    private int f741n = 0;

    /* renamed from: t */
    private ColorStateList f747t = null;

    /* renamed from: u */
    private PorterDuff.Mode f748u = null;

    /* renamed from: v */
    private boolean f749v = false;

    /* renamed from: w */
    private boolean f750w = false;

    /* renamed from: x */
    private boolean f751x = false;

    /* renamed from: y */
    private int f752y = 16;

    /* renamed from: D */
    private boolean f726D = false;

    public C0186i(C0182g c0182g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f753z = 0;
        this.f728a = c0182g;
        this.f729b = i2;
        this.f730c = i;
        this.f731d = i3;
        this.f732e = i4;
        this.f733f = charSequence;
        this.f753z = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f750w != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m7563a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L4a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f751x
            if (r0 == 0) goto L4a
            r0 = r3
            boolean r0 = r0.f749v
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f750w
            if (r0 == 0) goto L4a
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0575a.m6122g(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f749v
            if (r0 == 0) goto L36
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f747t
            androidx.core.graphics.drawable.C0575a.m6133a(r0, r1)
        L36:
            r0 = r3
            boolean r0 = r0.f750w
            if (r0 == 0) goto L45
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f748u
            androidx.core.graphics.drawable.C0575a.m6130a(r0, r1)
        L45:
            r0 = r3
            r1 = 0
            r0.f751x = r1
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0186i.m7563a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private static void m7558a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: a */
    public AbstractMenuItemC0461b setActionView(int i) {
        Context context = this.f728a.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    /* renamed from: a */
    public AbstractMenuItemC0461b setActionView(View view) {
        int i;
        this.f723A = view;
        this.f724B = null;
        if (view != null && view.getId() == -1 && (i = this.f729b) > 0) {
            view.setId(i);
        }
        this.f728a.onItemActionRequestChanged(this);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractMenuItemC0461b mo6549a(AbstractC0530b abstractC0530b) {
        AbstractC0530b abstractC0530b2 = this.f724B;
        if (abstractC0530b2 != null) {
            abstractC0530b2.m6347f();
        }
        this.f723A = null;
        this.f724B = abstractC0530b;
        this.f728a.onItemsChanged(true);
        AbstractC0530b abstractC0530b3 = this.f724B;
        if (abstractC0530b3 != null) {
            abstractC0530b3.mo6353a(new AbstractC0530b.AbstractC0532b() { // from class: androidx.appcompat.view.menu.i.1
                @Override // androidx.core.p023g.AbstractC0530b.AbstractC0532b
                /* renamed from: a */
                public void mo6345a(boolean z) {
                    C0186i.this.f728a.onItemVisibleChanged(C0186i.this);
                }
            });
        }
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractMenuItemC0461b setContentDescription(CharSequence charSequence) {
        this.f745r = charSequence;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: a */
    public AbstractC0530b mo6550a() {
        return this.f724B;
    }

    /* renamed from: a */
    public CharSequence m7560a(AbstractC0199n.AbstractC0200a abstractC0200a) {
        return (abstractC0200a == null || !abstractC0200a.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    /* renamed from: a */
    public void m7562a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f727E = contextMenuInfo;
    }

    /* renamed from: a */
    public void m7559a(SubMenuC0206r subMenuC0206r) {
        this.f742o = subMenuC0206r;
        subMenuC0206r.setHeaderTitle(getTitle());
    }

    /* renamed from: a */
    public void m7557a(boolean z) {
        this.f752y = (z ? 4 : 0) | (this.f752y & (-5));
    }

    /* renamed from: b */
    public AbstractMenuItemC0461b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b
    /* renamed from: b */
    public AbstractMenuItemC0461b setTooltipText(CharSequence charSequence) {
        this.f746s = charSequence;
        this.f728a.onItemsChanged(false);
        return this;
    }

    /* renamed from: b */
    public void m7554b(boolean z) {
        int i = this.f752y;
        this.f752y = (z ? 2 : 0) | (i & (-3));
        if (i != this.f752y) {
            this.f728a.onItemsChanged(false);
        }
    }

    /* renamed from: b */
    public boolean m7556b() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f744q;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            C0182g c0182g = this.f728a;
            if (c0182g.dispatchMenuItemSelected(c0182g, this)) {
                return true;
            }
            Runnable runnable = this.f743p;
            if (runnable != null) {
                runnable.run();
                return true;
            }
            if (this.f735h != null) {
                try {
                    this.f728a.getContext().startActivity(this.f735h);
                    return true;
                } catch (ActivityNotFoundException e) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
                }
            }
            AbstractC0530b abstractC0530b = this.f724B;
            return abstractC0530b != null && abstractC0530b.mo6351b();
        }
        return true;
    }

    /* renamed from: c */
    public int m7553c() {
        return this.f732e;
    }

    /* renamed from: c */
    public boolean m7552c(boolean z) {
        int i = this.f752y;
        this.f752y = (z ? 0 : 8) | (i & (-9));
        boolean z2 = false;
        if (i != this.f752y) {
            z2 = true;
        }
        return z2;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f753z & 8) == 0) {
            return false;
        }
        if (this.f723A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f725C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f728a.collapseItemActionView(this);
    }

    /* renamed from: d */
    public char m7551d() {
        return this.f728a.isQwertyMode() ? this.f738k : this.f736i;
    }

    /* renamed from: d */
    public void m7550d(boolean z) {
        if (z) {
            this.f752y |= 32;
        } else {
            this.f752y &= -33;
        }
    }

    /* renamed from: e */
    public String m7549e() {
        char m7551d = m7551d();
        if (m7551d == 0) {
            return "";
        }
        Resources resources = this.f728a.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f728a.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0051a.C0059h.abc_prepend_shortcut_label));
        }
        int i = this.f728a.isQwertyMode() ? this.f739l : this.f737j;
        m7558a(sb, i, 65536, resources.getString(C0051a.C0059h.abc_menu_meta_shortcut_label));
        m7558a(sb, i, CodedOutputStream.DEFAULT_BUFFER_SIZE, resources.getString(C0051a.C0059h.abc_menu_ctrl_shortcut_label));
        m7558a(sb, i, 2, resources.getString(C0051a.C0059h.abc_menu_alt_shortcut_label));
        m7558a(sb, i, 1, resources.getString(C0051a.C0059h.abc_menu_shift_shortcut_label));
        m7558a(sb, i, 4, resources.getString(C0051a.C0059h.abc_menu_sym_shortcut_label));
        m7558a(sb, i, 8, resources.getString(C0051a.C0059h.abc_menu_function_shortcut_label));
        if (m7551d == '\b') {
            sb.append(resources.getString(C0051a.C0059h.abc_menu_delete_shortcut_label));
        } else if (m7551d == '\n') {
            sb.append(resources.getString(C0051a.C0059h.abc_menu_enter_shortcut_label));
        } else if (m7551d != ' ') {
            sb.append(m7551d);
        } else {
            sb.append(resources.getString(C0051a.C0059h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    /* renamed from: e */
    public void m7548e(boolean z) {
        this.f726D = z;
        this.f728a.onItemsChanged(false);
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m7539n()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f725C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f728a.expandItemActionView(this);
    }

    /* renamed from: f */
    public boolean m7547f() {
        return this.f728a.isShortcutsVisible() && m7551d() != 0;
    }

    /* renamed from: g */
    public boolean m7546g() {
        return (this.f752y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public View getActionView() {
        View view = this.f723A;
        if (view != null) {
            return view;
        }
        AbstractC0530b abstractC0530b = this.f724B;
        if (abstractC0530b == null) {
            return null;
        }
        this.f723A = abstractC0530b.mo6356a(this);
        return this.f723A;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f739l;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f738k;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f745r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f730c;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f740m;
        if (drawable != null) {
            return m7563a(drawable);
        }
        if (this.f741n == 0) {
            return null;
        }
        Drawable m7983b = C0062a.m7983b(this.f728a.getContext(), this.f741n);
        this.f741n = 0;
        this.f740m = m7983b;
        return m7563a(m7983b);
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f747t;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f748u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f735h;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f729b;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f727E;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f737j;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f736i;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f731d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f742o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f733f;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f734g;
        if (charSequence == null) {
            charSequence = this.f733f;
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

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f746s;
    }

    /* renamed from: h */
    public void m7545h() {
        this.f728a.onItemActionRequestChanged(this);
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f742o != null;
    }

    /* renamed from: i */
    public boolean m7544i() {
        return this.f728a.getOptionalIconsVisible();
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f726D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f752y & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f752y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f752y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC0530b abstractC0530b = this.f724B;
        boolean z = true;
        if (abstractC0530b == null || !abstractC0530b.mo6349d()) {
            return (this.f752y & 8) == 0;
        }
        if ((this.f752y & 8) != 0 || !this.f724B.mo6348e()) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m7543j() {
        return (this.f752y & 32) == 32;
    }

    /* renamed from: k */
    public boolean m7542k() {
        boolean z = true;
        if ((this.f753z & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public boolean m7541l() {
        return (this.f753z & 2) == 2;
    }

    /* renamed from: m */
    public boolean m7540m() {
        return (this.f753z & 4) == 4;
    }

    /* renamed from: n */
    public boolean m7539n() {
        AbstractC0530b abstractC0530b;
        boolean z = false;
        if ((this.f753z & 8) != 0) {
            if (this.f723A == null && (abstractC0530b = this.f724B) != null) {
                this.f723A = abstractC0530b.mo6356a(this);
            }
            z = false;
            if (this.f723A != null) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f738k == c) {
            return this;
        }
        this.f738k = Character.toLowerCase(c);
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f738k == c && this.f739l == i) {
            return this;
        }
        this.f738k = Character.toLowerCase(c);
        this.f739l = KeyEvent.normalizeMetaState(i);
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f752y;
        this.f752y = (z ? 1 : 0) | (i & (-2));
        if (i != this.f752y) {
            this.f728a.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f752y & 4) != 0) {
            this.f728a.setExclusiveItemChecked(this);
        } else {
            m7554b(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f752y |= 16;
        } else {
            this.f752y &= -17;
        }
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f740m = null;
        this.f741n = i;
        this.f751x = true;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f741n = 0;
        this.f740m = drawable;
        this.f751x = true;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f747t = colorStateList;
        this.f749v = true;
        this.f751x = true;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f748u = mode;
        this.f750w = true;
        this.f751x = true;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f735h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f736i == c) {
            return this;
        }
        this.f736i = c;
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f736i == c && this.f737j == i) {
            return this;
        }
        this.f736i = c;
        this.f737j = KeyEvent.normalizeMetaState(i);
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f725C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f744q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f736i = c;
        this.f738k = Character.toLowerCase(c2);
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f736i = c;
        this.f737j = KeyEvent.normalizeMetaState(i);
        this.f738k = Character.toLowerCase(c2);
        this.f739l = KeyEvent.normalizeMetaState(i2);
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.p017b.p018a.AbstractMenuItemC0461b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f753z = i;
            this.f728a.onItemActionRequestChanged(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f728a.getContext().getString(i));
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f733f = charSequence;
        this.f728a.onItemsChanged(false);
        SubMenuC0206r subMenuC0206r = this.f742o;
        if (subMenuC0206r != null) {
            subMenuC0206r.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f734g = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f733f;
        }
        this.f728a.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m7552c(z)) {
            this.f728a.onItemVisibleChanged(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f733f;
        return charSequence != null ? charSequence.toString() : null;
    }
}
