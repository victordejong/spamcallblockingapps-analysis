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
import androidx.appcompat.a.a.a;
import androidx.appcompat.view.menu.n;
import androidx.core.a.a.b;
import androidx.core.view.b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class i implements b {
    private int B;
    private View C;
    private MenuItem.OnActionExpandListener D;

    /* renamed from: a  reason: collision with root package name */
    final int f816a;

    /* renamed from: d  reason: collision with root package name */
    g f819d;
    public androidx.core.view.b e;
    ContextMenu.ContextMenuInfo f;
    private final int g;
    private final int h;
    private final int i;
    private CharSequence j;
    private CharSequence k;
    private Intent l;
    private char m;
    private char n;
    private Drawable o;
    private r q;
    private Runnable r;
    private MenuItem.OnMenuItemClickListener s;
    private CharSequence t;
    private CharSequence u;

    /* renamed from: b  reason: collision with root package name */
    int f817b = 4096;

    /* renamed from: c  reason: collision with root package name */
    int f818c = 4096;
    private int p = 0;
    private ColorStateList v = null;
    private PorterDuff.Mode w = null;
    private boolean x = false;
    private boolean y = false;
    private boolean z = false;
    private int A = 16;
    private boolean E = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.B = 0;
        this.f819d = gVar;
        this.g = i2;
        this.h = i;
        this.i = i3;
        this.f816a = i4;
        this.j = charSequence;
        this.B = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.y != false) goto L_0x001f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x004a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.z
            if (r0 == 0) goto L_0x004a
            r0 = r3
            boolean r0 = r0.x
            if (r0 != 0) goto L_0x001f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.y
            if (r0 == 0) goto L_0x004a
        L_0x001f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.a.f(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.x
            if (r0 == 0) goto L_0x0036
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.v
            androidx.core.graphics.drawable.a.a(r0, r1)
        L_0x0036:
            r0 = r3
            boolean r0 = r0.y
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.w
            androidx.core.graphics.drawable.a.a(r0, r1)
        L_0x0045:
            r0 = r3
            r1 = 0
            r0.z = r1
        L_0x004a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.i.a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public b setActionView(View view) {
        int i;
        this.C = view;
        this.e = null;
        if (view != null && view.getId() == -1 && (i = this.g) > 0) {
            view.setId(i);
        }
        this.f819d.h();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    private void e(boolean z) {
        int i = this.A;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.A = i2;
        if (i != i2) {
            this.f819d.b(false);
        }
    }

    @Override // androidx.core.a.a.b
    public final b a(androidx.core.view.b bVar) {
        androidx.core.view.b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.e = null;
            bVar2.f1989d = null;
        }
        this.C = null;
        this.e = bVar;
        this.f819d.b(true);
        androidx.core.view.b bVar3 = this.e;
        if (bVar3 != null) {
            bVar3.a(new b.AbstractC0054b() { // from class: androidx.appcompat.view.menu.i.1
                @Override // androidx.core.view.b.AbstractC0054b
                public final void a() {
                    i.this.f819d.g();
                }
            });
        }
        return this;
    }

    @Override // androidx.core.a.a.b
    /* renamed from: a */
    public final androidx.core.a.a.b setContentDescription(CharSequence charSequence) {
        this.t = charSequence;
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b
    public final androidx.core.view.b a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final CharSequence a(n.a aVar) {
        return aVar.b() ? getTitleCondensed() : getTitle();
    }

    public final void a(r rVar) {
        this.q = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    public final void a(boolean z) {
        this.A = (z ? 4 : 0) | (this.A & (-5));
    }

    @Override // androidx.core.a.a.b
    /* renamed from: b */
    public final androidx.core.a.a.b setTooltipText(CharSequence charSequence) {
        this.u = charSequence;
        this.f819d.b(false);
        return this;
    }

    public final boolean b() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.s;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        g gVar = this.f819d;
        if (gVar.a(gVar, this)) {
            return true;
        }
        Runnable runnable = this.r;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.l != null) {
            try {
                this.f819d.f808a.startActivity(this.l);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        androidx.core.view.b bVar = this.e;
        return bVar != null && bVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(boolean z) {
        int i = this.A;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.A = i2;
        return i != i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char c() {
        return this.f819d.c() ? this.n : this.m;
    }

    public final void c(boolean z) {
        if (z) {
            this.A |= 32;
        } else {
            this.A &= -33;
        }
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.B & 8) == 0) {
            return false;
        }
        if (this.C == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.D;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f819d.b(this);
        }
        return false;
    }

    public final void d(boolean z) {
        this.E = z;
        this.f819d.b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.f819d.d() && c() != 0;
    }

    public final boolean e() {
        return (this.A & 4) != 0;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.D;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f819d.a(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.A & 32) == 32;
    }

    public final boolean g() {
        return (this.B & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final View getActionView() {
        View view = this.C;
        if (view != null) {
            return view;
        }
        androidx.core.view.b bVar = this.e;
        if (bVar == null) {
            return null;
        }
        View a2 = bVar.a(this);
        this.C = a2;
        return a2;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f818c;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.n;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.t;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.o;
        if (drawable != null) {
            return a(drawable);
        }
        if (this.p == 0) {
            return null;
        }
        Drawable b2 = a.b(this.f819d.f808a, this.p);
        this.p = 0;
        this.o = b2;
        return a(b2);
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.v;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.w;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.l;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f817b;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.q;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.k;
        if (charSequence == null) {
            charSequence = this.j;
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

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.u;
    }

    public final boolean h() {
        return (this.B & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.q != null;
    }

    public final boolean i() {
        return (this.B & 4) == 4;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.E;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.A & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.A & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.A & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        androidx.core.view.b bVar = this.e;
        return (bVar == null || !bVar.d()) ? (this.A & 8) == 0 : (this.A & 8) == 0 && this.e.e();
    }

    public final boolean j() {
        androidx.core.view.b bVar;
        if ((this.B & 8) == 0) {
            return false;
        }
        if (this.C == null && (bVar = this.e) != null) {
            this.C = bVar.a(this);
        }
        return this.C != null;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        Context context = this.f819d.f808a;
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.n == c2) {
            return this;
        }
        this.n = Character.toLowerCase(c2);
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.n == c2 && this.f818c == i) {
            return this;
        }
        this.n = Character.toLowerCase(c2);
        this.f818c = KeyEvent.normalizeMetaState(i);
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.A;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.A = i2;
        if (i != i2) {
            this.f819d.b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        if ((this.A & 4) != 0) {
            g gVar = this.f819d;
            int groupId = getGroupId();
            int size = gVar.f810c.size();
            gVar.e();
            for (int i = 0; i < size; i++) {
                i iVar = gVar.f810c.get(i);
                if (iVar.getGroupId() == groupId && iVar.e() && iVar.isCheckable()) {
                    iVar.e(iVar == this);
                }
            }
            gVar.f();
        } else {
            e(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.A |= 16;
        } else {
            this.A &= -17;
        }
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.o = null;
        this.p = i;
        this.z = true;
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.p = 0;
        this.o = drawable;
        this.z = true;
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.v = colorStateList;
        this.x = true;
        this.z = true;
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.w = mode;
        this.y = true;
        this.z = true;
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.l = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        if (this.m == c2) {
            return this;
        }
        this.m = c2;
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i) {
        if (this.m == c2 && this.f817b == i) {
            return this;
        }
        this.m = c2;
        this.f817b = KeyEvent.normalizeMetaState(i);
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.D = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.s = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.m = c2;
        this.n = Character.toLowerCase(c3);
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.m = c2;
        this.f817b = KeyEvent.normalizeMetaState(i);
        this.n = Character.toLowerCase(c3);
        this.f818c = KeyEvent.normalizeMetaState(i2);
        this.f819d.b(false);
        return this;
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.B = i;
            this.f819d.h();
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // androidx.core.a.a.b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        return setTitle(this.f819d.f808a.getString(i));
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.j = charSequence;
        this.f819d.b(false);
        r rVar = this.q;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.k = charSequence;
        this.f819d.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        if (b(z)) {
            this.f819d.g();
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.j;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
