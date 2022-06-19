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
import androidx.appcompat.view.AbstractC0243c;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.core.view.AbstractC0899b;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.view.menu.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public final class MenuItemC0274j extends AbstractC0258c implements MenuItem {

    /* renamed from: b */
    public final AbstractMenuItemC0713b f944b;

    /* renamed from: c */
    public Method f945c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$a.class */
    public class C0275a extends AbstractC0899b {

        /* renamed from: a */
        final ActionProvider f946a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0275a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC0274j.this = r4;
            this.f946a = actionProvider;
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: a */
        public final View mo44207a() {
            return this.f946a.onCreateActionView();
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: a */
        public final void mo44205a(SubMenu subMenu) {
            this.f946a.onPrepareSubMenu(MenuItemC0274j.this.m46122a(subMenu));
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: b */
        public final boolean mo44202b() {
            return this.f946a.onPerformDefaultAction();
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: c */
        public final boolean mo44201c() {
            return this.f946a.hasSubMenu();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$b.class */
    final class ActionProvider$VisibilityListenerC0276b extends C0275a implements ActionProvider.VisibilityListener {

        /* renamed from: f */
        private AbstractC0899b.AbstractC0901b f949f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ActionProvider$VisibilityListenerC0276b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
            MenuItemC0274j.this = r6;
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: a */
        public final View mo44206a(MenuItem menuItem) {
            return this.f946a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: a */
        public final void mo44204a(AbstractC0899b.AbstractC0901b abstractC0901b) {
            this.f949f = abstractC0901b;
            this.f946a.setVisibilityListener(this);
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: d */
        public final boolean mo44200d() {
            return this.f946a.overridesItemVisibility();
        }

        @Override // androidx.core.view.AbstractC0899b
        /* renamed from: e */
        public final boolean mo44199e() {
            return this.f946a.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0899b.AbstractC0901b abstractC0901b = this.f949f;
            if (abstractC0901b != null) {
                abstractC0901b.mo44197a();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$c.class */
    static final class C0277c extends FrameLayout implements AbstractC0243c {

        /* renamed from: a */
        final CollapsibleActionView f950a;

        C0277c(View view) {
            super(view.getContext());
            this.f950a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.AbstractC0243c
        /* renamed from: a */
        public final void mo45903a() {
            this.f950a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.AbstractC0243c
        /* renamed from: b */
        public final void mo45895b() {
            this.f950a.onActionViewCollapsed();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
    final class MenuItem$OnActionExpandListenerC0278d implements MenuItem.OnActionExpandListener {

        /* renamed from: b */
        private final MenuItem.OnActionExpandListener f952b;

        MenuItem$OnActionExpandListenerC0278d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC0274j.this = r4;
            this.f952b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f952b.onMenuItemActionCollapse(MenuItemC0274j.this.m46123a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f952b.onMenuItemActionExpand(MenuItemC0274j.this.m46123a(menuItem));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
    final class MenuItem$OnMenuItemClickListenerC0279e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        private final MenuItem.OnMenuItemClickListener f954b;

        MenuItem$OnMenuItemClickListenerC0279e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC0274j.this = r4;
            this.f954b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return this.f954b.onMenuItemClick(MenuItemC0274j.this.m46123a(menuItem));
        }
    }

    public MenuItemC0274j(Context context, AbstractMenuItemC0713b abstractMenuItemC0713b) {
        super(context);
        if (abstractMenuItemC0713b != null) {
            this.f944b = abstractMenuItemC0713b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f944b.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f944b.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        AbstractC0899b mo44635a = this.f944b.mo44635a();
        if (mo44635a instanceof C0275a) {
            return ((C0275a) mo44635a).f946a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f944b.getActionView();
        View view = actionView;
        if (actionView instanceof C0277c) {
            view = (View) ((C0277c) actionView).f950a;
        }
        return view;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f944b.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f944b.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f944b.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f944b.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f944b.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f944b.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f944b.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f944b.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f944b.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f944b.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f944b.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f944b.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f944b.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return m46122a(this.f944b.getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f944b.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f944b.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f944b.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f944b.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f944b.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f944b.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f944b.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f944b.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f944b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider$VisibilityListenerC0276b actionProvider$VisibilityListenerC0276b = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0276b(this.f823a, actionProvider) : new C0275a(this.f823a, actionProvider);
        AbstractMenuItemC0713b abstractMenuItemC0713b = this.f944b;
        if (actionProvider == null) {
            actionProvider$VisibilityListenerC0276b = null;
        }
        abstractMenuItemC0713b.mo44634a(actionProvider$VisibilityListenerC0276b);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        this.f944b.setActionView(i);
        View actionView = this.f944b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f944b.setActionView(new C0277c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        C0277c c0277c = view;
        if (view instanceof CollapsibleActionView) {
            c0277c = new C0277c(view);
        }
        this.f944b.setActionView(c0277c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f944b.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f944b.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f944b.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f944b.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f944b.mo44633a(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f944b.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f944b.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f944b.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f944b.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f944b.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f944b.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f944b.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f944b.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f944b.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0278d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f944b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0279e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f944b.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f944b.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        this.f944b.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        this.f944b.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f944b.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f944b.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f944b.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f944b.mo44632b(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        return this.f944b.setVisible(z);
    }
}
