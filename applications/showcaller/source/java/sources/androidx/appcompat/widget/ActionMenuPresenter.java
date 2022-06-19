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
import androidx.appcompat.view.menu.AbstractC0167b;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.AbstractC0198p;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.C0191l;
import androidx.appcompat.view.menu.SubMenuC0202r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.C0615a;
import java.util.ArrayList;
import p020b.p021a.C1423a;
import p020b.p021a.C1429g;
import p020b.p021a.p028o.C1454a;
import p020b.p041h.p050l.AbstractC1605b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public class ActionMenuPresenter extends AbstractC0167b implements AbstractC1605b.AbstractC1606a {

    /* renamed from: B */
    C0215e f804B;

    /* renamed from: C */
    C0210a f805C;

    /* renamed from: D */
    RunnableC0212c f806D;

    /* renamed from: E */
    private C0211b f807E;

    /* renamed from: G */
    int f809G;

    /* renamed from: n */
    C0213d f810n;

    /* renamed from: o */
    private Drawable f811o;

    /* renamed from: p */
    private boolean f812p;

    /* renamed from: q */
    private boolean f813q;

    /* renamed from: r */
    private boolean f814r;

    /* renamed from: s */
    private int f815s;

    /* renamed from: t */
    private int f816t;

    /* renamed from: u */
    private int f817u;

    /* renamed from: v */
    private boolean f818v;

    /* renamed from: w */
    private boolean f819w;

    /* renamed from: x */
    private boolean f820x;

    /* renamed from: y */
    private boolean f821y;

    /* renamed from: z */
    private int f822z;

    /* renamed from: A */
    private final SparseBooleanArray f803A = new SparseBooleanArray();

    /* renamed from: F */
    final C0216f f808F = new C0216f();

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0209a();

        /* renamed from: d */
        public int f823d;

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState$a.class */
        class C0209a implements Parcelable.Creator<SavedState> {
            C0209a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f823d = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f823d);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public class C0210a extends C0191l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0210a(Context context, SubMenuC0202r subMenuC0202r, View view) {
            super(context, subMenuC0202r, view, false, C1423a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            if (!((C0182i) subMenuC0202r.getItem()).m35352l()) {
                C0213d c0213d = r8.f810n;
                m35325f(c0213d == null ? (View) ((AbstractC0167b) r8).f569l : c0213d);
            }
            m35321j(r8.f808F);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0191l
        /* renamed from: e */
        public void mo35242e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f805C = null;
            actionMenuPresenter.f809G = 0;
            super.mo35242e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    private class C0211b extends ActionMenuItemView.AbstractC0165b {
        C0211b() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0165b
        /* renamed from: a */
        public AbstractC0198p mo35243a() {
            C0210a c0210a = ActionMenuPresenter.this.f805C;
            return c0210a != null ? c0210a.m35327c() : null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public class RunnableC0212c implements Runnable {

        /* renamed from: d */
        private C0215e f826d;

        public RunnableC0212c(C0215e c0215e) {
            ActionMenuPresenter.this = r4;
            this.f826d = c0215e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractC0167b) ActionMenuPresenter.this).f563f != null) {
                ((AbstractC0167b) ActionMenuPresenter.this).f563f.m35389d();
            }
            View view = (View) ((AbstractC0167b) ActionMenuPresenter.this).f569l;
            if (view != null && view.getWindowToken() != null && this.f826d.m35318m()) {
                ActionMenuPresenter.this.f804B = this.f826d;
            }
            ActionMenuPresenter.this.f806D = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public class C0213d extends AppCompatImageView implements ActionMenuView.AbstractC0217a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d$a.class */
        public class C0214a extends AbstractView$OnTouchListenerC0323t {

            /* renamed from: m */
            final /* synthetic */ ActionMenuPresenter f829m;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0214a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                C0213d.this = r4;
                this.f829m = actionMenuPresenter;
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
            /* renamed from: b */
            public AbstractC0198p mo34756b() {
                C0215e c0215e = ActionMenuPresenter.this.f804B;
                if (c0215e == null) {
                    return null;
                }
                return c0215e.m35327c();
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
            /* renamed from: c */
            public boolean mo34755c() {
                ActionMenuPresenter.this.m35257N();
                return true;
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
            /* renamed from: d */
            public boolean mo34754d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.f806D != null) {
                    return false;
                }
                actionMenuPresenter.m35266E();
                return true;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0213d(Context context) {
            super(context, null, C1423a.actionOverflowButtonStyle);
            ActionMenuPresenter.this = r8;
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0293g0.m34913a(this, getContentDescription());
            setOnTouchListener(new C0214a(this, r8));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0217a
        /* renamed from: a */
        public boolean mo35226a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0217a
        /* renamed from: b */
        public boolean mo35225b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m35257N();
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
                C0615a.m33218l(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public class C0215e extends C0191l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0215e(Context context, C0178g c0178g, View view, boolean z) {
            super(context, c0178g, view, z, C1423a.actionOverflowMenuStyle);
            ActionMenuPresenter.this = r8;
            m35323h(8388613);
            m35321j(r8.f808F);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0191l
        /* renamed from: e */
        public void mo35242e() {
            if (((AbstractC0167b) ActionMenuPresenter.this).f563f != null) {
                ((AbstractC0167b) ActionMenuPresenter.this).f563f.close();
            }
            ActionMenuPresenter.this.f804B = null;
            super.mo35242e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    public class C0216f implements AbstractC0193m.AbstractC0194a {
        C0216f() {
            ActionMenuPresenter.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: b */
        public void mo35224b(C0178g c0178g, boolean z) {
            if (c0178g instanceof SubMenuC0202r) {
                c0178g.mo35306F().m35387e(false);
            }
            AbstractC0193m.AbstractC0194a m35439p = ActionMenuPresenter.this.m35439p();
            if (m35439p != null) {
                m35439p.mo35224b(c0178g, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: c */
        public boolean mo35223c(C0178g c0178g) {
            boolean z = false;
            if (c0178g == ((AbstractC0167b) ActionMenuPresenter.this).f563f) {
                return false;
            }
            ActionMenuPresenter.this.f809G = ((SubMenuC0202r) c0178g).getItem().getItemId();
            AbstractC0193m.AbstractC0194a m35439p = ActionMenuPresenter.this.m35439p();
            if (m35439p != null) {
                z = m35439p.mo35223c(c0178g);
            }
            return z;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C1429g.abc_action_menu_layout, C1429g.abc_action_menu_item_layout);
    }

    /* renamed from: C */
    private View m35268C(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f569l;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof AbstractC0195n.AbstractC0196a) && ((AbstractC0195n.AbstractC0196a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: B */
    public boolean m35269B() {
        return m35266E() | m35265F();
    }

    /* renamed from: D */
    public Drawable m35267D() {
        C0213d c0213d = this.f810n;
        if (c0213d != null) {
            return c0213d.getDrawable();
        }
        if (!this.f812p) {
            return null;
        }
        return this.f811o;
    }

    /* renamed from: E */
    public boolean m35266E() {
        AbstractC0195n abstractC0195n;
        RunnableC0212c runnableC0212c = this.f806D;
        if (runnableC0212c != null && (abstractC0195n = this.f569l) != null) {
            ((View) abstractC0195n).removeCallbacks(runnableC0212c);
            this.f806D = null;
            return true;
        }
        C0215e c0215e = this.f804B;
        if (c0215e == null) {
            return false;
        }
        c0215e.m35328b();
        return true;
    }

    /* renamed from: F */
    public boolean m35265F() {
        C0210a c0210a = this.f805C;
        if (c0210a != null) {
            c0210a.m35328b();
            return true;
        }
        return false;
    }

    /* renamed from: G */
    public boolean m35264G() {
        return this.f806D != null || m35263H();
    }

    /* renamed from: H */
    public boolean m35263H() {
        C0215e c0215e = this.f804B;
        return c0215e != null && c0215e.m35326d();
    }

    /* renamed from: I */
    public void m35262I(Configuration configuration) {
        if (!this.f818v) {
            this.f817u = C1454a.m30053b(this.f562e).m30051d();
        }
        C0178g c0178g = this.f563f;
        if (c0178g != null) {
            c0178g.mo4492M(true);
        }
    }

    /* renamed from: J */
    public void m35261J(boolean z) {
        this.f821y = z;
    }

    /* renamed from: K */
    public void m35260K(ActionMenuView actionMenuView) {
        this.f569l = actionMenuView;
        actionMenuView.mo4639b(this.f563f);
    }

    /* renamed from: L */
    public void m35259L(Drawable drawable) {
        C0213d c0213d = this.f810n;
        if (c0213d != null) {
            c0213d.setImageDrawable(drawable);
            return;
        }
        this.f812p = true;
        this.f811o = drawable;
    }

    /* renamed from: M */
    public void m35258M(boolean z) {
        this.f813q = z;
        this.f814r = true;
    }

    /* renamed from: N */
    public boolean m35257N() {
        C0178g c0178g;
        if (!this.f813q || m35263H() || (c0178g = this.f563f) == null || this.f569l == null || this.f806D != null || c0178g.m35413B().isEmpty()) {
            return false;
        }
        RunnableC0212c runnableC0212c = new RunnableC0212c(new C0215e(this.f562e, this.f563f, this.f810n, true));
        this.f806D = runnableC0212c;
        ((View) this.f569l).post(runnableC0212c);
        return true;
    }

    @Override // p020b.p041h.p050l.AbstractC1605b.AbstractC1606a
    /* renamed from: a */
    public void mo29620a(boolean z) {
        if (z) {
            super.mo4528l(null);
            return;
        }
        C0178g c0178g = this.f563f;
        if (c0178g == null) {
            return;
        }
        c0178g.m35387e(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b, androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        m35269B();
        super.mo4537b(c0178g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b, androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        super.mo4536c(z);
        ((View) this.f569l).requestLayout();
        C0178g c0178g = this.f563f;
        if (c0178g != null) {
            ArrayList<C0182i> m35370u = c0178g.m35370u();
            int size = m35370u.size();
            for (int i = 0; i < size; i++) {
                AbstractC1605b mo29771b = m35370u.get(i).mo29771b();
                if (mo29771b != null) {
                    mo29771b.m29623i(this);
                }
            }
        }
        C0178g c0178g2 = this.f563f;
        ArrayList<C0182i> m35413B = c0178g2 != null ? c0178g2.m35413B() : null;
        boolean z2 = false;
        if (this.f813q) {
            z2 = false;
            if (m35413B != null) {
                int size2 = m35413B.size();
                if (size2 == 1) {
                    z2 = !m35413B.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.f810n == null) {
                this.f810n = new C0213d(this.f561d);
            }
            ViewGroup viewGroup = (ViewGroup) this.f810n.getParent();
            if (viewGroup != this.f569l) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f810n);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f569l;
                actionMenuView.addView(this.f810n, actionMenuView.m35237F());
            }
        } else {
            C0213d c0213d = this.f810n;
            if (c0213d != null) {
                ViewParent parent = c0213d.getParent();
                AbstractC0195n abstractC0195n = this.f569l;
                if (parent == abstractC0195n) {
                    ((ViewGroup) abstractC0195n).removeView(this.f810n);
                }
            }
        }
        ((ActionMenuView) this.f569l).setOverflowReserved(this.f813q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
        if ((r18 + r17) > r11) goto L28;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo4535d() {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo4535d():boolean");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b, androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
        super.mo4531i(context, c0178g);
        Resources resources = context.getResources();
        C1454a m30053b = C1454a.m30053b(context);
        if (!this.f814r) {
            this.f813q = m30053b.m30047h();
        }
        if (!this.f820x) {
            this.f815s = m30053b.m30052c();
        }
        if (!this.f818v) {
            this.f817u = m30053b.m30051d();
        }
        int i = this.f815s;
        if (this.f813q) {
            if (this.f810n == null) {
                C0213d c0213d = new C0213d(this.f561d);
                this.f810n = c0213d;
                if (this.f812p) {
                    c0213d.setImageDrawable(this.f811o);
                    this.f811o = null;
                    this.f812p = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f810n.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f810n.getMeasuredWidth();
        } else {
            this.f810n = null;
        }
        this.f816t = i;
        this.f822z = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).f823d) > 0 && (findItem = this.f563f.findItem(i)) != null) {
            mo4528l((SubMenuC0202r) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b
    /* renamed from: k */
    public void mo35256k(C0182i c0182i, AbstractC0195n.AbstractC0196a abstractC0196a) {
        abstractC0196a.mo4640e(c0182i, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) abstractC0196a;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f569l);
        if (this.f807E == null) {
            this.f807E = new C0211b();
        }
        actionMenuItemView.setPopupCallback(this.f807E);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b, androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        SubMenuC0202r subMenuC0202r2;
        boolean z;
        if (!subMenuC0202r.hasVisibleItems()) {
            return false;
        }
        SubMenuC0202r subMenuC0202r3 = subMenuC0202r;
        while (true) {
            subMenuC0202r2 = subMenuC0202r3;
            if (subMenuC0202r2.m35299i0() == this.f563f) {
                break;
            }
            subMenuC0202r3 = (SubMenuC0202r) subMenuC0202r2.m35299i0();
        }
        View m35268C = m35268C(subMenuC0202r2.getItem());
        if (m35268C == null) {
            return false;
        }
        this.f809G = subMenuC0202r.getItem().getItemId();
        int size = subMenuC0202r.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = subMenuC0202r.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        C0210a c0210a = new C0210a(this.f562e, subMenuC0202r, m35268C);
        this.f805C = c0210a;
        c0210a.m35324g(z);
        this.f805C.m35320k();
        super.mo4528l(subMenuC0202r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: m */
    public Parcelable mo4527m() {
        SavedState savedState = new SavedState();
        savedState.f823d = this.f809G;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b
    /* renamed from: o */
    public boolean mo35255o(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f810n) {
            return false;
        }
        return super.mo35255o(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b
    /* renamed from: q */
    public View mo35254q(C0182i c0182i, View view, ViewGroup viewGroup) {
        View actionView = c0182i.getActionView();
        if (actionView == null || c0182i.m35354j()) {
            actionView = super.mo35254q(c0182i, view, viewGroup);
        }
        actionView.setVisibility(c0182i.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.mo35167o(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b
    /* renamed from: r */
    public AbstractC0195n mo35253r(ViewGroup viewGroup) {
        AbstractC0195n abstractC0195n = this.f569l;
        AbstractC0195n mo35253r = super.mo35253r(viewGroup);
        if (abstractC0195n != mo35253r) {
            ((ActionMenuView) mo35253r).setPresenter(this);
        }
        return mo35253r;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0167b
    /* renamed from: t */
    public boolean mo35252t(int i, C0182i c0182i) {
        return c0182i.m35352l();
    }
}
