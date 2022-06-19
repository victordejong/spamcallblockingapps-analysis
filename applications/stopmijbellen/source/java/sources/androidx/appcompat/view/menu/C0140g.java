package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
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
import java.util.Objects;
import p097g.C2788a;
import p109h0.AbstractMenuItemC2991b;
import p163m0.AbstractC3549b;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public final class C0140g implements AbstractMenuItemC2991b {

    /* renamed from: A */
    public AbstractC3549b f454A;

    /* renamed from: B */
    public MenuItem.OnActionExpandListener f455B;

    /* renamed from: D */
    public ContextMenu.ContextMenuInfo f457D;

    /* renamed from: a */
    public final int f458a;

    /* renamed from: b */
    public final int f459b;

    /* renamed from: c */
    public final int f460c;

    /* renamed from: d */
    public final int f461d;

    /* renamed from: e */
    public CharSequence f462e;

    /* renamed from: f */
    public CharSequence f463f;

    /* renamed from: g */
    public Intent f464g;

    /* renamed from: h */
    public char f465h;

    /* renamed from: j */
    public char f467j;

    /* renamed from: l */
    public Drawable f469l;

    /* renamed from: n */
    public C0136e f471n;

    /* renamed from: o */
    public SubMenuC0151l f472o;

    /* renamed from: p */
    public MenuItem.OnMenuItemClickListener f473p;

    /* renamed from: q */
    public CharSequence f474q;

    /* renamed from: r */
    public CharSequence f475r;

    /* renamed from: y */
    public int f482y;

    /* renamed from: z */
    public View f483z;

    /* renamed from: i */
    public int f466i = 4096;

    /* renamed from: k */
    public int f468k = 4096;

    /* renamed from: m */
    public int f470m = 0;

    /* renamed from: s */
    public ColorStateList f476s = null;

    /* renamed from: t */
    public PorterDuff.Mode f477t = null;

    /* renamed from: u */
    public boolean f478u = false;

    /* renamed from: v */
    public boolean f479v = false;

    /* renamed from: w */
    public boolean f480w = false;

    /* renamed from: x */
    public int f481x = 16;

    /* renamed from: C */
    public boolean f456C = false;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public class C0141a implements AbstractC3549b.AbstractC3550a {
        public C0141a() {
            C0140g.this = r4;
        }
    }

    public C0140g(C0136e c0136e, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f482y = 0;
        this.f471n = c0136e;
        this.f458a = i2;
        this.f459b = i;
        this.f460c = i3;
        this.f461d = i4;
        this.f462e = charSequence;
        this.f482y = i5;
    }

    /* renamed from: c */
    public static void m8698c(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // p109h0.AbstractMenuItemC2991b
    /* renamed from: a */
    public AbstractC3549b mo2324a() {
        return this.f454A;
    }

    @Override // p109h0.AbstractMenuItemC2991b
    /* renamed from: b */
    public AbstractMenuItemC2991b mo2323b(AbstractC3549b abstractC3549b) {
        AbstractC3549b abstractC3549b2 = this.f454A;
        if (abstractC3549b2 != null) {
            abstractC3549b2.f11718a = null;
        }
        this.f483z = null;
        this.f454A = abstractC3549b;
        this.f471n.mo696p(true);
        AbstractC3549b abstractC3549b3 = this.f454A;
        if (abstractC3549b3 != null) {
            abstractC3549b3.mo2183h(new C0141a());
        }
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f482y & 8) == 0) {
            return false;
        }
        if (this.f483z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f455B;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f471n.mo8680d(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f479v != false) goto L10;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m8697d(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L4a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f480w
            if (r0 == 0) goto L4a
            r0 = r3
            boolean r0 = r0.f478u
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f479v
            if (r0 == 0) goto L4a
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = p098g0.C2789a.m3007h(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f478u
            if (r0 == 0) goto L36
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f476s
            r0.setTintList(r1)
        L36:
            r0 = r3
            boolean r0 = r0.f479v
            if (r0 == 0) goto L45
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f477t
            r0.setTintMode(r1)
        L45:
            r0 = r3
            r1 = 0
            r0.f480w = r1
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0140g.m8697d(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: e */
    public char m8696e() {
        return this.f471n.mo8674n() ? this.f467j : this.f465h;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m8695f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f455B;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f471n.mo8678f(this);
    }

    /* renamed from: f */
    public boolean m8695f() {
        AbstractC3549b abstractC3549b;
        boolean z = false;
        if ((this.f482y & 8) != 0) {
            if (this.f483z == null && (abstractC3549b = this.f454A) != null) {
                this.f483z = abstractC3549b.mo2187d(this);
            }
            z = false;
            if (this.f483z != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public boolean m8694g() {
        return (this.f481x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public View getActionView() {
        View view = this.f483z;
        if (view != null) {
            return view;
        }
        AbstractC3549b abstractC3549b = this.f454A;
        if (abstractC3549b == null) {
            return null;
        }
        View mo2187d = abstractC3549b.mo2187d(this);
        this.f483z = mo2187d;
        return mo2187d;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f468k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f467j;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f474q;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f459b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f469l;
        if (drawable != null) {
            return m8697d(drawable);
        }
        int i = this.f470m;
        if (i == 0) {
            return null;
        }
        Drawable m3015b = C2788a.m3015b(this.f471n.f427a, i);
        this.f470m = 0;
        this.f469l = m3015b;
        return m8697d(m3015b);
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f476s;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f477t;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f464g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f458a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f457D;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f466i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f465h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f460c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f472o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f462e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f463f;
        if (charSequence == null) {
            charSequence = this.f462e;
        }
        return charSequence;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f475r;
    }

    /* renamed from: h */
    public boolean m8693h() {
        return (this.f481x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f472o != null;
    }

    /* renamed from: i */
    public AbstractMenuItemC2991b m8692i(View view) {
        int i;
        this.f483z = view;
        this.f454A = null;
        if (view != null && view.getId() == -1 && (i = this.f458a) > 0) {
            view.setId(i);
        }
        C0136e c0136e = this.f471n;
        c0136e.f437k = true;
        c0136e.mo696p(true);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f456C;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f481x & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f481x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f481x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC3549b abstractC3549b = this.f454A;
        boolean z = true;
        if (abstractC3549b == null || !abstractC3549b.mo2184g()) {
            return (this.f481x & 8) == 0;
        }
        if ((this.f481x & 8) != 0 || !this.f454A.mo2189b()) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public void m8691j(boolean z) {
        int i = this.f481x;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f481x = i2;
        if (i != i2) {
            this.f471n.mo696p(false);
        }
    }

    /* renamed from: k */
    public void m8690k(boolean z) {
        this.f481x = (z ? 4 : 0) | (this.f481x & (-5));
    }

    /* renamed from: l */
    public void m8689l(boolean z) {
        if (z) {
            this.f481x |= 32;
        } else {
            this.f481x &= -33;
        }
    }

    /* renamed from: m */
    public boolean m8688m(boolean z) {
        int i = this.f481x;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f481x = i2;
        boolean z2 = false;
        if (i != i2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: n */
    public boolean m8687n() {
        return this.f471n.mo8673o() && m8696e() != 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setActionView(int i) {
        Context context = this.f471n.f427a;
        m8692i(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m8692i(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f467j == c) {
            return this;
        }
        this.f467j = Character.toLowerCase(c);
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f467j == c && this.f468k == i) {
            return this;
        }
        this.f467j = Character.toLowerCase(c);
        this.f468k = KeyEvent.normalizeMetaState(i);
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f481x;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f481x = i2;
        if (i != i2) {
            this.f471n.mo696p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f481x & 4) != 0) {
            C0136e c0136e = this.f471n;
            Objects.requireNonNull(c0136e);
            int groupId = getGroupId();
            int size = c0136e.f432f.size();
            c0136e.m8699y();
            for (int i = 0; i < size; i++) {
                C0140g c0140g = c0136e.f432f.get(i);
                if (c0140g.f459b == groupId && c0140g.m8693h() && c0140g.isCheckable()) {
                    c0140g.m8691j(c0140g == this);
                }
            }
            c0136e.m8700x();
        } else {
            m8691j(z);
        }
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public MenuItem mo10809setContentDescription(CharSequence charSequence) {
        this.f474q = charSequence;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public AbstractMenuItemC2991b mo10809setContentDescription(CharSequence charSequence) {
        this.f474q = charSequence;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f481x |= 16;
        } else {
            this.f481x &= -17;
        }
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f469l = null;
        this.f470m = i;
        this.f480w = true;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f470m = 0;
        this.f469l = drawable;
        this.f480w = true;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f476s = colorStateList;
        this.f478u = true;
        this.f480w = true;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f477t = mode;
        this.f479v = true;
        this.f480w = true;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f464g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f465h == c) {
            return this;
        }
        this.f465h = c;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f465h == c && this.f466i == i) {
            return this;
        }
        this.f465h = c;
        this.f466i = KeyEvent.normalizeMetaState(i);
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f455B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f473p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f465h = c;
        this.f467j = Character.toLowerCase(c2);
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f465h = c;
        this.f466i = KeyEvent.normalizeMetaState(i);
        this.f467j = Character.toLowerCase(c2);
        this.f468k = KeyEvent.normalizeMetaState(i2);
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f482y = i;
            C0136e c0136e = this.f471n;
            c0136e.f437k = true;
            c0136e.mo696p(true);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.f471n.f427a.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f462e = charSequence;
        this.f471n.mo696p(false);
        SubMenuC0151l subMenuC0151l = this.f472o;
        if (subMenuC0151l != null) {
            subMenuC0151l.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f463f = charSequence;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public MenuItem mo10810setTooltipText(CharSequence charSequence) {
        this.f475r = charSequence;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // p109h0.AbstractMenuItemC2991b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public AbstractMenuItemC2991b mo10810setTooltipText(CharSequence charSequence) {
        this.f475r = charSequence;
        this.f471n.mo696p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m8688m(z)) {
            C0136e c0136e = this.f471n;
            c0136e.f434h = true;
            c0136e.mo696p(true);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f462e;
        return charSequence != null ? charSequence.toString() : null;
    }
}
