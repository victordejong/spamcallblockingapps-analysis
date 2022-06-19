package p151l;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import java.lang.reflect.Method;
import p109h0.AbstractMenuItemC2991b;
import p140k.AbstractC3297b;
import p163m0.AbstractC3549b;
/* renamed from: l.c */
/* loaded from: classes-dex2jar.jar:l/c.class */
public class MenuItemC3416c extends AbstractC3415b implements MenuItem {

    /* renamed from: d */
    public final AbstractMenuItemC2991b f11472d;

    /* renamed from: e */
    public Method f11473e;

    /* renamed from: l.c$a */
    /* loaded from: classes-dex2jar.jar:l/c$a.class */
    public class C3417a extends AbstractC3549b {

        /* renamed from: b */
        public final ActionProvider f11474b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3417a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC3416c.this = r4;
            this.f11474b = actionProvider;
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: a */
        public boolean mo2190a() {
            return this.f11474b.hasSubMenu();
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: c */
        public View mo2188c() {
            return this.f11474b.onCreateActionView();
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: e */
        public boolean mo2186e() {
            return this.f11474b.onPerformDefaultAction();
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: f */
        public void mo2185f(SubMenu subMenu) {
            this.f11474b.onPrepareSubMenu(MenuItemC3416c.this.m2319f(subMenu));
        }
    }

    /* renamed from: l.c$b */
    /* loaded from: classes-dex2jar.jar:l/c$b.class */
    public class ActionProvider$VisibilityListenerC3418b extends C3417a implements ActionProvider.VisibilityListener {

        /* renamed from: d */
        public AbstractC3549b.AbstractC3550a f11476d;

        public ActionProvider$VisibilityListenerC3418b(MenuItemC3416c menuItemC3416c, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: b */
        public boolean mo2189b() {
            return this.f11474b.isVisible();
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: d */
        public View mo2187d(MenuItem menuItem) {
            return this.f11474b.onCreateActionView(menuItem);
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: g */
        public boolean mo2184g() {
            return this.f11474b.overridesItemVisibility();
        }

        @Override // p163m0.AbstractC3549b
        /* renamed from: h */
        public void mo2183h(AbstractC3549b.AbstractC3550a abstractC3550a) {
            this.f11476d = abstractC3550a;
            this.f11474b.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC3549b.AbstractC3550a abstractC3550a = this.f11476d;
            if (abstractC3550a != null) {
                C0136e c0136e = C0140g.this.f471n;
                c0136e.f434h = true;
                c0136e.mo696p(true);
            }
        }
    }

    /* renamed from: l.c$c */
    /* loaded from: classes-dex2jar.jar:l/c$c.class */
    public static class C3419c extends FrameLayout implements AbstractC3297b {

        /* renamed from: a */
        public final CollapsibleActionView f11477a;

        public C3419c(View view) {
            super(view.getContext());
            this.f11477a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // p140k.AbstractC3297b
        /* renamed from: c */
        public void mo2317c() {
            this.f11477a.onActionViewExpanded();
        }

        @Override // p140k.AbstractC3297b
        /* renamed from: e */
        public void mo2316e() {
            this.f11477a.onActionViewCollapsed();
        }
    }

    /* renamed from: l.c$d */
    /* loaded from: classes-dex2jar.jar:l/c$d.class */
    public class MenuItem$OnActionExpandListenerC3420d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final MenuItem.OnActionExpandListener f11478a;

        public MenuItem$OnActionExpandListenerC3420d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC3416c.this = r4;
            this.f11478a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f11478a.onMenuItemActionCollapse(MenuItemC3416c.this.m2320e(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f11478a.onMenuItemActionExpand(MenuItemC3416c.this.m2320e(menuItem));
        }
    }

    /* renamed from: l.c$e */
    /* loaded from: classes-dex2jar.jar:l/c$e.class */
    public class MenuItem$OnMenuItemClickListenerC3421e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        public final MenuItem.OnMenuItemClickListener f11480a;

        public MenuItem$OnMenuItemClickListenerC3421e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC3416c.this = r4;
            this.f11480a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f11480a.onMenuItemClick(MenuItemC3416c.this.m2320e(menuItem));
        }
    }

    public MenuItemC3416c(Context context, AbstractMenuItemC2991b abstractMenuItemC2991b) {
        super(context);
        if (abstractMenuItemC2991b != null) {
            this.f11472d = abstractMenuItemC2991b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f11472d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f11472d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC3549b mo2324a = this.f11472d.mo2324a();
        if (mo2324a instanceof C3417a) {
            return ((C3417a) mo2324a).f11474b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f11472d.getActionView();
        View view = actionView;
        if (actionView instanceof C3419c) {
            view = (View) ((C3419c) actionView).f11477a;
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f11472d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f11472d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f11472d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f11472d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f11472d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f11472d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f11472d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f11472d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f11472d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f11472d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f11472d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f11472d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f11472d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m2319f(this.f11472d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f11472d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f11472d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f11472d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f11472d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f11472d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f11472d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f11472d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f11472d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f11472d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        this.f11472d.mo2323b(actionProvider != null ? new ActionProvider$VisibilityListenerC3418b(this, (Context) this.f11469a, actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f11472d.setActionView(i);
        View actionView = this.f11472d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f11472d.setActionView(new C3419c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        C3419c c3419c = view;
        if (view instanceof CollapsibleActionView) {
            c3419c = new C3419c(view);
        }
        this.f11472d.setActionView(c3419c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f11472d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f11472d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f11472d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f11472d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f11472d.mo10809setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f11472d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f11472d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f11472d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f11472d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f11472d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f11472d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f11472d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f11472d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f11472d.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC3420d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f11472d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC3421e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f11472d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f11472d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f11472d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f11472d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f11472d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f11472d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f11472d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f11472d.mo10810setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f11472d.setVisible(z);
    }
}
