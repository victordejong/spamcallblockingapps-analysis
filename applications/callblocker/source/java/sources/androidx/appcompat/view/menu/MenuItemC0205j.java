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
import androidx.appcompat.view.AbstractC0174c;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
import androidx.core.p026h.AbstractC0573b;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.view.menu.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public class MenuItemC0205j extends AbstractC0189c implements MenuItem {

    /* renamed from: b */
    private final AbstractMenuItemC0484b f834b;

    /* renamed from: c */
    private Method f835c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$a.class */
    public class C0206a extends AbstractC0573b {

        /* renamed from: a */
        final ActionProvider f836a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0206a(Context context, ActionProvider actionProvider) {
            super(context);
            MenuItemC0205j.this = r4;
            this.f836a = actionProvider;
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: a */
        public View mo20434a() {
            return this.f836a.onCreateActionView();
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: a */
        public void mo20432a(SubMenu subMenu) {
            this.f836a.onPrepareSubMenu(MenuItemC0205j.this.m21917a(subMenu));
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: b */
        public boolean mo20428b() {
            return this.f836a.onPerformDefaultAction();
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: c */
        public boolean mo20427c() {
            return this.f836a.hasSubMenu();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$b.class */
    private class ActionProvider$VisibilityListenerC0207b extends C0206a implements ActionProvider.VisibilityListener {

        /* renamed from: d */
        private AbstractC0573b.AbstractC0575b f839d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ActionProvider$VisibilityListenerC0207b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
            MenuItemC0205j.this = r6;
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: a */
        public View mo20433a(MenuItem menuItem) {
            return this.f836a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: a */
        public void mo20430a(AbstractC0573b.AbstractC0575b abstractC0575b) {
            this.f839d = abstractC0575b;
            this.f836a.setVisibilityListener(abstractC0575b != null ? this : null);
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: d */
        public boolean mo20426d() {
            return this.f836a.overridesItemVisibility();
        }

        @Override // androidx.core.p026h.AbstractC0573b
        /* renamed from: e */
        public boolean mo20425e() {
            return this.f836a.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.f839d != null) {
                this.f839d.mo20422a(z);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$c.class */
    static class C0208c extends FrameLayout implements AbstractC0174c {

        /* renamed from: a */
        final CollapsibleActionView f840a;

        C0208c(View view) {
            super(view.getContext());
            this.f840a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.AbstractC0174c
        /* renamed from: a */
        public void mo21671a() {
            this.f840a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.AbstractC0174c
        /* renamed from: b */
        public void mo21657b() {
            this.f840a.onActionViewCollapsed();
        }

        /* renamed from: c */
        View m21818c() {
            return (View) this.f840a;
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
    private class MenuItem$OnActionExpandListenerC0209d implements MenuItem.OnActionExpandListener {

        /* renamed from: b */
        private final MenuItem.OnActionExpandListener f842b;

        MenuItem$OnActionExpandListenerC0209d(MenuItem.OnActionExpandListener onActionExpandListener) {
            MenuItemC0205j.this = r4;
            this.f842b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f842b.onMenuItemActionCollapse(MenuItemC0205j.this.m21918a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f842b.onMenuItemActionExpand(MenuItemC0205j.this.m21918a(menuItem));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
    private class MenuItem$OnMenuItemClickListenerC0210e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        private final MenuItem.OnMenuItemClickListener f844b;

        MenuItem$OnMenuItemClickListenerC0210e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            MenuItemC0205j.this = r4;
            this.f844b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f844b.onMenuItemClick(MenuItemC0205j.this.m21918a(menuItem));
        }
    }

    public MenuItemC0205j(Context context, AbstractMenuItemC0484b abstractMenuItemC0484b) {
        super(context);
        if (abstractMenuItemC0484b == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f834b = abstractMenuItemC0484b;
    }

    /* renamed from: a */
    public void m21819a(boolean z) {
        try {
            if (this.f835c == null) {
                this.f835c = this.f834b.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f835c.invoke(this.f834b, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f834b.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f834b.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC0573b mo20731a = this.f834b.mo20731a();
        return mo20731a instanceof C0206a ? ((C0206a) mo20731a).f836a : null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f834b.getActionView();
        View view = actionView;
        if (actionView instanceof C0208c) {
            view = ((C0208c) actionView).m21818c();
        }
        return view;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f834b.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f834b.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f834b.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f834b.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f834b.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f834b.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f834b.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f834b.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f834b.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f834b.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f834b.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f834b.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f834b.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m21917a(this.f834b.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f834b.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f834b.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f834b.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f834b.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f834b.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f834b.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f834b.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f834b.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f834b.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider$VisibilityListenerC0207b actionProvider$VisibilityListenerC0207b = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0207b(this.f713a, actionProvider) : new C0206a(this.f713a, actionProvider);
        AbstractMenuItemC0484b abstractMenuItemC0484b = this.f834b;
        if (actionProvider == null) {
            actionProvider$VisibilityListenerC0207b = null;
        }
        abstractMenuItemC0484b.mo20730a(actionProvider$VisibilityListenerC0207b);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f834b.setActionView(i);
        View actionView = this.f834b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f834b.setActionView(new C0208c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        C0208c c0208c = view;
        if (view instanceof CollapsibleActionView) {
            c0208c = new C0208c(view);
        }
        this.f834b.setActionView(c0208c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f834b.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f834b.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f834b.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f834b.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f834b.mo20729a(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f834b.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f834b.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f834b.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f834b.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f834b.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f834b.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f834b.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f834b.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f834b.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0209d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f834b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0210e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f834b.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f834b.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f834b.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f834b.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f834b.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f834b.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f834b.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f834b.mo20728b(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f834b.setVisible(z);
    }
}
