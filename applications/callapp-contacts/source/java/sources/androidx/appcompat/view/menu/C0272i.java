package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
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
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.core.view.AbstractC0899b;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class C0272i implements AbstractMenuItemC0713b {

    /* renamed from: B */
    private int f913B;

    /* renamed from: C */
    private View f914C;

    /* renamed from: D */
    private MenuItem.OnActionExpandListener f915D;

    /* renamed from: a */
    final int f917a;

    /* renamed from: d */
    C0268g f920d;

    /* renamed from: e */
    public AbstractC0899b f921e;

    /* renamed from: f */
    ContextMenu.ContextMenuInfo f922f;

    /* renamed from: g */
    private final int f923g;

    /* renamed from: h */
    private final int f924h;

    /* renamed from: i */
    private final int f925i;

    /* renamed from: j */
    private CharSequence f926j;

    /* renamed from: k */
    private CharSequence f927k;

    /* renamed from: l */
    private Intent f928l;

    /* renamed from: m */
    private char f929m;

    /* renamed from: n */
    private char f930n;

    /* renamed from: o */
    private Drawable f931o;

    /* renamed from: q */
    private SubMenuC0292r f933q;

    /* renamed from: r */
    private Runnable f934r;

    /* renamed from: s */
    private MenuItem.OnMenuItemClickListener f935s;

    /* renamed from: t */
    private CharSequence f936t;

    /* renamed from: u */
    private CharSequence f937u;

    /* renamed from: b */
    int f918b = 4096;

    /* renamed from: c */
    int f919c = 4096;

    /* renamed from: p */
    private int f932p = 0;

    /* renamed from: v */
    private ColorStateList f938v = null;

    /* renamed from: w */
    private PorterDuff.Mode f939w = null;

    /* renamed from: x */
    private boolean f940x = false;

    /* renamed from: y */
    private boolean f941y = false;

    /* renamed from: z */
    private boolean f942z = false;

    /* renamed from: A */
    private int f912A = 16;

    /* renamed from: E */
    private boolean f916E = false;

    public C0272i(C0268g c0268g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f913B = 0;
        this.f920d = c0268g;
        this.f923g = i2;
        this.f924h = i;
        this.f925i = i3;
        this.f917a = i4;
        this.f926j = charSequence;
        this.f913B = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f941y != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m46081a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L4a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f942z
            if (r0 == 0) goto L4a
            r0 = r3
            boolean r0 = r0.f940x
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f941y
            if (r0 == 0) goto L4a
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0840a.m44345f(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f940x
            if (r0 == 0) goto L36
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f938v
            androidx.core.graphics.drawable.C0840a.m44355a(r0, r1)
        L36:
            r0 = r3
            boolean r0 = r0.f941y
            if (r0 == 0) goto L45
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f939w
            androidx.core.graphics.drawable.C0840a.m44352a(r0, r1)
        L45:
            r0 = r3
            r1 = 0
            r0.f942z = r1
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0272i.m46081a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    public AbstractMenuItemC0713b setActionView(View view) {
        int i;
        this.f914C = view;
        this.f921e = null;
        if (view != null && view.getId() == -1 && (i = this.f923g) > 0) {
            view.setId(i);
        }
        this.f920d.m46085h();
        return this;
    }

    /* renamed from: a */
    public static void m46077a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: e */
    private void m46068e(boolean z) {
        int i = this.f912A;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f912A = i2;
        if (i != i2) {
            this.f920d.mo10524b(false);
        }
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractMenuItemC0713b mo44634a(AbstractC0899b abstractC0899b) {
        AbstractC0899b abstractC0899b2 = this.f921e;
        if (abstractC0899b2 != null) {
            abstractC0899b2.f3714e = null;
            abstractC0899b2.f3713d = null;
        }
        this.f914C = null;
        this.f921e = abstractC0899b;
        this.f920d.mo10524b(true);
        AbstractC0899b abstractC0899b3 = this.f921e;
        if (abstractC0899b3 != null) {
            abstractC0899b3.mo44204a(new AbstractC0899b.AbstractC0901b() { // from class: androidx.appcompat.view.menu.i.1
                @Override // androidx.core.view.AbstractC0899b.AbstractC0901b
                /* renamed from: a */
                public final void mo44197a() {
                    C0272i.this.f920d.m46086g();
                }
            });
        }
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractMenuItemC0713b setContentDescription(CharSequence charSequence) {
        this.f936t = charSequence;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: a */
    public final AbstractC0899b mo44635a() {
        return this.f921e;
    }

    /* renamed from: a */
    public final CharSequence m46079a(AbstractC0285n.AbstractC0286a abstractC0286a) {
        return abstractC0286a.mo10611b() ? getTitleCondensed() : getTitle();
    }

    /* renamed from: a */
    public final void m46078a(SubMenuC0292r subMenuC0292r) {
        this.f933q = subMenuC0292r;
        subMenuC0292r.setHeaderTitle(getTitle());
    }

    /* renamed from: a */
    public final void m46076a(boolean z) {
        this.f912A = (z ? 4 : 0) | (this.f912A & (-5));
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b
    /* renamed from: b */
    public final AbstractMenuItemC0713b setTooltipText(CharSequence charSequence) {
        this.f937u = charSequence;
        this.f920d.mo10524b(false);
        return this;
    }

    /* renamed from: b */
    public final boolean m46075b() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f935s;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            C0268g c0268g = this.f920d;
            if (c0268g.mo46040a(c0268g, this)) {
                return true;
            }
            Runnable runnable = this.f934r;
            if (runnable != null) {
                runnable.run();
                return true;
            }
            if (this.f928l != null) {
                try {
                    this.f920d.f883a.startActivity(this.f928l);
                    return true;
                } catch (ActivityNotFoundException e) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
                }
            }
            AbstractC0899b abstractC0899b = this.f921e;
            return abstractC0899b != null && abstractC0899b.mo44202b();
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m46074b(boolean z) {
        int i = this.f912A;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f912A = i2;
        return i != i2;
    }

    /* renamed from: c */
    public final char m46073c() {
        return this.f920d.mo46036c() ? this.f930n : this.f929m;
    }

    /* renamed from: c */
    public final void m46072c(boolean z) {
        if (z) {
            this.f912A |= 32;
        } else {
            this.f912A &= -33;
        }
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f913B & 8) == 0) {
            return false;
        }
        if (this.f914C == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f915D;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f920d.mo46037b(this);
    }

    /* renamed from: d */
    public final void m46070d(boolean z) {
        this.f916E = z;
        this.f920d.mo10524b(false);
    }

    /* renamed from: d */
    public final boolean m46071d() {
        return this.f920d.mo46035d() && m46073c() != 0;
    }

    /* renamed from: e */
    public final boolean m46069e() {
        return (this.f912A & 4) != 0;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean expandActionView() {
        if (!m46063j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f915D;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f920d.mo46039a(this);
    }

    /* renamed from: f */
    public final boolean m46067f() {
        return (this.f912A & 32) == 32;
    }

    /* renamed from: g */
    public final boolean m46066g() {
        return (this.f913B & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final View getActionView() {
        View view = this.f914C;
        if (view != null) {
            return view;
        }
        AbstractC0899b abstractC0899b = this.f921e;
        if (abstractC0899b == null) {
            return null;
        }
        View mo44206a = abstractC0899b.mo44206a(this);
        this.f914C = mo44206a;
        return mo44206a;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f919c;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f930n;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f936t;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f924h;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f931o;
        if (drawable != null) {
            return m46081a(drawable);
        }
        if (this.f932p == 0) {
            return null;
        }
        Drawable m46374b = C0153a.m46374b(this.f920d.f883a, this.f932p);
        this.f932p = 0;
        this.f931o = m46374b;
        return m46081a(m46374b);
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f938v;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f939w;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f928l;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f923g;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f922f;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f918b;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f929m;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f925i;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f933q;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f926j;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f927k;
        if (charSequence == null) {
            charSequence = this.f926j;
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

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f937u;
    }

    /* renamed from: h */
    public final boolean m46065h() {
        return (this.f913B & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f933q != null;
    }

    /* renamed from: i */
    public final boolean m46064i() {
        return (this.f913B & 4) == 4;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f916E;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f912A & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f912A & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f912A & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        AbstractC0899b abstractC0899b = this.f921e;
        return (abstractC0899b == null || !abstractC0899b.mo44200d()) ? (this.f912A & 8) == 0 : (this.f912A & 8) == 0 && this.f921e.mo44199e();
    }

    /* renamed from: j */
    public final boolean m46063j() {
        AbstractC0899b abstractC0899b;
        if ((this.f913B & 8) != 0) {
            if (this.f914C == null && (abstractC0899b = this.f921e) != null) {
                this.f914C = abstractC0899b.mo44206a(this);
            }
            return this.f914C != null;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        Context context = this.f920d.f883a;
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.f930n == c) {
            return this;
        }
        this.f930n = Character.toLowerCase(c);
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f930n == c && this.f919c == i) {
            return this;
        }
        this.f930n = Character.toLowerCase(c);
        this.f919c = KeyEvent.normalizeMetaState(i);
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.f912A;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f912A = i2;
        if (i != i2) {
            this.f920d.mo10524b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        if ((this.f912A & 4) != 0) {
            C0268g c0268g = this.f920d;
            int groupId = getGroupId();
            int size = c0268g.f885c.size();
            c0268g.m46088e();
            for (int i = 0; i < size; i++) {
                C0272i c0272i = c0268g.f885c.get(i);
                if (c0272i.getGroupId() == groupId && c0272i.m46069e() && c0272i.isCheckable()) {
                    c0272i.m46068e(c0272i == this);
                }
            }
            c0268g.m46087f();
        } else {
            m46068e(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.f912A |= 16;
        } else {
            this.f912A &= -17;
        }
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f931o = null;
        this.f932p = i;
        this.f942z = true;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f932p = 0;
        this.f931o = drawable;
        this.f942z = true;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f938v = colorStateList;
        this.f940x = true;
        this.f942z = true;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f939w = mode;
        this.f941y = true;
        this.f942z = true;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f928l = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.f929m == c) {
            return this;
        }
        this.f929m = c;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.f929m == c && this.f918b == i) {
            return this;
        }
        this.f929m = c;
        this.f918b = KeyEvent.normalizeMetaState(i);
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f915D = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f935s = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f929m = c;
        this.f930n = Character.toLowerCase(c2);
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f929m = c;
        this.f918b = KeyEvent.normalizeMetaState(i);
        this.f930n = Character.toLowerCase(c2);
        this.f919c = KeyEvent.normalizeMetaState(i2);
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f913B = i;
            this.f920d.m46085h();
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // androidx.core.p030a.p031a.AbstractMenuItemC0713b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        return setTitle(this.f920d.f883a.getString(i));
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f926j = charSequence;
        this.f920d.mo10524b(false);
        SubMenuC0292r subMenuC0292r = this.f933q;
        if (subMenuC0292r != null) {
            subMenuC0292r.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f927k = charSequence;
        this.f920d.mo10524b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        if (m46074b(z)) {
            this.f920d.m46086g();
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f926j;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
