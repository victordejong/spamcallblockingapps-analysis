package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import java.lang.reflect.Method;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS.class */
public class MenuItemWrapperICS extends BaseMenuWrapper implements MenuItem {

    /* renamed from: d */
    private final SupportMenuItem f693d;

    /* renamed from: e */
    private Method f694e;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper.class */
    private class ActionProviderWrapper extends ActionProvider {

        /* renamed from: c */
        final android.view.ActionProvider f695c;

        ActionProviderWrapper(Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.f695c = actionProvider;
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: a */
        public boolean mo19329a() {
            return this.f695c.hasSubMenu();
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: c */
        public View mo19327c() {
            return this.f695c.onCreateActionView();
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: e */
        public boolean mo19325e() {
            return this.f695c.onPerformDefaultAction();
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: f */
        public void mo19324f(SubMenu subMenu) {
            this.f695c.onPrepareSubMenu(MenuItemWrapperICS.this.m21922d(subMenu));
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB.class */
    private class ActionProviderWrapperJB extends ActionProviderWrapper implements ActionProvider.VisibilityListener {

        /* renamed from: e */
        private ActionProvider.VisibilityListener f697e;

        ActionProviderWrapperJB(MenuItemWrapperICS menuItemWrapperICS, Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: b */
        public boolean mo19328b() {
            return this.f695c.isVisible();
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: d */
        public View mo19326d(MenuItem menuItem) {
            return this.f695c.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: g */
        public boolean mo19323g() {
            return this.f695c.overridesItemVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        /* renamed from: j */
        public void mo19320j(ActionProvider.VisibilityListener visibilityListener) {
            this.f697e = visibilityListener;
            this.f695c.setVisibilityListener(visibilityListener != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            ActionProvider.VisibilityListener visibilityListener = this.f697e;
            if (visibilityListener != null) {
                visibilityListener.onActionProviderVisibilityChanged(z);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper.class */
    static class CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {

        /* renamed from: f */
        final android.view.CollapsibleActionView f698f;

        CollapsibleActionViewWrapper(View view) {
            super(view.getContext());
            this.f698f = (android.view.CollapsibleActionView) view;
            addView(view);
        }

        /* renamed from: a */
        View m21817a() {
            return (View) this.f698f;
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        /* renamed from: c */
        public void mo21330c() {
            this.f698f.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        /* renamed from: f */
        public void mo21326f() {
            this.f698f.onActionViewCollapsed();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper.class */
    private class OnActionExpandListenerWrapper implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        private final MenuItem.OnActionExpandListener f699a;

        OnActionExpandListenerWrapper(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f699a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f699a.onMenuItemActionCollapse(MenuItemWrapperICS.this.m21923c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f699a.onMenuItemActionExpand(MenuItemWrapperICS.this.m21923c(menuItem));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper.class */
    private class OnMenuItemClickListenerWrapper implements MenuItem.OnMenuItemClickListener {

        /* renamed from: f */
        private final MenuItem.OnMenuItemClickListener f701f;

        OnMenuItemClickListenerWrapper(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f701f = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f701f.onMenuItemClick(MenuItemWrapperICS.this.m21923c(menuItem));
        }
    }

    public MenuItemWrapperICS(Context context, SupportMenuItem supportMenuItem) {
        super(context);
        if (supportMenuItem != null) {
            this.f693d = supportMenuItem;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f693d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f693d.expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        androidx.core.view.ActionProvider b = this.f693d.mo19453b();
        if (b instanceof ActionProviderWrapper) {
            return ((ActionProviderWrapper) b).f695c;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f693d.getActionView();
        View view = actionView;
        if (actionView instanceof CollapsibleActionViewWrapper) {
            view = ((CollapsibleActionViewWrapper) actionView).m21817a();
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f693d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f693d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f693d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f693d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f693d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f693d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f693d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f693d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f693d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f693d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f693d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f693d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f693d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m21922d(this.f693d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f693d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f693d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f693d.getTooltipText();
    }

    /* renamed from: h */
    public void m21818h(boolean z) {
        try {
            if (this.f694e == null) {
                this.f694e = this.f693d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f694e.invoke(this.f693d, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f693d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f693d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f693d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f693d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f693d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f693d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        androidx.core.view.ActionProvider actionProviderWrapperJB = Build.VERSION.SDK_INT >= 16 ? new ActionProviderWrapperJB(this, this.f552a, actionProvider) : new ActionProviderWrapper(this.f552a, actionProvider);
        SupportMenuItem supportMenuItem = this.f693d;
        if (actionProvider == null) {
            actionProviderWrapperJB = null;
        }
        supportMenuItem.mo19454a(actionProviderWrapperJB);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f693d.setActionView(i);
        View actionView = this.f693d.getActionView();
        if (actionView instanceof android.view.CollapsibleActionView) {
            this.f693d.setActionView(new CollapsibleActionViewWrapper(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        View view2 = view;
        if (view instanceof android.view.CollapsibleActionView) {
            view2 = new CollapsibleActionViewWrapper(view);
        }
        this.f693d.setActionView(view2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f693d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f693d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f693d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f693d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f693d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f693d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f693d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f693d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f693d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f693d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f693d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f693d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f693d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f693d.setOnActionExpandListener(onActionExpandListener != null ? new OnActionExpandListenerWrapper(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f693d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new OnMenuItemClickListenerWrapper(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f693d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f693d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f693d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f693d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f693d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f693d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f693d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f693d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f693d.setVisible(z);
    }
}
