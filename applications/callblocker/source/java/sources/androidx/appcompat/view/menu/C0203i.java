package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
import androidx.core.p026h.AbstractC0573b;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class C0203i implements AbstractMenuItemC0484b {

    /* renamed from: A */
    private View f802A;

    /* renamed from: B */
    private AbstractC0573b f803B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f804C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f806E;

    /* renamed from: a */
    C0199g f807a;

    /* renamed from: b */
    private final int f808b;

    /* renamed from: c */
    private final int f809c;

    /* renamed from: d */
    private final int f810d;

    /* renamed from: e */
    private final int f811e;

    /* renamed from: f */
    private CharSequence f812f;

    /* renamed from: g */
    private CharSequence f813g;

    /* renamed from: h */
    private Intent f814h;

    /* renamed from: i */
    private char f815i;

    /* renamed from: k */
    private char f817k;

    /* renamed from: m */
    private Drawable f819m;

    /* renamed from: o */
    private SubMenuC0223r f821o;

    /* renamed from: p */
    private Runnable f822p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f823q;

    /* renamed from: r */
    private CharSequence f824r;

    /* renamed from: s */
    private CharSequence f825s;

    /* renamed from: z */
    private int f832z;

    /* renamed from: j */
    private int f816j = 4096;

    /* renamed from: l */
    private int f818l = 4096;

    /* renamed from: n */
    private int f820n = 0;

    /* renamed from: t */
    private ColorStateList f826t = null;

    /* renamed from: u */
    private PorterDuff.Mode f827u = null;

    /* renamed from: v */
    private boolean f828v = false;

    /* renamed from: w */
    private boolean f829w = false;

    /* renamed from: x */
    private boolean f830x = false;

    /* renamed from: y */
    private int f831y = 16;

    /* renamed from: D */
    private boolean f805D = false;

    public C0203i(C0199g c0199g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f832z = 0;
        this.f807a = c0199g;
        this.f808b = i2;
        this.f809c = i;
        this.f810d = i3;
        this.f811e = i4;
        this.f812f = charSequence;
        this.f832z = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f829w != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m21844a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L4a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f830x
            if (r0 == 0) goto L4a
            r0 = r3
            boolean r0 = r0.f828v
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f829w
            if (r0 == 0) goto L4a
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0535a.m20584g(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f828v
            if (r0 == 0) goto L36
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f826t
            androidx.core.graphics.drawable.C0535a.m20595a(r0, r1)
        L36:
            r0 = r3
            boolean r0 = r0.f829w
            if (r0 == 0) goto L45
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f827u
            androidx.core.graphics.drawable.C0535a.m20592a(r0, r1)
        L45:
            r0 = r3
            r1 = 0
            r0.f830x = r1
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0203i.m21844a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private static void m21839a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: a */
    public AbstractMenuItemC0484b setActionView(int i) {
        Context m21862f = this.f807a.m21862f();
        setActionView(LayoutInflater.from(m21862f).inflate(i, (ViewGroup) new LinearLayout(m21862f), false));
        return this;
    }

    /* renamed from: a */
    public AbstractMenuItemC0484b setActionView(View view) {
        this.f802A = view;
        this.f803B = null;
        if (view != null && view.getId() == -1 && this.f808b > 0) {
            view.setId(this.f808b);
        }
        this.f807a.m21875b(this);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractMenuItemC0484b mo20730a(AbstractC0573b abstractC0573b) {
        if (this.f803B != null) {
            this.f803B.m20424f();
        }
        this.f802A = null;
        this.f803B = abstractC0573b;
        this.f807a.m21873b(true);
        if (this.f803B != null) {
            this.f803B.mo20430a(new AbstractC0573b.AbstractC0575b() { // from class: androidx.appcompat.view.menu.i.1
                @Override // androidx.core.p026h.AbstractC0573b.AbstractC0575b
                /* renamed from: a */
                public void mo20422a(boolean z) {
                    C0203i.this.f807a.m21885a(C0203i.this);
                }
            });
        }
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractMenuItemC0484b setContentDescription(CharSequence charSequence) {
        this.f824r = charSequence;
        this.f807a.m21873b(false);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: a */
    public AbstractC0573b mo20731a() {
        return this.f803B;
    }

    /* renamed from: a */
    public CharSequence m21841a(AbstractC0216n.AbstractC0217a abstractC0217a) {
        return (abstractC0217a == null || !abstractC0217a.mo2910a()) ? getTitle() : getTitleCondensed();
    }

    /* renamed from: a */
    public void m21843a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f806E = contextMenuInfo;
    }

    /* renamed from: a */
    public void m21840a(SubMenuC0223r subMenuC0223r) {
        this.f821o = subMenuC0223r;
        subMenuC0223r.setHeaderTitle(getTitle());
    }

    /* renamed from: a */
    public void m21838a(boolean z) {
        this.f831y = (z ? 4 : 0) | (this.f831y & (-5));
    }

    /* renamed from: b */
    public AbstractMenuItemC0484b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b
    /* renamed from: b */
    public AbstractMenuItemC0484b setTooltipText(CharSequence charSequence) {
        this.f825s = charSequence;
        this.f807a.m21873b(false);
        return this;
    }

    /* renamed from: b */
    public void m21835b(boolean z) {
        int i = this.f831y;
        this.f831y = (z ? 2 : 0) | (this.f831y & (-3));
        if (i != this.f831y) {
            this.f807a.m21873b(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        if (r4.f803B.mo20428b() == false) goto L24;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m21837b() {
        /*
            r4 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            android.view.MenuItem$OnMenuItemClickListener r0 = r0.f823q
            if (r0 == 0) goto L1a
            r0 = r4
            android.view.MenuItem$OnMenuItemClickListener r0 = r0.f823q
            r1 = r4
            boolean r0 = r0.onMenuItemClick(r1)
            if (r0 == 0) goto L1a
            r0 = r5
            r6 = r0
        L18:
            r0 = r6
            return r0
        L1a:
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.appcompat.view.menu.g r0 = r0.f807a
            r1 = r4
            androidx.appcompat.view.menu.g r1 = r1.f807a
            r2 = r4
            boolean r0 = r0.mo21787a(r1, r2)
            if (r0 != 0) goto L18
            r0 = r4
            java.lang.Runnable r0 = r0.f822p
            if (r0 == 0) goto L40
            r0 = r4
            java.lang.Runnable r0 = r0.f822p
            r0.run()
            r0 = r5
            r6 = r0
            goto L18
        L40:
            r0 = r4
            android.content.Intent r0 = r0.f814h
            if (r0 == 0) goto L64
            r0 = r4
            androidx.appcompat.view.menu.g r0 = r0.f807a     // Catch: android.content.ActivityNotFoundException -> L5a
            android.content.Context r0 = r0.m21862f()     // Catch: android.content.ActivityNotFoundException -> L5a
            r1 = r4
            android.content.Intent r1 = r1.f814h     // Catch: android.content.ActivityNotFoundException -> L5a
            r0.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> L5a
            r0 = r5
            r6 = r0
            goto L18
        L5a:
            r7 = move-exception
            java.lang.String r0 = "MenuItemImpl"
            java.lang.String r1 = "Can't find activity to handle intent; ignoring"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)
        L64:
            r0 = r4
            androidx.core.h.b r0 = r0.f803B
            if (r0 == 0) goto L77
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.core.h.b r0 = r0.f803B
            boolean r0 = r0.mo20428b()
            if (r0 != 0) goto L18
        L77:
            r0 = 0
            r6 = r0
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0203i.m21837b():boolean");
    }

    /* renamed from: c */
    public int m21834c() {
        return this.f811e;
    }

    /* renamed from: c */
    public boolean m21833c(boolean z) {
        int i = this.f831y;
        this.f831y = (z ? 0 : 8) | (this.f831y & (-9));
        boolean z2 = false;
        if (i != this.f831y) {
            z2 = true;
        }
        return z2;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean collapseActionView() {
        boolean z = false;
        if ((this.f832z & 8) != 0) {
            if (this.f802A == null) {
                z = true;
            } else if (this.f804C == null || this.f804C.onMenuItemActionCollapse(this)) {
                z = this.f807a.mo21782d(this);
            }
        }
        return z;
    }

    /* renamed from: d */
    public char m21832d() {
        return this.f807a.mo21785c() ? this.f817k : this.f815i;
    }

    /* renamed from: d */
    public void m21831d(boolean z) {
        if (z) {
            this.f831y |= 32;
        } else {
            this.f831y &= -33;
        }
    }

    /* renamed from: e */
    public String m21830e() {
        String sb;
        char m21832d = m21832d();
        if (m21832d == 0) {
            sb = "";
        } else {
            Resources resources = this.f807a.m21862f().getResources();
            StringBuilder sb2 = new StringBuilder();
            if (ViewConfiguration.get(this.f807a.m21862f()).hasPermanentMenuKey()) {
                sb2.append(resources.getString(C0083a.C0091h.abc_prepend_shortcut_label));
            }
            int i = this.f807a.mo21785c() ? this.f818l : this.f816j;
            m21839a(sb2, i, 65536, resources.getString(C0083a.C0091h.abc_menu_meta_shortcut_label));
            m21839a(sb2, i, 4096, resources.getString(C0083a.C0091h.abc_menu_ctrl_shortcut_label));
            m21839a(sb2, i, 2, resources.getString(C0083a.C0091h.abc_menu_alt_shortcut_label));
            m21839a(sb2, i, 1, resources.getString(C0083a.C0091h.abc_menu_shift_shortcut_label));
            m21839a(sb2, i, 4, resources.getString(C0083a.C0091h.abc_menu_sym_shortcut_label));
            m21839a(sb2, i, 8, resources.getString(C0083a.C0091h.abc_menu_function_shortcut_label));
            switch (m21832d) {
                case '\b':
                    sb2.append(resources.getString(C0083a.C0091h.abc_menu_delete_shortcut_label));
                    break;
                case '\n':
                    sb2.append(resources.getString(C0083a.C0091h.abc_menu_enter_shortcut_label));
                    break;
                case ' ':
                    sb2.append(resources.getString(C0083a.C0091h.abc_menu_space_shortcut_label));
                    break;
                default:
                    sb2.append(m21832d);
                    break;
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: e */
    public void m21829e(boolean z) {
        this.f805D = z;
        this.f807a.m21873b(false);
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean expandActionView() {
        boolean z = false;
        if (m21820n() && (this.f804C == null || this.f804C.onMenuItemActionExpand(this))) {
            z = this.f807a.mo21784c(this);
        }
        return z;
    }

    /* renamed from: f */
    public boolean m21828f() {
        return this.f807a.mo21783d() && m21832d() != 0;
    }

    /* renamed from: g */
    public boolean m21827g() {
        return (this.f831y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public View getActionView() {
        View view;
        if (this.f802A != null) {
            view = this.f802A;
        } else if (this.f803B != null) {
            this.f802A = this.f803B.mo20433a(this);
            view = this.f802A;
        } else {
            view = null;
        }
        return view;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f818l;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f817k;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f824r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f809c;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable;
        if (this.f819m != null) {
            drawable = m21844a(this.f819m);
        } else if (this.f820n != 0) {
            Drawable m22275b = C0094a.m22275b(this.f807a.m21862f(), this.f820n);
            this.f820n = 0;
            this.f819m = m22275b;
            drawable = m21844a(m22275b);
        } else {
            drawable = null;
        }
        return drawable;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f826t;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f827u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f814h;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f808b;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f806E;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f816j;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f815i;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f810d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f821o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f812f;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f813g != null ? this.f813g : this.f812f;
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

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f825s;
    }

    /* renamed from: h */
    public void m21826h() {
        this.f807a.m21875b(this);
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f821o != null;
    }

    /* renamed from: i */
    public boolean m21825i() {
        return this.f807a.m21849r();
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f805D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f831y & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f831y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f831y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        boolean z = true;
        if (this.f803B == null || !this.f803B.mo20426d()) {
            if ((this.f831y & 8) != 0) {
                z = false;
            }
        } else if ((this.f831y & 8) != 0 || !this.f803B.mo20425e()) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m21824j() {
        return (this.f831y & 32) == 32;
    }

    /* renamed from: k */
    public boolean m21823k() {
        boolean z = true;
        if ((this.f832z & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public boolean m21822l() {
        return (this.f832z & 2) == 2;
    }

    /* renamed from: m */
    public boolean m21821m() {
        return (this.f832z & 4) == 4;
    }

    /* renamed from: n */
    public boolean m21820n() {
        boolean z = false;
        if ((this.f832z & 8) != 0) {
            if (this.f802A == null && this.f803B != null) {
                this.f802A = this.f803B.mo20433a(this);
            }
            z = false;
            if (this.f802A != null) {
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
        if (this.f817k != c) {
            this.f817k = Character.toLowerCase(c);
            this.f807a.m21873b(false);
        }
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f817k != c || this.f818l != i) {
            this.f817k = Character.toLowerCase(c);
            this.f818l = KeyEvent.normalizeMetaState(i);
            this.f807a.m21873b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f831y;
        this.f831y = (z ? 1 : 0) | (this.f831y & (-2));
        if (i != this.f831y) {
            this.f807a.m21873b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f831y & 4) != 0) {
            this.f807a.m21889a((MenuItem) this);
        } else {
            m21835b(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f831y |= 16;
        } else {
            this.f831y &= -17;
        }
        this.f807a.m21873b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f819m = null;
        this.f820n = i;
        this.f830x = true;
        this.f807a.m21873b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f820n = 0;
        this.f819m = drawable;
        this.f830x = true;
        this.f807a.m21873b(false);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f826t = colorStateList;
        this.f828v = true;
        this.f830x = true;
        this.f807a.m21873b(false);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f827u = mode;
        this.f829w = true;
        this.f830x = true;
        this.f807a.m21873b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f814h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f815i != c) {
            this.f815i = c;
            this.f807a.m21873b(false);
        }
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f815i != c || this.f816j != i) {
            this.f815i = c;
            this.f816j = KeyEvent.normalizeMetaState(i);
            this.f807a.m21873b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f804C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f823q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f815i = c;
        this.f817k = Character.toLowerCase(c2);
        this.f807a.m21873b(false);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f815i = c;
        this.f816j = KeyEvent.normalizeMetaState(i);
        this.f817k = Character.toLowerCase(c2);
        this.f818l = KeyEvent.normalizeMetaState(i2);
        this.f807a.m21873b(false);
        return this;
    }

    @Override // androidx.core.p019b.p020a.AbstractMenuItemC0484b, android.view.MenuItem
    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.f832z = i;
                this.f807a.m21875b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f807a.m21862f().getString(i));
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f812f = charSequence;
        this.f807a.m21873b(false);
        if (this.f821o != null) {
            this.f821o.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f813g = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f812f;
        }
        this.f807a.m21873b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m21833c(z)) {
            this.f807a.m21885a(this);
        }
        return this;
    }

    public String toString() {
        return this.f812f != null ? this.f812f.toString() : null;
    }
}
