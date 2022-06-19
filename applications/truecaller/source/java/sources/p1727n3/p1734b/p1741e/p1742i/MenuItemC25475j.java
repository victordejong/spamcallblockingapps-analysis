package p1727n3.p1734b.p1741e.p1742i;

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
import java.lang.reflect.Method;
import p1727n3.p1734b.p1741e.AbstractC25452b;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1821i.AbstractC26561b;
/* renamed from: n3.b.e.i.j */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/j.class */
public class MenuItemC25475j extends AbstractC25464c implements MenuItem {

    /* renamed from: d */
    public final AbstractMenuItemC26506b f71274d;

    /* renamed from: e */
    public Method f71275e;

    /* renamed from: n3.b.e.i.j$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/j$a.class */
    public class C25476a extends AbstractC26561b {

        /* renamed from: b */
        public final ActionProvider f71276b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25476a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC25475j.this = r4;
            this.f71276b = actionProvider;
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26561b
        /* renamed from: a */
        public boolean mo1676a() {
            return this.f71276b.hasSubMenu();
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26561b
        /* renamed from: c */
        public View mo1674c() {
            return this.f71276b.onCreateActionView();
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26561b
        /* renamed from: e */
        public boolean mo1672e() {
            return this.f71276b.onPerformDefaultAction();
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26561b
        /* renamed from: f */
        public void mo1671f(SubMenu subMenu) {
            this.f71276b.onPrepareSubMenu(MenuItemC25475j.this.m3490d(subMenu));
        }
    }

    /* renamed from: n3.b.e.i.j$c */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/j$c.class */
    public static class C25477c extends FrameLayout implements AbstractC25452b {

        /* renamed from: a */
        public final CollapsibleActionView f71278a;

        public C25477c(View view) {
            super(view.getContext());
            this.f71278a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25452b
        /* renamed from: b */
        public void mo3444b() {
            this.f71278a.onActionViewCollapsed();
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25452b
        /* renamed from: c */
        public void mo3443c() {
            this.f71278a.onActionViewExpanded();
        }
    }

    /* renamed from: n3.b.e.i.j$d */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/j$d.class */
    public class MenuItem$OnActionExpandListenerC25478d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final MenuItem.OnActionExpandListener f71279a;

        public MenuItem$OnActionExpandListenerC25478d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC25475j.this = r4;
            this.f71279a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f71279a.onMenuItemActionCollapse(MenuItemC25475j.this.m3491c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f71279a.onMenuItemActionExpand(MenuItemC25475j.this.m3491c(menuItem));
        }
    }

    /* renamed from: n3.b.e.i.j$e */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/j$e.class */
    public class MenuItem$OnMenuItemClickListenerC25479e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        public final MenuItem.OnMenuItemClickListener f71281a;

        public MenuItem$OnMenuItemClickListenerC25479e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC25475j.this = r4;
            this.f71281a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f71281a.onMenuItemClick(MenuItemC25475j.this.m3491c(menuItem));
        }
    }

    public MenuItemC25475j(Context context, AbstractMenuItemC26506b abstractMenuItemC26506b) {
        super(context);
        if (abstractMenuItemC26506b != null) {
            this.f71274d = abstractMenuItemC26506b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f71274d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f71274d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC26561b mo1724a = this.f71274d.mo1724a();
        if (mo1724a instanceof C25476a) {
            return ((C25476a) mo1724a).f71276b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f71274d.getActionView();
        View view = actionView;
        if (actionView instanceof C25477c) {
            view = (View) ((C25477c) actionView).f71278a;
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f71274d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f71274d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f71274d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f71274d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f71274d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f71274d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f71274d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f71274d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f71274d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f71274d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f71274d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f71274d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f71274d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m3490d(this.f71274d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f71274d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f71274d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f71274d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f71274d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f71274d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f71274d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f71274d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f71274d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f71274d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        this.f71274d.mo1723b(actionProvider != null ? new b(this, this.f71187a, actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f71274d.setActionView(i);
        View actionView = this.f71274d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f71274d.setActionView(new C25477c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        C25477c c25477c = view;
        if (view instanceof CollapsibleActionView) {
            c25477c = new C25477c(view);
        }
        this.f71274d.setActionView(c25477c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f71274d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f71274d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f71274d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f71274d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f71274d.mo50026setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f71274d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f71274d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f71274d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f71274d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f71274d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f71274d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f71274d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f71274d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f71274d.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC25478d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f71274d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC25479e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f71274d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f71274d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f71274d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f71274d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f71274d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f71274d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f71274d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f71274d.mo50027setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f71274d.setVisible(z);
    }
}
