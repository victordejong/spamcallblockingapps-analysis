package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.AbstractC0157c;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
import androidx.core.p023g.AbstractC0530b;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.view.menu.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public class MenuItemC0188j extends AbstractC0172c implements MenuItem {

    /* renamed from: b */
    private final AbstractMenuItemC0461b f755b;

    /* renamed from: c */
    private Method f756c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$a.class */
    public class C0189a extends AbstractC0530b {

        /* renamed from: a */
        final ActionProvider f757a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0189a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC0188j.this = r4;
            this.f757a = actionProvider;
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: a */
        public View mo6357a() {
            return this.f757a.onCreateActionView();
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: a */
        public void mo6355a(SubMenu subMenu) {
            this.f757a.onPrepareSubMenu(MenuItemC0188j.this.m7586a(subMenu));
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: b */
        public boolean mo6351b() {
            return this.f757a.onPerformDefaultAction();
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: c */
        public boolean mo6350c() {
            return this.f757a.hasSubMenu();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$b.class */
    private class ActionProvider$VisibilityListenerC0190b extends C0189a implements ActionProvider.VisibilityListener {

        /* renamed from: d */
        private AbstractC0530b.AbstractC0532b f760d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ActionProvider$VisibilityListenerC0190b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
            MenuItemC0188j.this = r6;
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: a */
        public View mo6356a(MenuItem menuItem) {
            return this.f757a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: a */
        public void mo6353a(AbstractC0530b.AbstractC0532b abstractC0532b) {
            this.f760d = abstractC0532b;
            this.f757a.setVisibilityListener(abstractC0532b != null ? this : null);
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: d */
        public boolean mo6349d() {
            return this.f757a.overridesItemVisibility();
        }

        @Override // androidx.core.p023g.AbstractC0530b
        /* renamed from: e */
        public boolean mo6348e() {
            return this.f757a.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0530b.AbstractC0532b abstractC0532b = this.f760d;
            if (abstractC0532b != null) {
                abstractC0532b.mo6345a(z);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$c.class */
    static class C0191c extends FrameLayout implements AbstractC0157c {

        /* renamed from: a */
        final CollapsibleActionView f761a;

        C0191c(View view) {
            super(view.getContext());
            this.f761a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.AbstractC0157c
        /* renamed from: a */
        public void mo7389a() {
            this.f761a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.AbstractC0157c
        /* renamed from: b */
        public void mo7375b() {
            this.f761a.onActionViewCollapsed();
        }

        /* renamed from: c */
        View m7537c() {
            return (View) this.f761a;
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
    private class MenuItem$OnActionExpandListenerC0192d implements MenuItem.OnActionExpandListener {

        /* renamed from: b */
        private final MenuItem.OnActionExpandListener f763b;

        MenuItem$OnActionExpandListenerC0192d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC0188j.this = r4;
            this.f763b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f763b.onMenuItemActionCollapse(MenuItemC0188j.this.m7587a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f763b.onMenuItemActionExpand(MenuItemC0188j.this.m7587a(menuItem));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
    private class MenuItem$OnMenuItemClickListenerC0193e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        private final MenuItem.OnMenuItemClickListener f765b;

        MenuItem$OnMenuItemClickListenerC0193e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC0188j.this = r4;
            this.f765b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f765b.onMenuItemClick(MenuItemC0188j.this.m7587a(menuItem));
        }
    }

    public MenuItemC0188j(Context context, AbstractMenuItemC0461b abstractMenuItemC0461b) {
        super(context);
        if (abstractMenuItemC0461b != null) {
            this.f755b = abstractMenuItemC0461b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    /* renamed from: a */
    public void m7538a(boolean z) {
        try {
            if (this.f756c == null) {
                this.f756c = this.f755b.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f756c.invoke(this.f755b, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f755b.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f755b.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC0530b mo6550a = this.f755b.mo6550a();
        if (mo6550a instanceof C0189a) {
            return ((C0189a) mo6550a).f757a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f755b.getActionView();
        View view = actionView;
        if (actionView instanceof C0191c) {
            view = ((C0191c) actionView).m7537c();
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f755b.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f755b.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f755b.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f755b.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f755b.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f755b.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f755b.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f755b.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f755b.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f755b.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f755b.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f755b.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f755b.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m7586a(this.f755b.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f755b.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f755b.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f755b.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f755b.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f755b.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f755b.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f755b.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f755b.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f755b.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider$VisibilityListenerC0190b actionProvider$VisibilityListenerC0190b = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0190b(this.f661a, actionProvider) : new C0189a(this.f661a, actionProvider);
        AbstractMenuItemC0461b abstractMenuItemC0461b = this.f755b;
        if (actionProvider == null) {
            actionProvider$VisibilityListenerC0190b = null;
        }
        abstractMenuItemC0461b.mo6549a(actionProvider$VisibilityListenerC0190b);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f755b.setActionView(i);
        View actionView = this.f755b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f755b.setActionView(new C0191c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        C0191c c0191c = view;
        if (view instanceof CollapsibleActionView) {
            c0191c = new C0191c(view);
        }
        this.f755b.setActionView(c0191c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f755b.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f755b.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f755b.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f755b.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f755b.mo6548a(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f755b.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f755b.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f755b.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f755b.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f755b.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f755b.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f755b.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f755b.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f755b.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0192d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f755b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0193e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f755b.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f755b.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f755b.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f755b.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f755b.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f755b.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f755b.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f755b.mo6547b(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f755b.setVisible(z);
    }
}
