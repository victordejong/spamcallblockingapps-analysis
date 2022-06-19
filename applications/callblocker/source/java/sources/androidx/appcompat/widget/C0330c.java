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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.C0171a;
import androidx.appcompat.view.menu.AbstractC0188b;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.AbstractC0219p;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.view.menu.C0212l;
import androidx.appcompat.view.menu.SubMenuC0223r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.AbstractC0573b;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
public class C0330c extends AbstractC0188b implements AbstractC0573b.AbstractC0574a {

    /* renamed from: g */
    C0334d f1387g;

    /* renamed from: h */
    C0336e f1388h;

    /* renamed from: i */
    C0331a f1389i;

    /* renamed from: j */
    RunnableC0333c f1390j;

    /* renamed from: l */
    int f1392l;

    /* renamed from: m */
    private Drawable f1393m;

    /* renamed from: n */
    private boolean f1394n;

    /* renamed from: o */
    private boolean f1395o;

    /* renamed from: p */
    private boolean f1396p;

    /* renamed from: q */
    private int f1397q;

    /* renamed from: r */
    private int f1398r;

    /* renamed from: s */
    private int f1399s;

    /* renamed from: t */
    private boolean f1400t;

    /* renamed from: u */
    private boolean f1401u;

    /* renamed from: v */
    private boolean f1402v;

    /* renamed from: w */
    private boolean f1403w;

    /* renamed from: x */
    private int f1404x;

    /* renamed from: z */
    private C0332b f1406z;

    /* renamed from: y */
    private final SparseBooleanArray f1405y = new SparseBooleanArray();

    /* renamed from: k */
    final C0337f f1391k = new C0337f();

    /* renamed from: androidx.appcompat.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$a.class */
    public class C0331a extends C0212l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0331a(Context context, SubMenuC0223r subMenuC0223r, View view) {
            super(context, subMenuC0223r, view, false, C0083a.C0084a.actionOverflowMenuStyle);
            C0330c.this = r8;
            if (!((C0203i) subMenuC0223r.getItem()).m21824j()) {
                m21807a(r8.f1387g == null ? (View) r8.f708f : r8.f1387g);
            }
            m21805a(r8.f1391k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0212l
        /* renamed from: e */
        public void mo21355e() {
            C0330c.this.f1389i = null;
            C0330c.this.f1392l = 0;
            super.mo21355e();
        }
    }

    /* renamed from: androidx.appcompat.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$b.class */
    private class C0332b extends ActionMenuItemView.AbstractC0186b {
        C0332b() {
            C0330c.this = r4;
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0186b
        /* renamed from: a */
        public AbstractC0219p mo21361a() {
            return C0330c.this.f1389i != null ? C0330c.this.f1389i.m21803b() : null;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
    public class RunnableC0333c implements Runnable {

        /* renamed from: b */
        private C0336e f1410b;

        public RunnableC0333c(C0336e c0336e) {
            C0330c.this = r4;
            this.f1410b = c0336e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0330c.this.f705c != null) {
                C0330c.this.f705c.m21859g();
            }
            View view = (View) C0330c.this.f708f;
            if (view != null && view.getWindowToken() != null && this.f1410b.m21802c()) {
                C0330c.this.f1388h = this.f1410b;
            }
            C0330c.this.f1390j = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d.class */
    public class C0334d extends AppCompatImageView implements ActionMenuView.AbstractC0231a {

        /* renamed from: b */
        private final float[] f1412b = new float[2];

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0334d(Context context) {
            super(context, null, C0083a.C0084a.actionOverflowButtonStyle);
            C0330c.this = r8;
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0321ar.m21406a(this, getContentDescription());
            setOnTouchListener(new AbstractView$OnAttachStateChangeListenerC0282ab(this) { // from class: androidx.appcompat.widget.c.d.1
                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab
                /* renamed from: a */
                public AbstractC0219p mo21358a() {
                    return C0330c.this.f1388h == null ? null : C0330c.this.f1388h.m21803b();
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab
                /* renamed from: b */
                public boolean mo21357b() {
                    C0330c.this.m21369e();
                    return true;
                }

                @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab
                /* renamed from: c */
                public boolean mo21356c() {
                    boolean z;
                    if (C0330c.this.f1390j != null) {
                        z = false;
                    } else {
                        C0330c.this.m21366g();
                        z = true;
                    }
                    return z;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0231a
        /* renamed from: c */
        public boolean mo21360c() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0231a
        /* renamed from: d */
        public boolean mo21359d() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            C0330c.this.m21369e();
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
                C0535a.m20596a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$e.class */
    public class C0336e extends C0212l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0336e(Context context, C0199g c0199g, View view, boolean z) {
            super(context, c0199g, view, z, C0083a.C0084a.actionOverflowMenuStyle);
            C0330c.this = r8;
            m21810a(8388613);
            m21805a(r8.f1391k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0212l
        /* renamed from: e */
        public void mo21355e() {
            if (C0330c.this.f705c != null) {
                C0330c.this.f705c.close();
            }
            C0330c.this.f1388h = null;
            super.mo21355e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.c$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$f.class */
    public class C0337f implements AbstractC0214m.AbstractC0215a {
        C0337f() {
            C0330c.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public void mo21353a(C0199g c0199g, boolean z) {
            if (c0199g instanceof SubMenuC0223r) {
                c0199g.mo21781q().m21878a(false);
            }
            AbstractC0214m.AbstractC0215a a = C0330c.this.m21924a();
            if (a != null) {
                a.mo21353a(c0199g, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public boolean mo21354a(C0199g c0199g) {
            boolean z = false;
            if (c0199g != null) {
                C0330c.this.f1392l = ((SubMenuC0223r) c0199g).getItem().getItemId();
                AbstractC0214m.AbstractC0215a a = C0330c.this.m21924a();
                z = a != null ? a.mo21354a(c0199g) : false;
            }
            return z;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.appcompat.widget.c$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$g.class */
    public static class C0338g implements Parcelable {
        public static final Parcelable.Creator<C0338g> CREATOR = new Parcelable.Creator<C0338g>() { // from class: androidx.appcompat.widget.c.g.1
            /* renamed from: a */
            public C0338g createFromParcel(Parcel parcel) {
                return new C0338g(parcel);
            }

            /* renamed from: a */
            public C0338g[] newArray(int i) {
                return new C0338g[i];
            }
        };

        /* renamed from: a */
        public int f1417a;

        C0338g() {
        }

        C0338g(Parcel parcel) {
            this.f1417a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1417a);
        }
    }

    public C0330c(Context context) {
        super(context, C0083a.C0090g.abc_action_menu_layout, C0083a.C0090g.abc_action_menu_item_layout);
    }

    /* renamed from: a */
    private View m21382a(MenuItem menuItem) {
        View view;
        ViewGroup viewGroup = (ViewGroup) this.f708f;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    view = null;
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof AbstractC0216n.AbstractC0217a) {
                    view = childAt;
                    if (((AbstractC0216n.AbstractC0217a) childAt).getItemData() == menuItem) {
                        break;
                    }
                }
                i++;
            }
        } else {
            view = null;
        }
        return view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b
    /* renamed from: a */
    public View mo21379a(C0203i c0203i, View view, ViewGroup viewGroup) {
        View actionView = c0203i.getActionView();
        if (actionView == null || c0203i.m21820n()) {
            actionView = super.mo21379a(c0203i, view, viewGroup);
        }
        actionView.setVisibility(c0203i.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b
    /* renamed from: a */
    public AbstractC0216n mo21381a(ViewGroup viewGroup) {
        AbstractC0216n abstractC0216n = this.f708f;
        AbstractC0216n mo21381a = super.mo21381a(viewGroup);
        if (abstractC0216n != mo21381a) {
            ((ActionMenuView) mo21381a).setPresenter(this);
        }
        return mo21381a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b, androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3589a(Context context, C0199g c0199g) {
        super.mo3589a(context, c0199g);
        Resources resources = context.getResources();
        C0171a m21993a = C0171a.m21993a(context);
        if (!this.f1396p) {
            this.f1395o = m21993a.m21992b();
        }
        if (!this.f1402v) {
            this.f1397q = m21993a.m21991c();
        }
        if (!this.f1400t) {
            this.f1399s = m21993a.m21994a();
        }
        int i = this.f1397q;
        if (this.f1395o) {
            if (this.f1387g == null) {
                this.f1387g = new C0334d(this.f703a);
                if (this.f1394n) {
                    this.f1387g.setImageDrawable(this.f1393m);
                    this.f1393m = null;
                    this.f1394n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1387g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f1387g.getMeasuredWidth();
        } else {
            this.f1387g = null;
        }
        this.f1398r = i;
        this.f1404x = (int) (56.0f * resources.getDisplayMetrics().density);
    }

    /* renamed from: a */
    public void m21384a(Configuration configuration) {
        if (!this.f1400t) {
            this.f1399s = C0171a.m21993a(this.f704b).m21994a();
        }
        if (this.f705c != null) {
            this.f705c.m21873b(true);
        }
    }

    /* renamed from: a */
    public void m21383a(Drawable drawable) {
        if (this.f1387g != null) {
            this.f1387g.setImageDrawable(drawable);
            return;
        }
        this.f1394n = true;
        this.f1393m = drawable;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3588a(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof C0338g)) {
            return;
        }
        C0338g c0338g = (C0338g) parcelable;
        if (c0338g.f1417a <= 0 || (findItem = this.f705c.findItem(c0338g.f1417a)) == null) {
            return;
        }
        mo3584a((SubMenuC0223r) findItem.getSubMenu());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b, androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
        m21365h();
        super.mo3586a(c0199g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b
    /* renamed from: a */
    public void mo21378a(C0203i c0203i, AbstractC0216n.AbstractC0217a abstractC0217a) {
        abstractC0217a.mo2909a(c0203i, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) abstractC0217a;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f708f);
        if (this.f1406z == null) {
            this.f1406z = new C0332b();
        }
        actionMenuItemView.setPopupCallback(this.f1406z);
    }

    /* renamed from: a */
    public void m21377a(ActionMenuView actionMenuView) {
        this.f708f = actionMenuView;
        actionMenuView.mo2905a(this.f705c);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b, androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        super.mo3582a(z);
        ((View) this.f708f).requestLayout();
        if (this.f705c != null) {
            ArrayList<C0203i> m21854l = this.f705c.m21854l();
            int size = m21854l.size();
            for (int i = 0; i < size; i++) {
                AbstractC0573b mo20731a = m21854l.get(i).mo20731a();
                if (mo20731a != null) {
                    mo20731a.m20431a(this);
                }
            }
        }
        ArrayList<C0203i> m21853m = this.f705c != null ? this.f705c.m21853m() : null;
        boolean z2 = false;
        if (this.f1395o) {
            z2 = false;
            if (m21853m != null) {
                int size2 = m21853m.size();
                z2 = size2 == 1 ? !m21853m.get(0).isActionViewExpanded() : size2 > 0;
            }
        }
        if (z2) {
            if (this.f1387g == null) {
                this.f1387g = new C0334d(this.f703a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1387g.getParent();
            if (viewGroup != this.f708f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1387g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f708f;
                actionMenuView.addView(this.f1387g, actionMenuView.m21745c());
            }
        } else if (this.f1387g != null && this.f1387g.getParent() == this.f708f) {
            ((ViewGroup) this.f708f).removeView(this.f1387g);
        }
        ((ActionMenuView) this.f708f).setOverflowReserved(this.f1395o);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b
    /* renamed from: a */
    public boolean mo21385a(int i, C0203i c0203i) {
        return c0203i.m21824j();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b
    /* renamed from: a */
    public boolean mo21380a(ViewGroup viewGroup, int i) {
        return viewGroup.getChildAt(i) == this.f1387g ? false : super.mo21380a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0188b, androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        SubMenuC0223r subMenuC0223r2;
        boolean z;
        boolean z2 = false;
        if (subMenuC0223r.hasVisibleItems()) {
            SubMenuC0223r subMenuC0223r3 = subMenuC0223r;
            while (true) {
                subMenuC0223r2 = subMenuC0223r3;
                if (subMenuC0223r2.m21780t() == this.f705c) {
                    break;
                }
                subMenuC0223r3 = (SubMenuC0223r) subMenuC0223r2.m21780t();
            }
            View m21382a = m21382a(subMenuC0223r2.getItem());
            if (m21382a != null) {
                this.f1392l = subMenuC0223r.getItem().getItemId();
                int size = subMenuC0223r.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = subMenuC0223r.getItem(i);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i++;
                }
                this.f1389i = new C0331a(this.f704b, subMenuC0223r, m21382a);
                this.f1389i.m21804a(z);
                this.f1389i.m21811a();
                super.mo3584a(subMenuC0223r);
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public void m21374b(boolean z) {
        this.f1395o = z;
        this.f1396p = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if ((r14 + r15) > r10) goto L28;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0188b, androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3581b() {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0330c.mo3581b():boolean");
    }

    /* renamed from: c */
    public void m21372c(boolean z) {
        this.f1403w = z;
    }

    /* renamed from: d */
    public Drawable m21371d() {
        return this.f1387g != null ? this.f1387g.getDrawable() : this.f1394n ? this.f1393m : null;
    }

    @Override // androidx.core.p026h.AbstractC0573b.AbstractC0574a
    /* renamed from: d */
    public void mo20423d(boolean z) {
        if (z) {
            super.mo3584a((SubMenuC0223r) null);
        } else if (this.f705c == null) {
        } else {
            this.f705c.m21878a(false);
        }
    }

    /* renamed from: e */
    public boolean m21369e() {
        boolean z = true;
        if (!this.f1395o || m21363j() || this.f705c == null || this.f708f == null || this.f1390j != null || this.f705c.m21853m().isEmpty()) {
            z = false;
        } else {
            this.f1390j = new RunnableC0333c(new C0336e(this.f704b, this.f705c, this.f1387g, true));
            ((View) this.f708f).post(this.f1390j);
            super.mo3584a((SubMenuC0223r) null);
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: f */
    public Parcelable mo3577f() {
        C0338g c0338g = new C0338g();
        c0338g.f1417a = this.f1392l;
        return c0338g;
    }

    /* renamed from: g */
    public boolean m21366g() {
        boolean z;
        if (this.f1390j == null || this.f708f == null) {
            C0336e c0336e = this.f1388h;
            if (c0336e != null) {
                c0336e.m21801d();
                z = true;
            } else {
                z = false;
            }
        } else {
            ((View) this.f708f).removeCallbacks(this.f1390j);
            this.f1390j = null;
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m21365h() {
        return m21366g() | m21364i();
    }

    /* renamed from: i */
    public boolean m21364i() {
        boolean z;
        if (this.f1389i != null) {
            this.f1389i.m21801d();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m21363j() {
        return this.f1388h != null && this.f1388h.m21800f();
    }

    /* renamed from: k */
    public boolean m21362k() {
        return this.f1390j != null || m21363j();
    }
}
