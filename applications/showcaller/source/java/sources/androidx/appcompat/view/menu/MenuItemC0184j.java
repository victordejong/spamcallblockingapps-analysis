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
import java.lang.reflect.Method;
import p020b.p021a.p028o.AbstractC1457c;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
import p020b.p041h.p050l.AbstractC1605b;
/* renamed from: androidx.appcompat.view.menu.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public class MenuItemC0184j extends AbstractC0168c implements MenuItem {

    /* renamed from: d */
    private final AbstractMenuItemC1540b f692d;

    /* renamed from: e */
    private Method f693e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$a.class */
    public class C0185a extends AbstractC1605b {

        /* renamed from: d */
        final ActionProvider f694d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0185a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC0184j.this = r4;
            this.f694d = actionProvider;
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: a */
        public boolean mo29631a() {
            return this.f694d.hasSubMenu();
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: c */
        public View mo29629c() {
            return this.f694d.onCreateActionView();
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: e */
        public boolean mo29627e() {
            return this.f694d.onPerformDefaultAction();
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: f */
        public void mo29626f(SubMenu subMenu) {
            this.f694d.onPrepareSubMenu(MenuItemC0184j.this.m35436d(subMenu));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$b.class */
    private class ActionProvider$VisibilityListenerC0186b extends C0185a implements ActionProvider.VisibilityListener {

        /* renamed from: f */
        private AbstractC1605b.AbstractC1607b f696f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ActionProvider$VisibilityListenerC0186b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
            MenuItemC0184j.this = r6;
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: b */
        public boolean mo29630b() {
            return this.f694d.isVisible();
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: d */
        public View mo29628d(MenuItem menuItem) {
            return this.f694d.onCreateActionView(menuItem);
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: g */
        public boolean mo29625g() {
            return this.f694d.overridesItemVisibility();
        }

        @Override // p020b.p041h.p050l.AbstractC1605b
        /* renamed from: j */
        public void mo29622j(AbstractC1605b.AbstractC1607b abstractC1607b) {
            this.f696f = abstractC1607b;
            this.f694d.setVisibilityListener(abstractC1607b != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC1605b.AbstractC1607b abstractC1607b = this.f696f;
            if (abstractC1607b != null) {
                abstractC1607b.onActionProviderVisibilityChanged(z);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$c.class */
    static class C0187c extends FrameLayout implements AbstractC1457c {

        /* renamed from: d */
        final CollapsibleActionView f698d;

        C0187c(View view) {
            super(view.getContext());
            this.f698d = (CollapsibleActionView) view;
            addView(view);
        }

        /* renamed from: a */
        View m35336a() {
            return (View) this.f698d;
        }

        @Override // p020b.p021a.p028o.AbstractC1457c
        /* renamed from: c */
        public void mo30043c() {
            this.f698d.onActionViewExpanded();
        }

        @Override // p020b.p021a.p028o.AbstractC1457c
        /* renamed from: f */
        public void mo30042f() {
            this.f698d.onActionViewCollapsed();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
    private class MenuItem$OnActionExpandListenerC0188d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        private final MenuItem.OnActionExpandListener f699a;

        MenuItem$OnActionExpandListenerC0188d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC0184j.this = r4;
            this.f699a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f699a.onMenuItemActionCollapse(MenuItemC0184j.this.m35437c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f699a.onMenuItemActionExpand(MenuItemC0184j.this.m35437c(menuItem));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
    private class MenuItem$OnMenuItemClickListenerC0189e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private final MenuItem.OnMenuItemClickListener f701a;

        MenuItem$OnMenuItemClickListenerC0189e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC0184j.this = r4;
            this.f701a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f701a.onMenuItemClick(MenuItemC0184j.this.m35437c(menuItem));
        }
    }

    public MenuItemC0184j(Context context, AbstractMenuItemC1540b abstractMenuItemC1540b) {
        super(context);
        if (abstractMenuItemC1540b != null) {
            this.f692d = abstractMenuItemC1540b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f692d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f692d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC1605b mo29771b = this.f692d.mo29771b();
        if (mo29771b instanceof C0185a) {
            return ((C0185a) mo29771b).f694d;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f692d.getActionView();
        View view = actionView;
        if (actionView instanceof C0187c) {
            view = ((C0187c) actionView).m35336a();
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f692d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f692d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f692d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f692d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f692d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f692d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f692d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f692d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f692d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f692d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f692d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f692d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f692d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m35436d(this.f692d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f692d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f692d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f692d.getTooltipText();
    }

    /* renamed from: h */
    public void m35337h(boolean z) {
        try {
            if (this.f693e == null) {
                this.f693e = this.f692d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f693e.invoke(this.f692d, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f692d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f692d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f692d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f692d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f692d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f692d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider$VisibilityListenerC0186b actionProvider$VisibilityListenerC0186b = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0186b(this.f571a, actionProvider) : new C0185a(this.f571a, actionProvider);
        AbstractMenuItemC1540b abstractMenuItemC1540b = this.f692d;
        if (actionProvider == null) {
            actionProvider$VisibilityListenerC0186b = null;
        }
        abstractMenuItemC1540b.mo29772a(actionProvider$VisibilityListenerC0186b);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f692d.setActionView(i);
        View actionView = this.f692d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f692d.setActionView(new C0187c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        C0187c c0187c = view;
        if (view instanceof CollapsibleActionView) {
            c0187c = new C0187c(view);
        }
        this.f692d.setActionView(c0187c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f692d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f692d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f692d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f692d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f692d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f692d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f692d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f692d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f692d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f692d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f692d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f692d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f692d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f692d.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0188d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f692d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0189e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f692d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f692d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f692d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f692d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f692d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f692d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f692d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f692d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f692d.setVisible(z);
    }
}
