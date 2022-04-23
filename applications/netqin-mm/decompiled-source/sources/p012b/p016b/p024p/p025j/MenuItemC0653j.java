package p012b.p016b.p024p.p025j;

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
import java.lang.reflect.Method;
import p012b.p016b.p024p.AbstractC0624c;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
import p012b.p042i.p054p.AbstractC0952b;
/* renamed from: b.b.p.j.j */
/* loaded from: classes-dex2jar.jar:b/b/p/j/j.class */
public class MenuItemC0653j extends AbstractC0637c implements MenuItem {

    /* renamed from: d */
    public final AbstractMenuItemC0914b f3291d;

    /* renamed from: e */
    public Method f3292e;

    /* renamed from: b.b.p.j.j$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/j$a.class */
    public class C0654a extends AbstractC0952b {

        /* renamed from: c */
        public final ActionProvider f3293c;

        public C0654a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f3293c = actionProvider;
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: a */
        public void mo35430a(SubMenu subMenu) {
            this.f3293c.onPrepareSubMenu(MenuItemC0653j.this.m36641a(subMenu));
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: a */
        public boolean mo35432a() {
            return this.f3293c.hasSubMenu();
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: c */
        public View mo35425c() {
            return this.f3293c.onCreateActionView();
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: d */
        public boolean mo35424d() {
            return this.f3293c.onPerformDefaultAction();
        }
    }

    /* renamed from: b.b.p.j.j$b */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/j$b.class */
    public class ActionProvider$VisibilityListenerC0655b extends C0654a implements ActionProvider.VisibilityListener {

        /* renamed from: e */
        public AbstractC0952b.AbstractC0954b f3295e;

        public ActionProvider$VisibilityListenerC0655b(MenuItemC0653j jVar, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: a */
        public View mo35431a(MenuItem menuItem) {
            return this.f3293c.onCreateActionView(menuItem);
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: a */
        public void mo35428a(AbstractC0952b.AbstractC0954b bVar) {
            this.f3295e = bVar;
            this.f3293c.setVisibilityListener(bVar != null ? this : null);
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: b */
        public boolean mo35426b() {
            return this.f3293c.isVisible();
        }

        @Override // p012b.p042i.p054p.AbstractC0952b
        /* renamed from: e */
        public boolean mo35423e() {
            return this.f3293c.overridesItemVisibility();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0952b.AbstractC0954b bVar = this.f3295e;
            if (bVar != null) {
                bVar.onActionProviderVisibilityChanged(z);
            }
        }
    }

    /* renamed from: b.b.p.j.j$c */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/j$c.class */
    public static class C0656c extends FrameLayout implements AbstractC0624c {

        /* renamed from: a */
        public final CollapsibleActionView f3296a;

        public C0656c(View view) {
            super(view.getContext());
            this.f3296a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // p012b.p016b.p024p.AbstractC0624c
        /* renamed from: a */
        public void mo36548a() {
            this.f3296a.onActionViewExpanded();
        }

        @Override // p012b.p016b.p024p.AbstractC0624c
        /* renamed from: b */
        public void mo36547b() {
            this.f3296a.onActionViewCollapsed();
        }

        /* renamed from: c */
        public View m36546c() {
            return (View) this.f3296a;
        }
    }

    /* renamed from: b.b.p.j.j$d */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/j$d.class */
    public class MenuItem$OnActionExpandListenerC0657d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final MenuItem.OnActionExpandListener f3297a;

        public MenuItem$OnActionExpandListenerC0657d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f3297a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f3297a.onMenuItemActionCollapse(MenuItemC0653j.this.m36642a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f3297a.onMenuItemActionExpand(MenuItemC0653j.this.m36642a(menuItem));
        }
    }

    /* renamed from: b.b.p.j.j$e */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/j$e.class */
    public class MenuItem$OnMenuItemClickListenerC0658e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        public final MenuItem.OnMenuItemClickListener f3299a;

        public MenuItem$OnMenuItemClickListenerC0658e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f3299a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f3299a.onMenuItemClick(MenuItemC0653j.this.m36642a(menuItem));
        }
    }

    public MenuItemC0653j(Context context, AbstractMenuItemC0914b bVar) {
        super(context);
        if (bVar != null) {
            this.f3291d = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    /* renamed from: a */
    public void m36549a(boolean z) {
        try {
            if (this.f3292e == null) {
                this.f3292e = this.f3291d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f3292e.invoke(this.f3291d, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f3291d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f3291d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC0952b a = this.f3291d.mo35505a();
        if (a instanceof C0654a) {
            return ((C0654a) a).f3293c;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f3291d.getActionView();
        View view = actionView;
        if (actionView instanceof C0656c) {
            view = ((C0656c) actionView).m36546c();
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f3291d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f3291d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f3291d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f3291d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f3291d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f3291d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f3291d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f3291d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f3291d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f3291d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f3291d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f3291d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f3291d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m36641a(this.f3291d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f3291d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f3291d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f3291d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f3291d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f3291d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f3291d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f3291d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f3291d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f3291d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        AbstractC0952b bVar = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0655b(this, this.f3171a, actionProvider) : new C0654a(this.f3171a, actionProvider);
        AbstractMenuItemC0914b bVar2 = this.f3291d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.mo35504a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f3291d.setActionView(i);
        View actionView = this.f3291d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f3291d.setActionView(new C0656c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        View view2 = view;
        if (view instanceof CollapsibleActionView) {
            view2 = new C0656c(view);
        }
        this.f3291d.setActionView(view2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f3291d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f3291d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f3291d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f3291d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f3291d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f3291d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f3291d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f3291d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3291d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3291d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f3291d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f3291d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f3291d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f3291d.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0657d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f3291d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0658e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f3291d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f3291d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f3291d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f3291d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f3291d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f3291d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f3291d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f3291d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f3291d.setVisible(z);
    }
}
