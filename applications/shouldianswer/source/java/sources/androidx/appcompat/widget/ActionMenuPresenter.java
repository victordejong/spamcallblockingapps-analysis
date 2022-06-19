package androidx.appcompat.widget;

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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.C0154a;
import androidx.appcompat.view.menu.AbstractC0171b;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.AbstractC0202p;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.C0195l;
import androidx.appcompat.view.menu.SubMenuC0206r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p023g.AbstractC0530b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public class ActionMenuPresenter extends AbstractC0171b implements AbstractC0530b.AbstractC0531a {

    /* renamed from: g */
    C0218d f859g;

    /* renamed from: h */
    C0220e f860h;

    /* renamed from: i */
    C0215a f861i;

    /* renamed from: j */
    RunnableC0217c f862j;

    /* renamed from: l */
    int f864l;

    /* renamed from: m */
    private Drawable f865m;

    /* renamed from: n */
    private boolean f866n;

    /* renamed from: o */
    private boolean f867o;

    /* renamed from: p */
    private boolean f868p;

    /* renamed from: q */
    private int f869q;

    /* renamed from: r */
    private int f870r;

    /* renamed from: s */
    private int f871s;

    /* renamed from: t */
    private boolean f872t;

    /* renamed from: u */
    private boolean f873u;

    /* renamed from: v */
    private boolean f874v;

    /* renamed from: w */
    private boolean f875w;

    /* renamed from: x */
    private int f876x;

    /* renamed from: z */
    private C0216b f878z;

    /* renamed from: y */
    private final SparseBooleanArray f877y = new SparseBooleanArray();

    /* renamed from: k */
    final C0221f f863k = new C0221f();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        public int f879a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f879a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f879a);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public class C0215a extends C0195l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0215a(Context context, SubMenuC0206r subMenuC0206r, View view) {
            super(context, subMenuC0206r, view, false, C0051a.C0052a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            if (!((C0186i) subMenuC0206r.getItem()).m7543j()) {
                m7526a(r8.f859g == null ? (View) r8.f656f : r8.f859g);
            }
            m7524a(r8.f863k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0195l
        /* renamed from: e */
        public void mo7455e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f861i = null;
            actionMenuPresenter.f864l = 0;
            super.mo7455e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    private class C0216b extends ActionMenuItemView.AbstractC0169b {
        C0216b() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0169b
        /* renamed from: a */
        public AbstractC0202p mo7456a() {
            return ActionMenuPresenter.this.f861i != null ? ActionMenuPresenter.this.f861i.m7522b() : null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public class RunnableC0217c implements Runnable {

        /* renamed from: b */
        private C0220e f883b;

        public RunnableC0217c(C0220e c0220e) {
            ActionMenuPresenter.this = r4;
            this.f883b = c0220e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ActionMenuPresenter.this.f653c != null) {
                ActionMenuPresenter.this.f653c.changeMenuMode();
            }
            View view = (View) ActionMenuPresenter.this.f656f;
            if (view != null && view.getWindowToken() != null && this.f883b.m7521c()) {
                ActionMenuPresenter.this.f860h = this.f883b;
            }
            ActionMenuPresenter.this.f862j = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public class C0218d extends C0340m implements ActionMenuView.AbstractC0222a {

        /* renamed from: b */
        private final float[] f885b = new float[2];

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0218d(Context context) {
            super(context, null, C0051a.C0052a.actionOverflowButtonStyle);
            ActionMenuPresenter.this = r8;
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0315au.m7132a(this, getContentDescription());
            setOnTouchListener(new AbstractView$OnAttachStateChangeListenerC0274ad(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.d.1
                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad
                /* renamed from: a */
                public AbstractC0202p mo7288a() {
                    if (ActionMenuPresenter.this.f860h == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.f860h.m7522b();
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad
                /* renamed from: b */
                public boolean mo7284b() {
                    ActionMenuPresenter.this.m7468c();
                    return true;
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad
                /* renamed from: c */
                public boolean mo7281c() {
                    if (ActionMenuPresenter.this.f862j != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.m7466d();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0222a
        /* renamed from: b */
        public boolean mo7438b() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0222a
        /* renamed from: c */
        public boolean mo7437c() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m7468c();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C0575a.m6134a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public class C0220e extends C0195l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0220e(Context context, C0182g c0182g, View view, boolean z) {
            super(context, c0182g, view, z, C0051a.C0052a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            m7529a(8388613);
            m7524a(r8.f863k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0195l
        /* renamed from: e */
        public void mo7455e() {
            if (ActionMenuPresenter.this.f653c != null) {
                ActionMenuPresenter.this.f653c.close();
            }
            ActionMenuPresenter.this.f860h = null;
            super.mo7455e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    public class C0221f implements AbstractC0197m.AbstractC0198a {
        C0221f() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public void mo7435a(C0182g c0182g, boolean z) {
            if (c0182g instanceof SubMenuC0206r) {
                c0182g.getRootMenu().close(false);
            }
            AbstractC0197m.AbstractC0198a a = ActionMenuPresenter.this.m7593a();
            if (a != null) {
                a.mo7435a(c0182g, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public boolean mo7436a(C0182g c0182g) {
            boolean z = false;
            if (c0182g == null) {
                return false;
            }
            ActionMenuPresenter.this.f864l = ((SubMenuC0206r) c0182g).getItem().getItemId();
            AbstractC0197m.AbstractC0198a a = ActionMenuPresenter.this.m7593a();
            if (a != null) {
                z = a.mo7436a(c0182g);
            }
            return z;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0051a.C0058g.abc_action_menu_layout, C0051a.C0058g.abc_action_menu_item_layout);
    }

    /* renamed from: a */
    private View m7479a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f656f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof AbstractC0199n.AbstractC0200a) && ((AbstractC0199n.AbstractC0200a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b
    /* renamed from: a */
    public View mo7476a(C0186i c0186i, View view, ViewGroup viewGroup) {
        View actionView = c0186i.getActionView();
        if (actionView == null || c0186i.m7539n()) {
            actionView = super.mo7476a(c0186i, view, viewGroup);
        }
        actionView.setVisibility(c0186i.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b
    /* renamed from: a */
    public AbstractC0199n mo7478a(ViewGroup viewGroup) {
        AbstractC0199n abstractC0199n = this.f656f;
        AbstractC0199n mo7478a = super.mo7478a(viewGroup);
        if (abstractC0199n != mo7478a) {
            ((ActionMenuView) mo7478a).setPresenter(this);
        }
        return mo7478a;
    }

    /* renamed from: a */
    public void m7481a(Configuration configuration) {
        if (!this.f872t) {
            this.f871s = C0154a.m7662a(this.f652b).m7663a();
        }
        if (this.f653c != null) {
            this.f653c.onItemsChanged(true);
        }
    }

    /* renamed from: a */
    public void m7480a(Drawable drawable) {
        C0218d c0218d = this.f859g;
        if (c0218d != null) {
            c0218d.setImageDrawable(drawable);
            return;
        }
        this.f866n = true;
        this.f865m = drawable;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b
    /* renamed from: a */
    public void mo7475a(C0186i c0186i, AbstractC0199n.AbstractC0200a abstractC0200a) {
        abstractC0200a.initialize(c0186i, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) abstractC0200a;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f656f);
        if (this.f878z == null) {
            this.f878z = new C0216b();
        }
        actionMenuItemView.setPopupCallback(this.f878z);
    }

    /* renamed from: a */
    public void m7473a(ActionMenuView actionMenuView) {
        this.f656f = actionMenuView;
        actionMenuView.initialize(this.f653c);
    }

    /* renamed from: a */
    public void m7472a(boolean z) {
        this.f867o = z;
        this.f868p = true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b
    /* renamed from: a */
    public boolean mo7482a(int i, C0186i c0186i) {
        return c0186i.m7543j();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b
    /* renamed from: a */
    public boolean mo7477a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f859g) {
            return false;
        }
        return super.mo7477a(viewGroup, i);
    }

    /* renamed from: b */
    public Drawable m7471b() {
        C0218d c0218d = this.f859g;
        if (c0218d != null) {
            return c0218d.getDrawable();
        }
        if (!this.f866n) {
            return null;
        }
        return this.f865m;
    }

    /* renamed from: b */
    public void m7469b(boolean z) {
        this.f875w = z;
    }

    @Override // androidx.core.p023g.AbstractC0530b.AbstractC0531a
    /* renamed from: c */
    public void mo6346c(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
        } else if (this.f653c == null) {
        } else {
            this.f653c.close(false);
        }
    }

    /* renamed from: c */
    public boolean m7468c() {
        if (!this.f867o || m7460g() || this.f653c == null || this.f656f == null || this.f862j != null || this.f653c.getNonActionItems().isEmpty()) {
            return false;
        }
        this.f862j = new RunnableC0217c(new C0220e(this.f652b, this.f653c, this.f859g, true));
        ((View) this.f656f).post(this.f862j);
        super.onSubMenuSelected(null);
        return true;
    }

    /* renamed from: d */
    public boolean m7466d() {
        if (this.f862j != null && this.f656f != null) {
            ((View) this.f656f).removeCallbacks(this.f862j);
            this.f862j = null;
            return true;
        }
        C0220e c0220e = this.f860h;
        if (c0220e == null) {
            return false;
        }
        c0220e.m7520d();
        return true;
    }

    /* renamed from: e */
    public boolean m7464e() {
        return m7466d() | m7462f();
    }

    /* renamed from: f */
    public boolean m7462f() {
        C0215a c0215a = this.f861i;
        if (c0215a != null) {
            c0215a.m7520d();
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00be, code lost:
        if ((r18 + r17) > r12) goto L28;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0171b, androidx.appcompat.view.menu.AbstractC0197m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean flagActionItems() {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.flagActionItems():boolean");
    }

    /* renamed from: g */
    public boolean m7460g() {
        C0220e c0220e = this.f860h;
        return c0220e != null && c0220e.m7519f();
    }

    /* renamed from: h */
    public boolean m7459h() {
        return this.f862j != null || m7460g();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b, androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
        super.initForMenu(context, c0182g);
        Resources resources = context.getResources();
        C0154a m7662a = C0154a.m7662a(context);
        if (!this.f868p) {
            this.f867o = m7662a.m7661b();
        }
        if (!this.f874v) {
            this.f869q = m7662a.m7660c();
        }
        if (!this.f872t) {
            this.f871s = m7662a.m7663a();
        }
        int i = this.f869q;
        if (this.f867o) {
            if (this.f859g == null) {
                this.f859g = new C0218d(this.f651a);
                if (this.f866n) {
                    this.f859g.setImageDrawable(this.f865m);
                    this.f865m = null;
                    this.f866n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f859g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f859g.getMeasuredWidth();
        } else {
            this.f859g = null;
        }
        this.f870r = i;
        this.f876x = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b, androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        m7464e();
        super.onCloseMenu(c0182g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        if (savedState.f879a <= 0 || (findItem = this.f653c.findItem(savedState.f879a)) == null) {
            return;
        }
        onSubMenuSelected((SubMenuC0206r) findItem.getSubMenu());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f879a = this.f864l;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b, androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        SubMenuC0206r subMenuC0206r2;
        boolean z;
        if (!subMenuC0206r.hasVisibleItems()) {
            return false;
        }
        SubMenuC0206r subMenuC0206r3 = subMenuC0206r;
        while (true) {
            subMenuC0206r2 = subMenuC0206r3;
            if (subMenuC0206r2.getParentMenu() == this.f653c) {
                break;
            }
            subMenuC0206r3 = (SubMenuC0206r) subMenuC0206r2.getParentMenu();
        }
        View m7479a = m7479a(subMenuC0206r2.getItem());
        if (m7479a == null) {
            return false;
        }
        this.f864l = subMenuC0206r.getItem().getItemId();
        int size = subMenuC0206r.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = subMenuC0206r.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        this.f861i = new C0215a(this.f652b, subMenuC0206r, m7479a);
        this.f861i.m7523a(z);
        this.f861i.m7530a();
        super.onSubMenuSelected(subMenuC0206r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0171b, androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        ((View) this.f656f).requestLayout();
        if (this.f653c != null) {
            ArrayList<C0186i> actionItems = this.f653c.getActionItems();
            int size = actionItems.size();
            for (int i = 0; i < size; i++) {
                AbstractC0530b mo6550a = actionItems.get(i).mo6550a();
                if (mo6550a != null) {
                    mo6550a.m6354a(this);
                }
            }
        }
        ArrayList<C0186i> nonActionItems = this.f653c != null ? this.f653c.getNonActionItems() : null;
        boolean z2 = false;
        if (this.f867o) {
            z2 = false;
            if (nonActionItems != null) {
                int size2 = nonActionItems.size();
                if (size2 == 1) {
                    z2 = !nonActionItems.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.f859g == null) {
                this.f859g = new C0218d(this.f651a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f859g.getParent();
            if (viewGroup != this.f656f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f859g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f656f;
                actionMenuView.addView(this.f859g, actionMenuView.m7445c());
            }
        } else {
            C0218d c0218d = this.f859g;
            if (c0218d != null && c0218d.getParent() == this.f656f) {
                ((ViewGroup) this.f656f).removeView(this.f859g);
            }
        }
        ((ActionMenuView) this.f656f).setOverflowReserved(this.f867o);
    }
}
