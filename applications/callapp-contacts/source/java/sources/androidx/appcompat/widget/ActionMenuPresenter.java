package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.C0240a;
import androidx.appcompat.view.menu.AbstractC0257b;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.AbstractC0288p;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.C0281l;
import androidx.appcompat.view.menu.SubMenuC0292r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.AbstractC0899b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public final class ActionMenuPresenter extends AbstractC0257b implements AbstractC0899b.AbstractC0900a {

    /* renamed from: B */
    private C0301b f1055B;

    /* renamed from: i */
    C0303d f1056i;

    /* renamed from: j */
    Drawable f1057j;

    /* renamed from: k */
    boolean f1058k;

    /* renamed from: l */
    boolean f1059l;

    /* renamed from: m */
    C0305e f1060m;

    /* renamed from: n */
    C0300a f1061n;

    /* renamed from: o */
    RunnableC0302c f1062o;

    /* renamed from: q */
    int f1064q;

    /* renamed from: r */
    private boolean f1065r;

    /* renamed from: s */
    private boolean f1066s;

    /* renamed from: t */
    private int f1067t;

    /* renamed from: u */
    private int f1068u;

    /* renamed from: v */
    private int f1069v;

    /* renamed from: w */
    private boolean f1070w;

    /* renamed from: x */
    private boolean f1071x;

    /* renamed from: y */
    private boolean f1072y;

    /* renamed from: z */
    private int f1073z;

    /* renamed from: A */
    private final SparseBooleanArray f1054A = new SparseBooleanArray();

    /* renamed from: p */
    final C0306f f1063p = new C0306f();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public final class C0300a extends C0281l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0300a(Context context, SubMenuC0292r subMenuC0292r, View view) {
            super(context, subMenuC0292r, view, false, C0142a.C0143a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            if (!((C0272i) subMenuC0292r.getItem()).m46067f()) {
                this.f956a = r8.f1056i == null ? (View) r8.f819g : r8.f1056i;
            }
            m46056a(r8.f1063p);
        }

        @Override // androidx.appcompat.view.menu.C0281l
        /* renamed from: e */
        public final void mo46003e() {
            ActionMenuPresenter.this.f1061n = null;
            ActionMenuPresenter.this.f1064q = 0;
            super.mo46003e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    final class C0301b extends ActionMenuItemView.AbstractC0255b {
        C0301b() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0255b
        /* renamed from: a */
        public final AbstractC0288p mo46004a() {
            if (ActionMenuPresenter.this.f1061n != null) {
                return ActionMenuPresenter.this.f1061n.m46054b();
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public final class RunnableC0302c implements Runnable {

        /* renamed from: b */
        private C0305e f1077b;

        public RunnableC0302c(C0305e c0305e) {
            ActionMenuPresenter.this = r4;
            this.f1077b = c0305e;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActionMenuPresenter.this.f815c != null) {
                C0268g c0268g = ActionMenuPresenter.this.f815c;
                if (c0268g.f884b != null) {
                    c0268g.f884b.mo10362a(c0268g);
                }
            }
            View view = (View) ActionMenuPresenter.this.f819g;
            if (view != null && view.getWindowToken() != null && this.f1077b.m46053c()) {
                ActionMenuPresenter.this.f1060m = this.f1077b;
            }
            ActionMenuPresenter.this.f1062o = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public final class C0303d extends AppCompatImageView implements ActionMenuView.AbstractC0307a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0303d(Context context) {
            super(context, null, C0142a.C0143a.actionOverflowButtonStyle);
            ActionMenuPresenter.this = r8;
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0374ad.m45785a(this, getContentDescription());
            setOnTouchListener(new AbstractView$OnAttachStateChangeListenerC0410r(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.d.1
                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
                /* renamed from: a */
                public final AbstractC0288p mo45617a() {
                    if (ActionMenuPresenter.this.f1060m == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.f1060m.m46054b();
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
                /* renamed from: b */
                public final boolean mo45616b() {
                    ActionMenuPresenter.this.m46009e();
                    return true;
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
                /* renamed from: c */
                public final boolean mo45615c() {
                    if (ActionMenuPresenter.this.f1062o != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.m46008g();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0307a
        /* renamed from: d */
        public final boolean mo45993d() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0307a
        /* renamed from: e */
        public final boolean mo45992e() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m46009e();
            return true;
        }

        @Override // android.widget.ImageView
        protected final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C0840a.m44356a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public final class C0305e extends C0281l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0305e(Context context, C0268g c0268g, View view, boolean z) {
            super(context, c0268g, view, z, C0142a.C0143a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            m46058a();
            m46056a(r8.f1063p);
        }

        @Override // androidx.appcompat.view.menu.C0281l
        /* renamed from: e */
        public final void mo46003e() {
            if (ActionMenuPresenter.this.f815c != null) {
                ActionMenuPresenter.this.f815c.close();
            }
            ActionMenuPresenter.this.f1060m = null;
            super.mo46003e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    public final class C0306f implements AbstractC0283m.AbstractC0284a {
        C0306f() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final void mo45990a(C0268g c0268g, boolean z) {
            if (c0268g instanceof SubMenuC0292r) {
                c0268g.mo46034l().m46094a(false);
            }
            AbstractC0283m.AbstractC0284a abstractC0284a = ActionMenuPresenter.this.f818f;
            if (abstractC0284a != null) {
                abstractC0284a.mo45990a(c0268g, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final boolean mo45991a(C0268g c0268g) {
            if (c0268g == ActionMenuPresenter.this.f815c) {
                return false;
            }
            ActionMenuPresenter.this.f1064q = ((SubMenuC0292r) c0268g).getItem().getItemId();
            AbstractC0283m.AbstractC0284a abstractC0284a = ActionMenuPresenter.this.f818f;
            if (abstractC0284a == null) {
                return false;
            }
            return abstractC0284a.mo45991a(c0268g);
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0142a.C0149g.abc_action_menu_layout, C0142a.C0149g.abc_action_menu_item_layout);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b
    /* renamed from: a */
    public final View mo46014a(C0272i c0272i, View view, ViewGroup viewGroup) {
        View actionView = c0272i.getActionView();
        if (actionView == null || c0272i.m46063j()) {
            actionView = super.mo46014a(c0272i, view, viewGroup);
        }
        actionView.setVisibility(c0272i.isActionViewExpanded() ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m46000a(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b
    /* renamed from: a */
    public final AbstractC0285n mo46017a(ViewGroup viewGroup) {
        AbstractC0285n abstractC0285n = this.f819g;
        AbstractC0285n mo46017a = super.mo46017a(viewGroup);
        if (abstractC0285n != mo46017a) {
            ((ActionMenuView) mo46017a).setPresenter(this);
        }
        return mo46017a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b, androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10549a(Context context, C0268g c0268g) {
        super.mo10549a(context, c0268g);
        Resources resources = context.getResources();
        C0240a m46173a = C0240a.m46173a(context);
        if (!this.f1066s) {
            boolean z = true;
            if (Build.VERSION.SDK_INT < 19 && ViewConfiguration.get(m46173a.f690a).hasPermanentMenuKey()) {
                z = false;
            }
            this.f1065r = z;
        }
        if (!this.f1072y) {
            this.f1067t = m46173a.f690a.getResources().getDisplayMetrics().widthPixels / 2;
        }
        if (!this.f1070w) {
            this.f1069v = m46173a.m46174a();
        }
        int i = this.f1067t;
        if (this.f1065r) {
            if (this.f1056i == null) {
                C0303d c0303d = new C0303d(this.f813a);
                this.f1056i = c0303d;
                if (this.f1058k) {
                    c0303d.setImageDrawable(this.f1057j);
                    this.f1057j = null;
                    this.f1058k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1056i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f1056i.getMeasuredWidth();
        } else {
            this.f1056i = null;
        }
        this.f1068u = i;
        this.f1073z = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        if (savedState.openSubMenuId <= 0 || (findItem = this.f815c.findItem(savedState.openSubMenuId)) == null) {
            return;
        }
        mo10542a((SubMenuC0292r) findItem.getSubMenu());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b, androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
        m46007h();
        super.mo10545a(c0268g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b
    /* renamed from: a */
    public final void mo46013a(C0272i c0272i, AbstractC0285n.AbstractC0286a abstractC0286a) {
        abstractC0286a.mo10612a(c0272i);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) abstractC0286a;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f819g);
        if (this.f1055B == null) {
            this.f1055B = new C0301b();
        }
        actionMenuItemView.setPopupCallback(this.f1055B);
    }

    /* renamed from: a */
    public final void m46012a(ActionMenuView actionMenuView) {
        this.f819g = actionMenuView;
        actionMenuView.f1083a = this.f815c;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b, androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        super.mo10541a(z);
        ((View) this.f819g).requestLayout();
        if (this.f815c != null) {
            C0268g c0268g = this.f815c;
            c0268g.m46083j();
            ArrayList<C0272i> arrayList = c0268g.f886d;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC0899b abstractC0899b = arrayList.get(i).f921e;
                if (abstractC0899b != null) {
                    abstractC0899b.f3713d = this;
                }
            }
        }
        ArrayList<C0272i> m46082k = this.f815c != null ? this.f815c.m46082k() : null;
        boolean z2 = false;
        if (this.f1065r) {
            z2 = false;
            if (m46082k != null) {
                int size2 = m46082k.size();
                if (size2 == 1) {
                    z2 = !m46082k.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.f1056i == null) {
                this.f1056i = new C0303d(this.f813a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1056i.getParent();
            if (viewGroup != this.f819g) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1056i);
                }
                ((ActionMenuView) this.f819g).addView(this.f1056i, ActionMenuView.m46002a());
            }
        } else {
            C0303d c0303d = this.f1056i;
            if (c0303d != null && c0303d.getParent() == this.f819g) {
                ((ViewGroup) this.f819g).removeView(this.f1056i);
            }
        }
        ((ActionMenuView) this.f819g).setOverflowReserved(this.f1065r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b4, code lost:
        if ((r18 + r17) > r11) goto L28;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0257b, androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo10551a() {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo10551a():boolean");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b
    /* renamed from: a */
    public final boolean mo46016a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f1056i) {
            return false;
        }
        return super.mo46016a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b
    /* renamed from: a */
    public final boolean mo46015a(C0272i c0272i) {
        return c0272i.m46067f();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0257b, androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        SubMenuC0292r subMenuC0292r2;
        View view;
        boolean z;
        if (!subMenuC0292r.hasVisibleItems()) {
            return false;
        }
        SubMenuC0292r subMenuC0292r3 = subMenuC0292r;
        while (true) {
            subMenuC0292r2 = subMenuC0292r3;
            if (subMenuC0292r2.f993l == this.f815c) {
                break;
            }
            subMenuC0292r3 = (SubMenuC0292r) subMenuC0292r2.f993l;
        }
        MenuItem item = subMenuC0292r2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.f819g;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                view = viewGroup.getChildAt(i);
                if ((view instanceof AbstractC0285n.AbstractC0286a) && ((AbstractC0285n.AbstractC0286a) view).mo10613a() == item) {
                    break;
                }
            }
        }
        view = null;
        if (view == null) {
            return false;
        }
        this.f1064q = subMenuC0292r.getItem().getItemId();
        int size = subMenuC0292r.size();
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= size) {
                break;
            }
            MenuItem item2 = subMenuC0292r.getItem(i2);
            if (item2.isVisible() && item2.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        C0300a c0300a = new C0300a(this.f814b, subMenuC0292r, view);
        this.f1061n = c0300a;
        c0300a.m46055a(z);
        if (!this.f1061n.m46053c()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        super.mo10542a(subMenuC0292r);
        return true;
    }

    @Override // androidx.core.view.AbstractC0899b.AbstractC0900a
    /* renamed from: b */
    public final void mo44198b(boolean z) {
        if (z) {
            super.mo10542a((SubMenuC0292r) null);
        } else if (this.f815c == null) {
        } else {
            this.f815c.m46094a(false);
        }
    }

    /* renamed from: c */
    public final void m46011c() {
        if (!this.f1070w) {
            this.f1069v = C0240a.m46173a(this.f814b).m46174a();
        }
        if (this.f815c != null) {
            this.f815c.mo10524b(true);
        }
    }

    /* renamed from: d */
    public final void m46010d() {
        this.f1065r = true;
        this.f1066s = true;
    }

    /* renamed from: e */
    public final boolean m46009e() {
        if (!this.f1065r || m46005j() || this.f815c == null || this.f819g == null || this.f1062o != null || this.f815c.m46082k().isEmpty()) {
            return false;
        }
        this.f1062o = new RunnableC0302c(new C0305e(this.f814b, this.f815c, this.f1056i, true));
        ((View) this.f819g).post(this.f1062o);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.f1064q;
        return savedState;
    }

    /* renamed from: g */
    public final boolean m46008g() {
        if (this.f1062o != null && this.f819g != null) {
            ((View) this.f819g).removeCallbacks(this.f1062o);
            this.f1062o = null;
            return true;
        }
        C0305e c0305e = this.f1060m;
        if (c0305e == null) {
            return false;
        }
        c0305e.m46052d();
        return true;
    }

    /* renamed from: h */
    public final boolean m46007h() {
        return m46008g() | m46006i();
    }

    /* renamed from: i */
    public final boolean m46006i() {
        C0300a c0300a = this.f1061n;
        if (c0300a != null) {
            c0300a.m46052d();
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public final boolean m46005j() {
        C0305e c0305e = this.f1060m;
        return c0305e != null && c0305e.m46051f();
    }
}
