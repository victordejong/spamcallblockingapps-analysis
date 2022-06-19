package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0126a;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.view.menu.C0142h;
import androidx.appcompat.view.menu.SubMenuC0151l;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import me.zhanghai.android.materialprogressbar.C3681R;
import p151l.AbstractC3422d;
import p151l.AbstractC3424f;
import p163m0.AbstractC3549b;
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
public class C0202c extends AbstractC0126a {

    /* renamed from: j */
    public C0206d f843j;

    /* renamed from: k */
    public Drawable f844k;

    /* renamed from: l */
    public boolean f845l;

    /* renamed from: m */
    public boolean f846m;

    /* renamed from: n */
    public boolean f847n;

    /* renamed from: o */
    public int f848o;

    /* renamed from: p */
    public int f849p;

    /* renamed from: q */
    public int f850q;

    /* renamed from: r */
    public boolean f851r;

    /* renamed from: t */
    public C0208e f853t;

    /* renamed from: u */
    public C0203a f854u;

    /* renamed from: v */
    public RunnableC0205c f855v;

    /* renamed from: w */
    public C0204b f856w;

    /* renamed from: y */
    public int f858y;

    /* renamed from: s */
    public final SparseBooleanArray f852s = new SparseBooleanArray();

    /* renamed from: x */
    public final C0209f f857x = new C0209f();

    /* renamed from: androidx.appcompat.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$a.class */
    public class C0203a extends C0142h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13, types: [android.view.View] */
        public C0203a(Context context, SubMenuC0151l subMenuC0151l, View view) {
            super(context, subMenuC0151l, view, false, C3681R.attr.actionOverflowMenuStyle, 0);
            C0202c.this = r9;
            if (!subMenuC0151l.f520A.m8694g()) {
                C0206d c0206d = r9.f843j;
                this.f490f = c0206d == null ? (View) r9.f374h : c0206d;
            }
            m8684d(r9.f857x);
        }

        @Override // androidx.appcompat.view.menu.C0142h
        /* renamed from: c */
        public void mo8566c() {
            C0202c c0202c = C0202c.this;
            c0202c.f854u = null;
            c0202c.f858y = 0;
            super.mo8566c();
        }
    }

    /* renamed from: androidx.appcompat.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$b.class */
    public class C0204b extends ActionMenuItemView.AbstractC0125b {
        public C0204b() {
            C0202c.this = r4;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
    public class RunnableC0205c implements Runnable {

        /* renamed from: a */
        public C0208e f861a;

        public RunnableC0205c(C0208e c0208e) {
            C0202c.this = r4;
            this.f861a = c0208e;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0136e.AbstractC0137a abstractC0137a;
            C0136e c0136e = C0202c.this.f369c;
            if (c0136e != null && (abstractC0137a = c0136e.f431e) != null) {
                abstractC0137a.mo2423b(c0136e);
            }
            View view = (View) C0202c.this.f374h;
            if (view != null && view.getWindowToken() != null && this.f861a.m8682f()) {
                C0202c.this.f853t = this.f861a;
            }
            C0202c.this.f855v = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d.class */
    public class C0206d extends C0263p implements ActionMenuView.AbstractC0158a {

        /* renamed from: androidx.appcompat.widget.c$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d$a.class */
        public class C0207a extends AbstractView$OnTouchListenerC0246k0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0207a(View view, C0202c c0202c) {
                super(view);
                C0206d.this = r4;
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
            /* renamed from: b */
            public AbstractC3424f mo8419b() {
                C0208e c0208e = C0202c.this.f853t;
                if (c0208e == null) {
                    return null;
                }
                return c0208e.m8686a();
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
            /* renamed from: c */
            public boolean mo8418c() {
                C0202c.this.m8569p();
                return true;
            }

            @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
            /* renamed from: d */
            public boolean mo8473d() {
                C0202c c0202c = C0202c.this;
                if (c0202c.f855v != null) {
                    return false;
                }
                c0202c.m8572m();
                return true;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0206d(Context context) {
            super(context, null, C3681R.attr.actionOverflowButtonStyle);
            C0202c.this = r8;
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0220d1.m8549a(this, getContentDescription());
            setOnTouchListener(new C0207a(this, r8));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0158a
        /* renamed from: a */
        public boolean mo8568a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0158a
        /* renamed from: b */
        public boolean mo8567b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            C0202c.this.m8569p();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$e.class */
    public class C0208e extends C0142h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0208e(Context context, C0136e c0136e, View view, boolean z) {
            super(context, c0136e, view, z, C3681R.attr.actionOverflowMenuStyle, 0);
            C0202c.this = r9;
            this.f491g = 8388613;
            m8684d(r9.f857x);
        }

        @Override // androidx.appcompat.view.menu.C0142h
        /* renamed from: c */
        public void mo8566c() {
            C0136e c0136e = C0202c.this.f369c;
            if (c0136e != null) {
                c0136e.m8712c(true);
            }
            C0202c.this.f853t = null;
            super.mo8566c();
        }
    }

    /* renamed from: androidx.appcompat.widget.c$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$f.class */
    public class C0209f implements AbstractC0144i.AbstractC0145a {
        public C0209f() {
            C0202c.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: a */
        public void mo3279a(C0136e c0136e, boolean z) {
            if (c0136e instanceof SubMenuC0151l) {
                c0136e.mo8676k().m8712c(false);
            }
            AbstractC0144i.AbstractC0145a abstractC0145a = C0202c.this.f371e;
            if (abstractC0145a != null) {
                abstractC0145a.mo3279a(c0136e, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: b */
        public boolean mo3278b(C0136e c0136e) {
            C0202c c0202c = C0202c.this;
            boolean z = false;
            if (c0136e == c0202c.f369c) {
                return false;
            }
            c0202c.f858y = ((SubMenuC0151l) c0136e).f520A.f458a;
            AbstractC0144i.AbstractC0145a abstractC0145a = c0202c.f371e;
            if (abstractC0145a != null) {
                z = abstractC0145a.mo3278b(c0136e);
            }
            return z;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.appcompat.widget.c$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$g.class */
    public static class C0210g implements Parcelable {
        public static final Parcelable.Creator<C0210g> CREATOR = new C0211a();

        /* renamed from: a */
        public int f867a;

        /* renamed from: androidx.appcompat.widget.c$g$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$g$a.class */
        public class C0211a implements Parcelable.Creator<C0210g> {
            @Override // android.os.Parcelable.Creator
            public C0210g createFromParcel(Parcel parcel) {
                return new C0210g(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0210g[] newArray(int i) {
                return new C0210g[i];
            }
        }

        public C0210g() {
        }

        public C0210g(Parcel parcel) {
            this.f867a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f867a);
        }
    }

    public C0202c(Context context) {
        super(context, C3681R.layout.abc_action_menu_layout, C3681R.layout.abc_action_menu_item_layout);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: a */
    public void mo717a(C0136e c0136e, boolean z) {
        m8574b();
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f371e;
        if (abstractC0145a != null) {
            abstractC0145a.mo3279a(c0136e, z);
        }
    }

    /* renamed from: b */
    public boolean m8574b() {
        return m8572m() | m8571n();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: c */
    public void mo715c(Context context, C0136e c0136e) {
        this.f368b = context;
        LayoutInflater.from(context);
        this.f369c = c0136e;
        Resources resources = context.getResources();
        if (!this.f847n) {
            this.f846m = true;
        }
        int i = 2;
        this.f848o = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.f850q = i;
        int i4 = this.f848o;
        if (this.f846m) {
            if (this.f843j == null) {
                C0206d c0206d = new C0206d(this.f367a);
                this.f843j = c0206d;
                if (this.f845l) {
                    c0206d.setImageDrawable(this.f844k);
                    this.f844k = null;
                    this.f845l = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f843j.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.f843j.getMeasuredWidth();
        } else {
            this.f843j = null;
        }
        this.f849p = i4;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: d */
    public void mo714d(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof C0210g) && (i = ((C0210g) parcelable).f867a) > 0 && (findItem = this.f369c.findItem(i)) != null) {
            mo713e((SubMenuC0151l) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: e */
    public boolean mo713e(SubMenuC0151l subMenuC0151l) {
        SubMenuC0151l subMenuC0151l2;
        View view;
        boolean z;
        if (!subMenuC0151l.hasVisibleItems()) {
            return false;
        }
        SubMenuC0151l subMenuC0151l3 = subMenuC0151l;
        while (true) {
            subMenuC0151l2 = subMenuC0151l3;
            C0136e c0136e = subMenuC0151l2.f521z;
            if (c0136e == this.f369c) {
                break;
            }
            subMenuC0151l3 = (SubMenuC0151l) c0136e;
        }
        C0140g c0140g = subMenuC0151l2.f520A;
        ViewGroup viewGroup = (ViewGroup) this.f374h;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                view = null;
                if (i >= childCount) {
                    break;
                }
                view = viewGroup.getChildAt(i);
                if ((view instanceof AbstractC0146j.AbstractC0147a) && ((AbstractC0146j.AbstractC0147a) view).getItemData() == c0140g) {
                    break;
                }
                i++;
            }
        } else {
            view = null;
        }
        if (view == null) {
            return false;
        }
        this.f858y = subMenuC0151l.f520A.f458a;
        int size = subMenuC0151l.size();
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= size) {
                break;
            }
            MenuItem item = subMenuC0151l.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        C0203a c0203a = new C0203a(this.f368b, subMenuC0151l, view);
        this.f854u = c0203a;
        c0203a.f492h = z;
        AbstractC3422d abstractC3422d = c0203a.f494j;
        if (abstractC3422d != null) {
            abstractC3422d.mo2312p(z);
        }
        if (!this.f854u.m8682f()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f371e;
        if (abstractC0145a == null) {
            return true;
        }
        abstractC0145a.mo3278b(subMenuC0151l);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r6.m8695f() != false) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [androidx.appcompat.view.menu.j$a] */
    /* JADX WARN: Type inference failed for: r0v36, types: [androidx.appcompat.view.menu.j$a] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m8573f(androidx.appcompat.view.menu.C0140g r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            r0 = r6
            android.view.View r0 = r0.getActionView()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L15
            r0 = r6
            boolean r0 = r0.m8695f()
            if (r0 == 0) goto L75
        L15:
            r0 = r7
            boolean r0 = r0 instanceof androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
            if (r0 == 0) goto L24
            r0 = r7
            androidx.appcompat.view.menu.j$a r0 = (androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a) r0
            r7 = r0
            goto L35
        L24:
            r0 = r5
            android.view.LayoutInflater r0 = r0.f370d
            r1 = r5
            int r1 = r1.f373g
            r2 = r8
            r3 = 0
            android.view.View r0 = r0.inflate(r1, r2, r3)
            androidx.appcompat.view.menu.j$a r0 = (androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a) r0
            r7 = r0
        L35:
            r0 = r7
            r1 = r6
            r2 = 0
            r0.mo4552d(r1, r2)
            r0 = r5
            androidx.appcompat.view.menu.j r0 = r0.f374h
            androidx.appcompat.widget.ActionMenuView r0 = (androidx.appcompat.widget.ActionMenuView) r0
            r9 = r0
            r0 = r7
            androidx.appcompat.view.menu.ActionMenuItemView r0 = (androidx.appcompat.view.menu.ActionMenuItemView) r0
            r11 = r0
            r0 = r11
            r1 = r9
            r0.setItemInvoker(r1)
            r0 = r5
            androidx.appcompat.widget.c$b r0 = r0.f856w
            if (r0 != 0) goto L66
            r0 = r5
            androidx.appcompat.widget.c$b r1 = new androidx.appcompat.widget.c$b
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.f856w = r1
        L66:
            r0 = r11
            r1 = r5
            androidx.appcompat.widget.c$b r1 = r1.f856w
            r0.setPopupCallback(r1)
            r0 = r7
            android.view.View r0 = (android.view.View) r0
            r9 = r0
        L75:
            r0 = r6
            boolean r0 = r0.f456C
            if (r0 == 0) goto L80
            r0 = 8
            r10 = r0
        L80:
            r0 = r9
            r1 = r10
            r0.setVisibility(r1)
            r0 = r8
            androidx.appcompat.widget.ActionMenuView r0 = (androidx.appcompat.widget.ActionMenuView) r0
            r6 = r0
            r0 = r9
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            r7 = r0
            r0 = r6
            r1 = r7
            boolean r0 = r0.checkLayoutParams(r1)
            if (r0 != 0) goto La4
            r0 = r9
            r1 = r6
            r2 = r7
            androidx.appcompat.widget.ActionMenuView$c r1 = r1.mo8652j(r2)
            r0.setLayoutParams(r1)
        La4:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0202c.m8573f(androidx.appcompat.view.menu.g, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: g */
    public void mo711g(boolean z) {
        int i;
        boolean z2;
        ViewGroup viewGroup = (ViewGroup) this.f374h;
        if (viewGroup != null) {
            C0136e c0136e = this.f369c;
            if (c0136e != null) {
                c0136e.m8709i();
                ArrayList<C0140g> m8708l = this.f369c.m8708l();
                int size = m8708l.size();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    i = i4;
                    if (i2 >= size) {
                        break;
                    }
                    C0140g c0140g = m8708l.get(i2);
                    int i5 = i4;
                    if (c0140g.m8694g()) {
                        View childAt = viewGroup.getChildAt(i4);
                        C0140g itemData = childAt instanceof AbstractC0146j.AbstractC0147a ? ((AbstractC0146j.AbstractC0147a) childAt).getItemData() : null;
                        View m8573f = m8573f(c0140g, childAt, viewGroup);
                        if (c0140g != itemData) {
                            m8573f.setPressed(false);
                            m8573f.jumpDrawablesToCurrentState();
                        }
                        if (m8573f != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) m8573f.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(m8573f);
                            }
                            ((ViewGroup) this.f374h).addView(m8573f, i4);
                        }
                        i5 = i4 + 1;
                    }
                    i2++;
                    i3 = i5;
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.f843j) {
                    z2 = false;
                } else {
                    viewGroup.removeViewAt(i);
                    z2 = true;
                }
                if (!z2) {
                    i++;
                }
            }
        }
        ((View) this.f374h).requestLayout();
        C0136e c0136e2 = this.f369c;
        if (c0136e2 != null) {
            c0136e2.m8709i();
            ArrayList<C0140g> arrayList = c0136e2.f435i;
            int size2 = arrayList.size();
            for (int i6 = 0; i6 < size2; i6++) {
                AbstractC3549b abstractC3549b = arrayList.get(i6).f454A;
            }
        }
        C0136e c0136e3 = this.f369c;
        ArrayList<C0140g> arrayList2 = null;
        if (c0136e3 != null) {
            c0136e3.m8709i();
            arrayList2 = c0136e3.f436j;
        }
        boolean z3 = false;
        if (this.f846m) {
            z3 = false;
            if (arrayList2 != null) {
                int size3 = arrayList2.size();
                if (size3 == 1) {
                    z3 = !arrayList2.get(0).f456C;
                } else {
                    z3 = false;
                    if (size3 > 0) {
                        z3 = true;
                    }
                }
            }
        }
        if (z3) {
            if (this.f843j == null) {
                this.f843j = new C0206d(this.f367a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f843j.getParent();
            if (viewGroup3 != this.f374h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f843j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f374h;
                C0206d c0206d = this.f843j;
                ActionMenuView.C0160c mo8654h = actionMenuView.mo8654h();
                mo8654h.f588a = true;
                actionMenuView.addView(c0206d, mo8654h);
            }
        } else {
            C0206d c0206d2 = this.f843j;
            if (c0206d2 != null) {
                ViewParent parent = c0206d2.getParent();
                AbstractC0146j abstractC0146j = this.f374h;
                if (parent == abstractC0146j) {
                    ((ViewGroup) abstractC0146j).removeView(this.f843j);
                }
            }
        }
        ((ActionMenuView) this.f374h).setOverflowReserved(this.f846m);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cd, code lost:
        if ((r14 + r15) > r8) goto L36;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo710h() {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0202c.mo710h():boolean");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: i */
    public Parcelable mo709i() {
        C0210g c0210g = new C0210g();
        c0210g.f867a = this.f858y;
        return c0210g;
    }

    /* renamed from: m */
    public boolean m8572m() {
        AbstractC0146j abstractC0146j;
        RunnableC0205c runnableC0205c = this.f855v;
        if (runnableC0205c != null && (abstractC0146j = this.f374h) != null) {
            ((View) abstractC0146j).removeCallbacks(runnableC0205c);
            this.f855v = null;
            return true;
        }
        C0208e c0208e = this.f853t;
        if (c0208e == null) {
            return false;
        }
        if (!c0208e.m8685b()) {
            return true;
        }
        c0208e.f494j.dismiss();
        return true;
    }

    /* renamed from: n */
    public boolean m8571n() {
        C0203a c0203a = this.f854u;
        if (c0203a != null) {
            if (!c0203a.m8685b()) {
                return true;
            }
            c0203a.f494j.dismiss();
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public boolean m8570o() {
        C0208e c0208e = this.f853t;
        return c0208e != null && c0208e.m8685b();
    }

    /* renamed from: p */
    public boolean m8569p() {
        C0136e c0136e;
        if (!this.f846m || m8570o() || (c0136e = this.f369c) == null || this.f374h == null || this.f855v != null) {
            return false;
        }
        c0136e.m8709i();
        if (c0136e.f436j.isEmpty()) {
            return false;
        }
        RunnableC0205c runnableC0205c = new RunnableC0205c(new C0208e(this.f368b, this.f369c, this.f843j, true));
        this.f855v = runnableC0205c;
        ((View) this.f374h).post(runnableC0205c);
        return true;
    }
}
