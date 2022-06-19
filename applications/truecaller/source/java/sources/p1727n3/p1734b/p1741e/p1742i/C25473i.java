package p1727n3.p1734b.p1741e.p1742i;

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
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1821i.AbstractC26561b;
/* renamed from: n3.b.e.i.i */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/i.class */
public final class C25473i implements AbstractMenuItemC26506b {

    /* renamed from: A */
    public AbstractC26561b f71243A;

    /* renamed from: B */
    public MenuItem.OnActionExpandListener f71244B;

    /* renamed from: D */
    public ContextMenu.ContextMenuInfo f71246D;

    /* renamed from: a */
    public final int f71247a;

    /* renamed from: b */
    public final int f71248b;

    /* renamed from: c */
    public final int f71249c;

    /* renamed from: d */
    public final int f71250d;

    /* renamed from: e */
    public CharSequence f71251e;

    /* renamed from: f */
    public CharSequence f71252f;

    /* renamed from: g */
    public Intent f71253g;

    /* renamed from: h */
    public char f71254h;

    /* renamed from: j */
    public char f71256j;

    /* renamed from: l */
    public Drawable f71258l;

    /* renamed from: n */
    public C25469g f71260n;

    /* renamed from: o */
    public r f71261o;

    /* renamed from: p */
    public MenuItem.OnMenuItemClickListener f71262p;

    /* renamed from: q */
    public CharSequence f71263q;

    /* renamed from: r */
    public CharSequence f71264r;

    /* renamed from: y */
    public int f71271y;

    /* renamed from: z */
    public View f71272z;

    /* renamed from: i */
    public int f71255i = 4096;

    /* renamed from: k */
    public int f71257k = 4096;

    /* renamed from: m */
    public int f71259m = 0;

    /* renamed from: s */
    public ColorStateList f71265s = null;

    /* renamed from: t */
    public PorterDuff.Mode f71266t = null;

    /* renamed from: u */
    public boolean f71267u = false;

    /* renamed from: v */
    public boolean f71268v = false;

    /* renamed from: w */
    public boolean f71269w = false;

    /* renamed from: x */
    public int f71270x = 16;

    /* renamed from: C */
    public boolean f71245C = false;

    /* renamed from: n3.b.e.i.i$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/i$a.class */
    public class C25474a implements AbstractC26561b.AbstractC26562a {
        public C25474a() {
            C25473i.this = r4;
        }
    }

    public C25473i(C25469g c25469g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f71271y = 0;
        this.f71260n = c25469g;
        this.f71247a = i2;
        this.f71248b = i;
        this.f71249c = i3;
        this.f71250d = i4;
        this.f71251e = charSequence;
        this.f71271y = i5;
    }

    /* renamed from: c */
    public static void m3456c(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b
    /* renamed from: a */
    public AbstractC26561b mo1724a() {
        return this.f71243A;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b
    /* renamed from: b */
    public AbstractMenuItemC26506b mo1723b(AbstractC26561b abstractC26561b) {
        AbstractC26561b abstractC26561b2 = this.f71243A;
        if (abstractC26561b2 != null) {
            abstractC26561b2.f74414a = null;
        }
        this.f71272z = null;
        this.f71243A = abstractC26561b;
        this.f71260n.m3467q(true);
        AbstractC26561b abstractC26561b3 = this.f71243A;
        if (abstractC26561b3 != null) {
            abstractC26561b3.m1669h(new C25474a());
        }
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f71271y & 8) == 0) {
            return false;
        }
        if (this.f71272z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f71244B;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f71260n.m3480d(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f71268v != false) goto L10;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m3455d(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L47
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f71269w
            if (r0 == 0) goto L47
            r0 = r3
            boolean r0 = r0.f71267u
            if (r0 != 0) goto L1f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f71268v
            if (r0 == 0) goto L47
        L1f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f71267u
            if (r0 == 0) goto L33
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f71265s
            r0.setTintList(r1)
        L33:
            r0 = r3
            boolean r0 = r0.f71268v
            if (r0 == 0) goto L42
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f71266t
            r0.setTintMode(r1)
        L42:
            r0 = r3
            r1 = 0
            r0.f71269w = r1
        L47:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1741e.p1742i.C25473i.m3455d(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: e */
    public char m3454e() {
        return this.f71260n.m3470n() ? this.f71256j : this.f71254h;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m3453f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f71244B;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f71260n.m3478f(this);
    }

    /* renamed from: f */
    public boolean m3453f() {
        AbstractC26561b abstractC26561b;
        boolean z = false;
        if ((this.f71271y & 8) != 0) {
            if (this.f71272z == null && (abstractC26561b = this.f71243A) != null) {
                this.f71272z = abstractC26561b.m1673d(this);
            }
            z = false;
            if (this.f71272z != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public boolean m3452g() {
        return (this.f71270x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public View getActionView() {
        View view = this.f71272z;
        if (view != null) {
            return view;
        }
        AbstractC26561b abstractC26561b = this.f71243A;
        if (abstractC26561b == null) {
            return null;
        }
        View m1673d = abstractC26561b.m1673d(this);
        this.f71272z = m1673d;
        return m1673d;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f71257k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f71256j;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f71263q;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f71248b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f71258l;
        if (drawable != null) {
            return m3455d(drawable);
        }
        int i = this.f71259m;
        if (i == 0) {
            return null;
        }
        Drawable m3540a = C25440a.m3540a(this.f71260n.f71216a, i);
        this.f71259m = 0;
        this.f71258l = m3540a;
        return m3455d(m3540a);
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f71265s;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f71266t;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f71253g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f71247a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f71246D;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f71255i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f71254h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f71249c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f71261o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f71251e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f71252f;
        if (charSequence == null) {
            charSequence = this.f71251e;
        }
        return charSequence;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f71264r;
    }

    /* renamed from: h */
    public boolean m3451h() {
        return (this.f71270x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f71261o != null;
    }

    /* renamed from: i */
    public AbstractMenuItemC26506b m3450i(View view) {
        int i;
        this.f71272z = view;
        this.f71243A = null;
        if (view != null && view.getId() == -1 && (i = this.f71247a) > 0) {
            view.setId(i);
        }
        this.f71260n.m3468p();
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f71245C;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        boolean z = true;
        if ((this.f71270x & 1) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f71270x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f71270x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC26561b abstractC26561b = this.f71243A;
        boolean z = true;
        if (abstractC26561b == null || !abstractC26561b.m1670g()) {
            return (this.f71270x & 8) == 0;
        }
        if ((this.f71270x & 8) != 0 || !this.f71243A.m1675b()) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public void m3449j(boolean z) {
        int i = this.f71270x;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f71270x = i2;
        if (i != i2) {
            this.f71260n.m3467q(false);
        }
    }

    /* renamed from: k */
    public void m3448k(boolean z) {
        this.f71270x = (z ? 4 : 0) | (this.f71270x & (-5));
    }

    /* renamed from: l */
    public void m3447l(boolean z) {
        if (z) {
            this.f71270x |= 32;
        } else {
            this.f71270x &= -33;
        }
    }

    /* renamed from: m */
    public boolean m3446m(boolean z) {
        int i = this.f71270x;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f71270x = i2;
        boolean z2 = false;
        if (i != i2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: n */
    public boolean m3445n() {
        return this.f71260n.m3469o() && m3454e() != 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setActionView(int i) {
        Context context = this.f71260n.f71216a;
        m3450i(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m3450i(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f71256j == c) {
            return this;
        }
        this.f71256j = Character.toLowerCase(c);
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f71256j == c && this.f71257k == i) {
            return this;
        }
        this.f71256j = Character.toLowerCase(c);
        this.f71257k = KeyEvent.normalizeMetaState(i);
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f71270x;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f71270x = i2;
        if (i != i2) {
            this.f71260n.m3467q(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f71270x & 4) != 0) {
            C25469g c25469g = this.f71260n;
            Objects.requireNonNull(c25469g);
            int groupId = getGroupId();
            int size = c25469g.f71221f.size();
            c25469g.m3484A();
            for (int i = 0; i < size; i++) {
                C25473i c25473i = c25469g.f71221f.get(i);
                if (c25473i.f71248b == groupId && c25473i.m3451h() && c25473i.isCheckable()) {
                    c25473i.m3449j(c25473i == this);
                }
            }
            c25469g.m3458z();
        } else {
            m3449j(z);
        }
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public MenuItem mo50026setContentDescription(CharSequence charSequence) {
        this.f71263q = charSequence;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setContentDescription */
    public AbstractMenuItemC26506b mo50026setContentDescription(CharSequence charSequence) {
        this.f71263q = charSequence;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f71270x |= 16;
        } else {
            this.f71270x &= -17;
        }
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f71258l = null;
        this.f71259m = i;
        this.f71269w = true;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f71259m = 0;
        this.f71258l = drawable;
        this.f71269w = true;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f71265s = colorStateList;
        this.f71267u = true;
        this.f71269w = true;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f71266t = mode;
        this.f71268v = true;
        this.f71269w = true;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f71253g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f71254h == c) {
            return this;
        }
        this.f71254h = c;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f71254h == c && this.f71255i == i) {
            return this;
        }
        this.f71254h = c;
        this.f71255i = KeyEvent.normalizeMetaState(i);
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f71244B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f71262p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f71254h = c;
        this.f71256j = Character.toLowerCase(c2);
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f71254h = c;
        this.f71255i = KeyEvent.normalizeMetaState(i);
        this.f71256j = Character.toLowerCase(c2);
        this.f71257k = KeyEvent.normalizeMetaState(i2);
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f71271y = i;
            this.f71260n.m3468p();
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.f71260n.f71216a.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f71251e = charSequence;
        this.f71260n.m3467q(false);
        r rVar = this.f71261o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f71252f = charSequence;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public MenuItem mo50027setTooltipText(CharSequence charSequence) {
        this.f71264r = charSequence;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b, android.view.MenuItem
    /* renamed from: setTooltipText */
    public AbstractMenuItemC26506b mo50027setTooltipText(CharSequence charSequence) {
        this.f71264r = charSequence;
        this.f71260n.m3467q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m3446m(z)) {
            C25469g c25469g = this.f71260n;
            c25469g.f71223h = true;
            c25469g.m3467q(true);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f71251e;
        return charSequence != null ? charSequence.toString() : null;
    }
}
