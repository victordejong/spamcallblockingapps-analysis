package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.b;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public final class j extends androidx.appcompat.view.menu.c implements MenuItem {

    /* renamed from: b  reason: collision with root package name */
    public final androidx.core.a.a.b f821b;

    /* renamed from: c  reason: collision with root package name */
    public Method f822c;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$a.class */
    class a extends androidx.core.view.b {

        /* renamed from: a  reason: collision with root package name */
        final ActionProvider f823a;

        a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f823a = actionProvider;
        }

        @Override // androidx.core.view.b
        public final View a() {
            return this.f823a.onCreateActionView();
        }

        @Override // androidx.core.view.b
        public final void a(SubMenu subMenu) {
            this.f823a.onPrepareSubMenu(j.this.a(subMenu));
        }

        @Override // androidx.core.view.b
        public final boolean b() {
            return this.f823a.onPerformDefaultAction();
        }

        @Override // androidx.core.view.b
        public final boolean c() {
            return this.f823a.hasSubMenu();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$b.class */
    final class b extends a implements ActionProvider.VisibilityListener {
        private b.AbstractC0054b f;

        b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.view.b
        public final View a(MenuItem menuItem) {
            return this.f823a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.b
        public final void a(b.AbstractC0054b bVar) {
            this.f = bVar;
            this.f823a.setVisibilityListener(this);
        }

        @Override // androidx.core.view.b
        public final boolean d() {
            return this.f823a.overridesItemVisibility();
        }

        @Override // androidx.core.view.b
        public final boolean e() {
            return this.f823a.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z) {
            b.AbstractC0054b bVar = this.f;
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$c.class */
    static final class c extends FrameLayout implements androidx.appcompat.view.c {

        /* renamed from: a  reason: collision with root package name */
        final CollapsibleActionView f826a;

        c(View view) {
            super(view.getContext());
            this.f826a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.c
        public final void a() {
            this.f826a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.c
        public final void b() {
            this.f826a.onActionViewCollapsed();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
    final class d implements MenuItem.OnActionExpandListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem.OnActionExpandListener f828b;

        d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f828b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f828b.onMenuItemActionCollapse(j.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f828b.onMenuItemActionExpand(j.this.a(menuItem));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
    final class e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem.OnMenuItemClickListener f830b;

        e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f830b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return this.f830b.onMenuItemClick(j.this.a(menuItem));
        }
    }

    public j(Context context, androidx.core.a.a.b bVar) {
        super(context);
        if (bVar != null) {
            this.f821b = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f821b.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f821b.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        androidx.core.view.b a2 = this.f821b.a();
        if (a2 instanceof a) {
            return ((a) a2).f823a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f821b.getActionView();
        View view = actionView;
        if (actionView instanceof c) {
            view = (View) ((c) actionView).f826a;
        }
        return view;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f821b.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f821b.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f821b.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f821b.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f821b.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f821b.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f821b.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f821b.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f821b.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f821b.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f821b.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f821b.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f821b.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return a(this.f821b.getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f821b.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f821b.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f821b.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f821b.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f821b.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f821b.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f821b.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f821b.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f821b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        androidx.core.view.b bVar = Build.VERSION.SDK_INT >= 16 ? new b(this.f781a, actionProvider) : new a(this.f781a, actionProvider);
        androidx.core.a.a.b bVar2 = this.f821b;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        this.f821b.setActionView(i);
        View actionView = this.f821b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f821b.setActionView(new c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        View view2 = view;
        if (view instanceof CollapsibleActionView) {
            view2 = new c(view);
        }
        this.f821b.setActionView(view2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        this.f821b.setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i) {
        this.f821b.setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f821b.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f821b.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f821b.a(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f821b.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f821b.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f821b.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f821b.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f821b.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f821b.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        this.f821b.setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i) {
        this.f821b.setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f821b.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f821b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f821b.setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f821b.setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        this.f821b.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        this.f821b.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f821b.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f821b.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f821b.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f821b.b(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        return this.f821b.setVisible(z);
    }
}
