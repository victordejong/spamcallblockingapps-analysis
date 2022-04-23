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
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemImpl.class */
public final class MenuItemImpl implements SupportMenuItem {

    /* renamed from: A */
    private View f661A;

    /* renamed from: B */
    private ActionProvider f662B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f663C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f665E;

    /* renamed from: a */
    private final int f666a;

    /* renamed from: b */
    private final int f667b;

    /* renamed from: c */
    private final int f668c;

    /* renamed from: d */
    private final int f669d;

    /* renamed from: e */
    private CharSequence f670e;

    /* renamed from: f */
    private CharSequence f671f;

    /* renamed from: g */
    private Intent f672g;

    /* renamed from: h */
    private char f673h;

    /* renamed from: j */
    private char f675j;

    /* renamed from: l */
    private Drawable f677l;

    /* renamed from: n */
    MenuBuilder f679n;

    /* renamed from: o */
    private SubMenuBuilder f680o;

    /* renamed from: p */
    private Runnable f681p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f682q;

    /* renamed from: r */
    private CharSequence f683r;

    /* renamed from: s */
    private CharSequence f684s;

    /* renamed from: z */
    private int f691z;

    /* renamed from: i */
    private int f674i = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: k */
    private int f676k = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: m */
    private int f678m = 0;

    /* renamed from: t */
    private ColorStateList f685t = null;

    /* renamed from: u */
    private PorterDuff.Mode f686u = null;

    /* renamed from: v */
    private boolean f687v = false;

    /* renamed from: w */
    private boolean f688w = false;

    /* renamed from: x */
    private boolean f689x = false;

    /* renamed from: y */
    private int f690y = 16;

    /* renamed from: D */
    private boolean f664D = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f691z = 0;
        this.f679n = menuBuilder;
        this.f666a = i2;
        this.f667b = i;
        this.f668c = i3;
        this.f669d = i4;
        this.f670e = charSequence;
        this.f691z = i5;
    }

    /* renamed from: d */
    private static void m21841d(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f688w != false) goto L_0x001f;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m21840e(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x004a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f689x
            if (r0 == 0) goto L_0x004a
            r0 = r3
            boolean r0 = r0.f687v
            if (r0 != 0) goto L_0x001f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f688w
            if (r0 == 0) goto L_0x004a
        L_0x001f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.m19495r(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f687v
            if (r0 == 0) goto L_0x0036
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f685t
            androidx.core.graphics.drawable.DrawableCompat.m19498o(r0, r1)
        L_0x0036:
            r0 = r3
            boolean r0 = r0.f688w
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f686u
            androidx.core.graphics.drawable.DrawableCompat.m19497p(r0, r1)
        L_0x0045:
            r0 = r3
            r1 = 0
            r0.f689x = r1
        L_0x004a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.MenuItemImpl.m21840e(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public boolean m21844A() {
        return this.f679n.mo21785J() && m21838g() != 0;
    }

    /* renamed from: B */
    public boolean m21843B() {
        return (this.f691z & 4) == 4;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    /* renamed from: a */
    public SupportMenuItem mo19454a(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.f662B;
        if (actionProvider2 != null) {
            actionProvider2.m19322h();
        }
        this.f661A = null;
        this.f662B = actionProvider;
        this.f679n.mo9484M(true);
        ActionProvider actionProvider3 = this.f662B;
        if (actionProvider3 != null) {
            actionProvider3.mo19320j(new ActionProvider.VisibilityListener() { // from class: androidx.appcompat.view.menu.MenuItemImpl.1
                @Override // androidx.core.view.ActionProvider.VisibilityListener
                public void onActionProviderVisibilityChanged(boolean z) {
                    MenuItemImpl menuItemImpl = MenuItemImpl.this;
                    menuItemImpl.f679n.m21888L(menuItemImpl);
                }
            });
        }
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    /* renamed from: b */
    public ActionProvider mo19453b() {
        return this.f662B;
    }

    /* renamed from: c */
    public void m21842c() {
        this.f679n.m21889K(this);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f691z & 8) == 0) {
            return false;
        }
        if (this.f661A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f663C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f679n.mo21783f(this);
        }
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (!m21835j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f663C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f679n.mo21780m(this);
        }
        return false;
    }

    /* renamed from: f */
    public int m21839f() {
        return this.f669d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public char m21838g() {
        return this.f679n.mo21786I() ? this.f675j : this.f673h;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        View view = this.f661A;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.f662B;
        if (actionProvider == null) {
            return null;
        }
        View d = actionProvider.mo19326d(this);
        this.f661A = d;
        return d;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f676k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f675j;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f683r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f667b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f677l;
        if (drawable != null) {
            return m21840e(drawable);
        }
        if (this.f678m == 0) {
            return null;
        }
        Drawable d = AppCompatResources.m22069d(this.f679n.m21850w(), this.f678m);
        this.f678m = 0;
        this.f677l = d;
        return m21840e(d);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f685t;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f686u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f672g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f666a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f665E;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f674i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f673h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f668c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f680o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f670e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f671f;
        if (charSequence == null) {
            charSequence = this.f670e;
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

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f684s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public String m21837h() {
        char g = m21838g();
        if (g == 0) {
            return "";
        }
        Resources resources = this.f679n.m21850w().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f679n.m21850w()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0042R.string.abc_prepend_shortcut_label));
        }
        int i = this.f679n.mo21786I() ? this.f676k : this.f674i;
        m21841d(sb, i, 65536, resources.getString(C0042R.string.abc_menu_meta_shortcut_label));
        m21841d(sb, i, CodedOutputStream.DEFAULT_BUFFER_SIZE, resources.getString(C0042R.string.abc_menu_ctrl_shortcut_label));
        m21841d(sb, i, 2, resources.getString(C0042R.string.abc_menu_alt_shortcut_label));
        m21841d(sb, i, 1, resources.getString(C0042R.string.abc_menu_shift_shortcut_label));
        m21841d(sb, i, 4, resources.getString(C0042R.string.abc_menu_sym_shortcut_label));
        m21841d(sb, i, 8, resources.getString(C0042R.string.abc_menu_function_shortcut_label));
        if (g == '\b') {
            sb.append(resources.getString(C0042R.string.abc_menu_delete_shortcut_label));
        } else if (g == '\n') {
            sb.append(resources.getString(C0042R.string.abc_menu_enter_shortcut_label));
        } else if (g != ' ') {
            sb.append(g);
        } else {
            sb.append(resources.getString(C0042R.string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f680o != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public CharSequence m21836i(MenuView.ItemView itemView) {
        return (itemView == null || !itemView.mo9539d()) ? getTitle() : getTitleCondensed();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f664D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f690y & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f690y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f690y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.f662B;
        boolean z = true;
        boolean z2 = true;
        if (actionProvider == null || !actionProvider.mo19323g()) {
            if ((this.f690y & 8) != 0) {
                z = false;
            }
            return z;
        }
        if ((this.f690y & 8) != 0 || !this.f662B.mo19328b()) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: j */
    public boolean m21835j() {
        ActionProvider actionProvider;
        boolean z = false;
        if ((this.f691z & 8) != 0) {
            if (this.f661A == null && (actionProvider = this.f662B) != null) {
                this.f661A = actionProvider.mo19326d(this);
            }
            z = false;
            if (this.f661A != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public boolean m21834k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f682q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        MenuBuilder menuBuilder = this.f679n;
        if (menuBuilder.mo21782h(menuBuilder, this)) {
            return true;
        }
        Runnable runnable = this.f681p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f672g != null) {
            try {
                this.f679n.m21850w().startActivity(this.f672g);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        ActionProvider actionProvider = this.f662B;
        return actionProvider != null && actionProvider.mo19325e();
    }

    /* renamed from: l */
    public boolean m21833l() {
        return (this.f690y & 32) == 32;
    }

    /* renamed from: m */
    public boolean m21832m() {
        return (this.f690y & 4) != 0;
    }

    /* renamed from: n */
    public boolean m21831n() {
        boolean z = true;
        if ((this.f691z & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public boolean m21830o() {
        return (this.f691z & 2) == 2;
    }

    /* renamed from: p */
    public SupportMenuItem m21829p(int i) {
        Context w = this.f679n.m21850w();
        m21828q(LayoutInflater.from(w).inflate(i, (ViewGroup) new LinearLayout(w), false));
        return this;
    }

    /* renamed from: q */
    public SupportMenuItem m21828q(View view) {
        int i;
        this.f661A = view;
        this.f662B = null;
        if (view != null && view.getId() == -1 && (i = this.f666a) > 0) {
            view.setId(i);
        }
        this.f679n.m21889K(this);
        return this;
    }

    /* renamed from: r */
    public void m21827r(boolean z) {
        this.f664D = z;
        this.f679n.mo9484M(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m21826s(boolean z) {
        int i = this.f690y;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f690y = i2;
        if (i != i2) {
            this.f679n.mo9484M(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i) {
        m21829p(i);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m21828q(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f675j == c) {
            return this;
        }
        this.f675j = Character.toLowerCase(c);
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f675j == c && this.f676k == i) {
            return this;
        }
        this.f675j = Character.toLowerCase(c);
        this.f676k = KeyEvent.normalizeMetaState(i);
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f690y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f690y = i2;
        if (i != i2) {
            this.f679n.mo9484M(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f690y & 4) != 0) {
            this.f679n.m21878X(this);
        } else {
            m21826s(z);
        }
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f683r = charSequence;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f690y |= 16;
        } else {
            this.f690y &= -17;
        }
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f677l = null;
        this.f678m = i;
        this.f689x = true;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f678m = 0;
        this.f677l = drawable;
        this.f689x = true;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f685t = colorStateList;
        this.f687v = true;
        this.f689x = true;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f686u = mode;
        this.f688w = true;
        this.f689x = true;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f672g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f673h == c) {
            return this;
        }
        this.f673h = c;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f673h == c && this.f674i == i) {
            return this;
        }
        this.f673h = c;
        this.f674i = KeyEvent.normalizeMetaState(i);
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f663C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f682q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f673h = c;
        this.f675j = Character.toLowerCase(c2);
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f673h = c;
        this.f674i = KeyEvent.normalizeMetaState(i);
        this.f675j = Character.toLowerCase(c2);
        this.f676k = KeyEvent.normalizeMetaState(i2);
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f691z = i;
            this.f679n.m21889K(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        m21822w(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.f679n.m21850w().getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f670e = charSequence;
        this.f679n.mo9484M(false);
        SubMenuBuilder subMenuBuilder = this.f680o;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f671f = charSequence;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f684s = charSequence;
        this.f679n.mo9484M(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m21820y(z)) {
            this.f679n.m21888L(this);
        }
        return this;
    }

    /* renamed from: t */
    public void m21825t(boolean z) {
        this.f690y = (z ? 4 : 0) | (this.f690y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f670e;
        return charSequence != null ? charSequence.toString() : null;
    }

    /* renamed from: u */
    public void m21824u(boolean z) {
        if (z) {
            this.f690y |= 32;
        } else {
            this.f690y &= -33;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m21823v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f665E = contextMenuInfo;
    }

    /* renamed from: w */
    public SupportMenuItem m21822w(int i) {
        setShowAsAction(i);
        return this;
    }

    /* renamed from: x */
    public void m21821x(SubMenuBuilder subMenuBuilder) {
        this.f680o = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public boolean m21820y(boolean z) {
        int i = this.f690y;
        boolean z2 = false;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f690y = i2;
        if (i != i2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: z */
    public boolean m21819z() {
        return this.f679n.m21893C();
    }
}
