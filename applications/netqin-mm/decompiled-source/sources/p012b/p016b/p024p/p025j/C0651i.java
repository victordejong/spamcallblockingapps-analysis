package p012b.p016b.p024p.p025j;

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
import com.google.common.collect.MapMakerInternalMap;
import p012b.p016b.C0581h;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
import p012b.p042i.p054p.AbstractC0952b;
/* renamed from: b.b.p.j.i */
/* loaded from: classes-dex2jar.jar:b/b/p/j/i.class */
public final class C0651i implements AbstractMenuItemC0914b {

    /* renamed from: A */
    public View f3259A;

    /* renamed from: B */
    public AbstractC0952b f3260B;

    /* renamed from: C */
    public MenuItem.OnActionExpandListener f3261C;

    /* renamed from: E */
    public ContextMenu.ContextMenuInfo f3263E;

    /* renamed from: a */
    public final int f3264a;

    /* renamed from: b */
    public final int f3265b;

    /* renamed from: c */
    public final int f3266c;

    /* renamed from: d */
    public final int f3267d;

    /* renamed from: e */
    public CharSequence f3268e;

    /* renamed from: f */
    public CharSequence f3269f;

    /* renamed from: g */
    public Intent f3270g;

    /* renamed from: h */
    public char f3271h;

    /* renamed from: j */
    public char f3273j;

    /* renamed from: l */
    public Drawable f3275l;

    /* renamed from: n */
    public C0647g f3277n;

    /* renamed from: o */
    public SubMenuC0671r f3278o;

    /* renamed from: p */
    public Runnable f3279p;

    /* renamed from: q */
    public MenuItem.OnMenuItemClickListener f3280q;

    /* renamed from: r */
    public CharSequence f3281r;

    /* renamed from: s */
    public CharSequence f3282s;

    /* renamed from: z */
    public int f3289z;

    /* renamed from: i */
    public int f3272i = 4096;

    /* renamed from: k */
    public int f3274k = 4096;

    /* renamed from: m */
    public int f3276m = 0;

    /* renamed from: t */
    public ColorStateList f3283t = null;

    /* renamed from: u */
    public PorterDuff.Mode f3284u = null;

    /* renamed from: v */
    public boolean f3285v = false;

    /* renamed from: w */
    public boolean f3286w = false;

    /* renamed from: x */
    public boolean f3287x = false;

    /* renamed from: y */
    public int f3288y = 16;

    /* renamed from: D */
    public boolean f3262D = false;

    /* renamed from: b.b.p.j.i$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/i$a.class */
    public class C0652a implements AbstractC0952b.AbstractC0954b {
        public C0652a() {
        }

        @Override // p012b.p042i.p054p.AbstractC0952b.AbstractC0954b
        public void onActionProviderVisibilityChanged(boolean z) {
            C0651i iVar = C0651i.this;
            iVar.f3277n.m36593d(iVar);
        }
    }

    public C0651i(C0647g gVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f3289z = 0;
        this.f3277n = gVar;
        this.f3264a = i2;
        this.f3265b = i;
        this.f3266c = i3;
        this.f3267d = i4;
        this.f3268e = charSequence;
        this.f3289z = i5;
    }

    /* renamed from: a */
    public static void m36568a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f3286w != false) goto L_0x001f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m36572a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x004a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f3287x
            if (r0 == 0) goto L_0x004a
            r0 = r3
            boolean r0 = r0.f3285v
            if (r0 != 0) goto L_0x001f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f3286w
            if (r0 == 0) goto L_0x004a
        L_0x001f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = p012b.p042i.p046j.p047m.C0907a.m35514h(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f3285v
            if (r0 == 0) goto L_0x0036
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f3283t
            p012b.p042i.p046j.p047m.C0907a.m35526a(r0, r1)
        L_0x0036:
            r0 = r3
            boolean r0 = r0.f3286w
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f3284u
            p012b.p042i.p046j.p047m.C0907a.m35523a(r0, r1)
        L_0x0045:
            r0 = r3
            r1 = 0
            r0.f3287x = r1
        L_0x004a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p024p.p025j.C0651i.m36572a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b
    /* renamed from: a */
    public AbstractMenuItemC0914b mo35504a(AbstractC0952b bVar) {
        AbstractC0952b bVar2 = this.f3260B;
        if (bVar2 != null) {
            bVar2.m35422f();
        }
        this.f3259A = null;
        this.f3260B = bVar;
        this.f3277n.m36595c(true);
        AbstractC0952b bVar3 = this.f3260B;
        if (bVar3 != null) {
            bVar3.mo35428a(new C0652a());
        }
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b
    /* renamed from: a */
    public AbstractC0952b mo35505a() {
        return this.f3260B;
    }

    /* renamed from: a */
    public CharSequence m36570a(AbstractC0664n.AbstractC0665a aVar) {
        return (aVar == null || !aVar.mo36518c()) ? getTitle() : getTitleCondensed();
    }

    /* renamed from: a */
    public void m36571a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f3263E = contextMenuInfo;
    }

    /* renamed from: a */
    public void m36569a(SubMenuC0671r rVar) {
        this.f3278o = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    /* renamed from: a */
    public void m36567a(boolean z) {
        this.f3262D = z;
        this.f3277n.m36595c(false);
    }

    /* renamed from: b */
    public void m36566b() {
        this.f3277n.m36596c(this);
    }

    /* renamed from: b */
    public void m36565b(boolean z) {
        int i = this.f3288y;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f3288y = i2;
        if (i != i2) {
            this.f3277n.m36595c(false);
        }
    }

    /* renamed from: c */
    public int m36564c() {
        return this.f3267d;
    }

    /* renamed from: c */
    public void m36563c(boolean z) {
        this.f3288y = (z ? 4 : 0) | (this.f3288y & (-5));
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f3289z & 8) == 0) {
            return false;
        }
        if (this.f3259A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f3261C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f3277n.mo36499a(this);
        }
        return false;
    }

    /* renamed from: d */
    public char m36562d() {
        return this.f3277n.mo36494p() ? this.f3273j : this.f3271h;
    }

    /* renamed from: d */
    public void m36561d(boolean z) {
        if (z) {
            this.f3288y |= 32;
        } else {
            this.f3288y &= -33;
        }
    }

    /* renamed from: e */
    public String m36560e() {
        char d = m36562d();
        if (d == 0) {
            return "";
        }
        Resources resources = this.f3277n.m36591e().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f3277n.m36591e()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0581h.abc_prepend_shortcut_label));
        }
        int i = this.f3277n.mo36494p() ? this.f3274k : this.f3272i;
        m36568a(sb, i, MapMakerInternalMap.MAX_SEGMENTS, resources.getString(C0581h.abc_menu_meta_shortcut_label));
        m36568a(sb, i, 4096, resources.getString(C0581h.abc_menu_ctrl_shortcut_label));
        m36568a(sb, i, 2, resources.getString(C0581h.abc_menu_alt_shortcut_label));
        m36568a(sb, i, 1, resources.getString(C0581h.abc_menu_shift_shortcut_label));
        m36568a(sb, i, 4, resources.getString(C0581h.abc_menu_sym_shortcut_label));
        m36568a(sb, i, 8, resources.getString(C0581h.abc_menu_function_shortcut_label));
        if (d == '\b') {
            sb.append(resources.getString(C0581h.abc_menu_delete_shortcut_label));
        } else if (d == '\n') {
            sb.append(resources.getString(C0581h.abc_menu_enter_shortcut_label));
        } else if (d != ' ') {
            sb.append(d);
        } else {
            sb.append(resources.getString(C0581h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    /* renamed from: e */
    public boolean m36559e(boolean z) {
        int i = this.f3288y;
        boolean z2 = false;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f3288y = i2;
        if (i != i2) {
            z2 = true;
        }
        return z2;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m36558f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f3261C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f3277n.mo36498b(this);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m36558f() {
        AbstractC0952b bVar;
        boolean z = false;
        if ((this.f3289z & 8) != 0) {
            if (this.f3259A == null && (bVar = this.f3260B) != null) {
                this.f3259A = bVar.mo35431a(this);
            }
            z = false;
            if (this.f3259A != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public boolean m36557g() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f3280q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        C0647g gVar = this.f3277n;
        if (gVar.mo36500a(gVar, this)) {
            return true;
        }
        Runnable runnable = this.f3279p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f3270g != null) {
            try {
                this.f3277n.m36591e().startActivity(this.f3270g);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        AbstractC0952b bVar = this.f3260B;
        return bVar != null && bVar.mo35424d();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public View getActionView() {
        View view = this.f3259A;
        if (view != null) {
            return view;
        }
        AbstractC0952b bVar = this.f3260B;
        if (bVar == null) {
            return null;
        }
        View a = bVar.mo35431a(this);
        this.f3259A = a;
        return a;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f3274k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f3273j;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f3281r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f3265b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f3275l;
        if (drawable != null) {
            return m36572a(drawable);
        }
        if (this.f3276m == 0) {
            return null;
        }
        Drawable c = C0601a.m36777c(this.f3277n.m36591e(), this.f3276m);
        this.f3276m = 0;
        this.f3275l = c;
        return m36572a(c);
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f3283t;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f3284u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f3270g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f3264a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f3263E;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f3272i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f3271h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f3266c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f3278o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f3268e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f3269f;
        if (charSequence == null) {
            charSequence = this.f3268e;
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

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f3282s;
    }

    /* renamed from: h */
    public boolean m36556h() {
        return (this.f3288y & 32) == 32;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f3278o != null;
    }

    /* renamed from: i */
    public boolean m36555i() {
        return (this.f3288y & 4) != 0;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f3262D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f3288y & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f3288y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f3288y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC0952b bVar = this.f3260B;
        boolean z = true;
        boolean z2 = true;
        if (bVar == null || !bVar.mo35423e()) {
            if ((this.f3288y & 8) != 0) {
                z = false;
            }
            return z;
        }
        if ((this.f3288y & 8) != 0 || !this.f3260B.mo35426b()) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: j */
    public boolean m36554j() {
        boolean z = true;
        if ((this.f3289z & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    public boolean m36553k() {
        return (this.f3289z & 2) == 2;
    }

    /* renamed from: l */
    public boolean m36552l() {
        return this.f3277n.m36582k();
    }

    /* renamed from: m */
    public boolean m36551m() {
        return this.f3277n.mo36493q() && m36562d() != 0;
    }

    /* renamed from: n */
    public boolean m36550n() {
        return (this.f3289z & 4) == 4;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setActionView(int i) {
        Context e = this.f3277n.m36591e();
        setActionView(LayoutInflater.from(e).inflate(i, (ViewGroup) new LinearLayout(e), false));
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setActionView(View view) {
        int i;
        this.f3259A = view;
        this.f3260B = null;
        if (view != null && view.getId() == -1 && (i = this.f3264a) > 0) {
            view.setId(i);
        }
        this.f3277n.m36596c(this);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f3273j == c) {
            return this;
        }
        this.f3273j = Character.toLowerCase(c);
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f3273j == c && this.f3274k == i) {
            return this;
        }
        this.f3273j = Character.toLowerCase(c);
        this.f3274k = KeyEvent.normalizeMetaState(i);
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f3288y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f3288y = i2;
        if (i != i2) {
            this.f3277n.m36595c(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f3288y & 4) != 0) {
            this.f3277n.m36614a((MenuItem) this);
        } else {
            m36565b(z);
        }
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setContentDescription(CharSequence charSequence) {
        this.f3281r = charSequence;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f3288y |= 16;
        } else {
            this.f3288y &= -17;
        }
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f3275l = null;
        this.f3276m = i;
        this.f3287x = true;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f3276m = 0;
        this.f3275l = drawable;
        this.f3287x = true;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3283t = colorStateList;
        this.f3285v = true;
        this.f3287x = true;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3284u = mode;
        this.f3286w = true;
        this.f3287x = true;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f3270g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f3271h == c) {
            return this;
        }
        this.f3271h = c;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f3271h == c && this.f3272i == i) {
            return this;
        }
        this.f3271h = c;
        this.f3272i = KeyEvent.normalizeMetaState(i);
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f3261C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f3280q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f3271h = c;
        this.f3273j = Character.toLowerCase(c2);
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f3271h = c;
        this.f3272i = KeyEvent.normalizeMetaState(i);
        this.f3273j = Character.toLowerCase(c2);
        this.f3274k = KeyEvent.normalizeMetaState(i2);
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f3289z = i;
            this.f3277n.m36596c(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.f3277n.m36591e().getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f3268e = charSequence;
        this.f3277n.m36595c(false);
        SubMenuC0671r rVar = this.f3278o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f3269f = charSequence;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // p012b.p042i.p048k.p049a.AbstractMenuItemC0914b, android.view.MenuItem
    public AbstractMenuItemC0914b setTooltipText(CharSequence charSequence) {
        this.f3282s = charSequence;
        this.f3277n.m36595c(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m36559e(z)) {
            this.f3277n.m36593d(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f3268e;
        return charSequence != null ? charSequence.toString() : null;
    }
}
