package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {

    /* renamed from: A */
    private int f814A;

    /* renamed from: C */
    OverflowPopup f816C;

    /* renamed from: D */
    ActionButtonSubmenu f817D;

    /* renamed from: E */
    OpenOverflowRunnable f818E;

    /* renamed from: F */
    private ActionMenuPopupCallback f819F;

    /* renamed from: H */
    int f821H;

    /* renamed from: o */
    OverflowMenuButton f822o;

    /* renamed from: p */
    private Drawable f823p;

    /* renamed from: q */
    private boolean f824q;

    /* renamed from: r */
    private boolean f825r;

    /* renamed from: s */
    private boolean f826s;

    /* renamed from: t */
    private int f827t;

    /* renamed from: u */
    private int f828u;

    /* renamed from: v */
    private int f829v;

    /* renamed from: w */
    private boolean f830w;

    /* renamed from: x */
    private boolean f831x;

    /* renamed from: y */
    private boolean f832y;

    /* renamed from: z */
    private boolean f833z;

    /* renamed from: B */
    private final SparseBooleanArray f815B = new SparseBooleanArray();

    /* renamed from: G */
    final PopupPresenterCallback f820G = new PopupPresenterCallback();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu.class */
    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, C0042R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).m21833l()) {
                OverflowMenuButton overflowMenuButton = ActionMenuPresenter.this.f822o;
                m21806f(overflowMenuButton == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).f550m : overflowMenuButton);
            }
            m21802j(ActionMenuPresenter.this.f820G);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        /* renamed from: e */
        public void mo21718e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f817D = null;
            actionMenuPresenter.f821H = 0;
            super.mo21718e();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback.class */
    private class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        /* renamed from: a */
        public ShowableListMenu mo21719a() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.f817D;
            return actionButtonSubmenu != null ? actionButtonSubmenu.m21808c() : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable.class */
    public class OpenOverflowRunnable implements Runnable {

        /* renamed from: f */
        private OverflowPopup f836f;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.f836f = overflowPopup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).f545h != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).f545h.m21870d();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).f550m;
            if (!(view == null || view.getWindowToken() == null || !this.f836f.m21799m())) {
                ActionMenuPresenter.this.f816C = this.f836f;
            }
            ActionMenuPresenter.this.f818E = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton.class */
    public class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, C0042R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.m21170a(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this, ActionMenuPresenter.this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                /* renamed from: b */
                public ShowableListMenu mo21411b() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.f816C;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.m21808c();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                /* renamed from: c */
                public boolean mo21410c() {
                    ActionMenuPresenter.this.m21731N();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                /* renamed from: d */
                public boolean mo21409d() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.f818E != null) {
                        return false;
                    }
                    actionMenuPresenter.m21740E();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        /* renamed from: a */
        public boolean mo21700a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        /* renamed from: b */
        public boolean mo21699b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m21731N();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.m19501l(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$OverflowPopup.class */
    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, C0042R.attr.actionOverflowMenuStyle);
            m21804h(8388613);
            m21802j(ActionMenuPresenter.this.f820G);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        /* renamed from: e */
        public void mo21718e() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).f545h != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).f545h.close();
            }
            ActionMenuPresenter.this.f816C = null;
            super.mo21718e();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback.class */
    private class PopupPresenterCallback implements MenuPresenter.Callback {
        PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: c */
        public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.mo21788F().m21868e(false);
            }
            MenuPresenter.Callback p = ActionMenuPresenter.this.m21925p();
            if (p != null) {
                p.mo21698c(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: d */
        public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
            boolean z = false;
            if (menuBuilder == ((BaseMenuPresenter) ActionMenuPresenter.this).f545h) {
                return false;
            }
            ActionMenuPresenter.this.f821H = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback p = ActionMenuPresenter.this.m21925p();
            if (p != null) {
                z = p.mo21697d(menuBuilder);
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        public int f842f;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f842f = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f842f);
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0042R.layout.abc_action_menu_layout, C0042R.layout.abc_action_menu_item_layout);
    }

    /* renamed from: C */
    private View m21742C(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f550m;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: B */
    public boolean m21743B() {
        return m21740E() | m21739F();
    }

    /* renamed from: D */
    public Drawable m21741D() {
        OverflowMenuButton overflowMenuButton = this.f822o;
        if (overflowMenuButton != null) {
            return overflowMenuButton.getDrawable();
        }
        if (this.f824q) {
            return this.f823p;
        }
        return null;
    }

    /* renamed from: E */
    public boolean m21740E() {
        MenuView menuView;
        OpenOverflowRunnable openOverflowRunnable = this.f818E;
        if (openOverflowRunnable == null || (menuView = this.f550m) == null) {
            OverflowPopup overflowPopup = this.f816C;
            if (overflowPopup == null) {
                return false;
            }
            overflowPopup.m21809b();
            return true;
        }
        ((View) menuView).removeCallbacks(openOverflowRunnable);
        this.f818E = null;
        return true;
    }

    /* renamed from: F */
    public boolean m21739F() {
        ActionButtonSubmenu actionButtonSubmenu = this.f817D;
        if (actionButtonSubmenu == null) {
            return false;
        }
        actionButtonSubmenu.m21809b();
        return true;
    }

    /* renamed from: G */
    public boolean m21738G() {
        return this.f818E != null || m21737H();
    }

    /* renamed from: H */
    public boolean m21737H() {
        OverflowPopup overflowPopup = this.f816C;
        return overflowPopup != null && overflowPopup.m21807d();
    }

    /* renamed from: I */
    public void m21736I(Configuration configuration) {
        if (!this.f830w) {
            this.f829v = ActionBarPolicy.m21991b(this.f544g).m21989d();
        }
        MenuBuilder menuBuilder = this.f545h;
        if (menuBuilder != null) {
            menuBuilder.mo9484M(true);
        }
    }

    /* renamed from: J */
    public void m21735J(boolean z) {
        this.f833z = z;
    }

    /* renamed from: K */
    public void m21734K(ActionMenuView actionMenuView) {
        this.f550m = actionMenuView;
        actionMenuView.mo9485b(this.f545h);
    }

    /* renamed from: L */
    public void m21733L(Drawable drawable) {
        OverflowMenuButton overflowMenuButton = this.f822o;
        if (overflowMenuButton != null) {
            overflowMenuButton.setImageDrawable(drawable);
            return;
        }
        this.f824q = true;
        this.f823p = drawable;
    }

    /* renamed from: M */
    public void m21732M(boolean z) {
        this.f825r = z;
        this.f826s = true;
    }

    /* renamed from: N */
    public boolean m21731N() {
        MenuBuilder menuBuilder;
        if (!this.f825r || m21737H() || (menuBuilder = this.f545h) == null || this.f550m == null || this.f818E != null || menuBuilder.m21894B().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.f544g, this.f545h, this.f822o, true));
        this.f818E = openOverflowRunnable;
        ((View) this.f550m).post(openOverflowRunnable);
        return true;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    /* renamed from: a */
    public void mo19318a(boolean z) {
        if (z) {
            super.mo9515l(null);
            return;
        }
        MenuBuilder menuBuilder = this.f545h;
        if (menuBuilder != null) {
            menuBuilder.m21868e(false);
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        m21743B();
        super.mo9524c(menuBuilder, z);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        super.mo9523d(z);
        ((View) this.f550m).requestLayout();
        MenuBuilder menuBuilder = this.f545h;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> u = menuBuilder.m21851u();
            int size = u.size();
            for (int i = 0; i < size; i++) {
                ActionProvider b = u.get(i).mo19453b();
                if (b != null) {
                    b.m19321i(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.f545h;
        ArrayList<MenuItemImpl> B = menuBuilder2 != null ? menuBuilder2.m21894B() : null;
        boolean z2 = false;
        if (this.f825r) {
            z2 = false;
            if (B != null) {
                int size2 = B.size();
                if (size2 == 1) {
                    z2 = !B.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.f822o == null) {
                this.f822o = new OverflowMenuButton(this.f543f);
            }
            ViewGroup viewGroup = (ViewGroup) this.f822o.getParent();
            if (viewGroup != this.f550m) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f822o);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f550m;
                actionMenuView.addView(this.f822o, actionMenuView.m21711F());
            }
        } else {
            OverflowMenuButton overflowMenuButton = this.f822o;
            if (overflowMenuButton != null) {
                ViewParent parent = overflowMenuButton.getParent();
                MenuView menuView = this.f550m;
                if (parent == menuView) {
                    ((ViewGroup) menuView).removeView(this.f822o);
                }
            }
        }
        ((ActionMenuView) this.f550m).setOverflowReserved(this.f825r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
        if ((r18 + r17) > r11) goto L_0x00b6;
     */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9522e() {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo9522e():boolean");
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.mo9518i(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy b = ActionBarPolicy.m21991b(context);
        if (!this.f826s) {
            this.f825r = b.m21985h();
        }
        if (!this.f832y) {
            this.f827t = b.m21990c();
        }
        if (!this.f830w) {
            this.f829v = b.m21989d();
        }
        int i = this.f827t;
        if (this.f825r) {
            if (this.f822o == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.f543f);
                this.f822o = overflowMenuButton;
                if (this.f824q) {
                    overflowMenuButton.setImageDrawable(this.f823p);
                    this.f823p = null;
                    this.f824q = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f822o.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f822o.getMeasuredWidth();
        } else {
            this.f822o = null;
        }
        this.f828u = i;
        this.f814A = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).f842f) > 0 && (findItem = this.f545h.findItem(i)) != null) {
            mo9515l((SubMenuBuilder) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    /* renamed from: k */
    public void mo21730k(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.mo9538e(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f550m);
        if (this.f819F == null) {
            this.f819F = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.f819F);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        boolean z = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.m21781i0() != this.f545h) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.m21781i0();
        }
        View C = m21742C(subMenuBuilder2.getItem());
        if (C == null) {
            return false;
        }
        this.f821H = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = subMenuBuilder.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.f544g, subMenuBuilder, C);
        this.f817D = actionButtonSubmenu;
        actionButtonSubmenu.m21805g(z);
        this.f817D.m21801k();
        super.mo9515l(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: m */
    public Parcelable mo9514m() {
        SavedState savedState = new SavedState();
        savedState.f842f = this.f821H;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    /* renamed from: o */
    public boolean mo21729o(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f822o) {
            return false;
        }
        return super.mo21729o(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    /* renamed from: q */
    public View mo21728q(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.m21835j()) {
            actionView = super.mo21728q(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.mo21469o(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    /* renamed from: r */
    public MenuView mo21727r(ViewGroup viewGroup) {
        MenuView menuView = this.f550m;
        MenuView r = super.mo21727r(viewGroup);
        if (menuView != r) {
            ((ActionMenuView) r).setPresenter(this);
        }
        return r;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    /* renamed from: t */
    public boolean mo21726t(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.m21833l();
    }
}
