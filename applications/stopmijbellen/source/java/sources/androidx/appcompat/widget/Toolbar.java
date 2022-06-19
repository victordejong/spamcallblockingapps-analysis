package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.view.menu.SubMenuC0151l;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.AbstractC2635a;
import p097g.C2788a;
import p117h8.C3035k;
import p140k.AbstractC3297b;
import p140k.C3302f;
import p163m0.AbstractC3574g;
import p163m0.C3573f;
import p163m0.C3589v;
import p163m0.C3611y;
import p216r0.AbstractC4178a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    public ColorStateList f750A;

    /* renamed from: B */
    public boolean f751B;

    /* renamed from: C */
    public boolean f752C;

    /* renamed from: D */
    public final ArrayList<View> f753D;

    /* renamed from: E */
    public final ArrayList<View> f754E;

    /* renamed from: F */
    public final int[] f755F;

    /* renamed from: G */
    public final C3573f f756G;

    /* renamed from: H */
    public ArrayList<MenuItem> f757H;

    /* renamed from: I */
    public AbstractC0190f f758I;

    /* renamed from: J */
    public final ActionMenuView.AbstractC0162e f759J;

    /* renamed from: K */
    public C0213c1 f760K;

    /* renamed from: L */
    public C0202c f761L;

    /* renamed from: M */
    public C0188d f762M;

    /* renamed from: N */
    public AbstractC0144i.AbstractC0145a f763N;

    /* renamed from: O */
    public C0136e.AbstractC0137a f764O;

    /* renamed from: P */
    public boolean f765P;

    /* renamed from: R */
    public final Runnable f766R;

    /* renamed from: a */
    public ActionMenuView f767a;

    /* renamed from: b */
    public TextView f768b;

    /* renamed from: c */
    public TextView f769c;

    /* renamed from: d */
    public ImageButton f770d;

    /* renamed from: e */
    public ImageView f771e;

    /* renamed from: f */
    public Drawable f772f;

    /* renamed from: g */
    public CharSequence f773g;

    /* renamed from: h */
    public ImageButton f774h;

    /* renamed from: i */
    public View f775i;

    /* renamed from: j */
    public Context f776j;

    /* renamed from: k */
    public int f777k;

    /* renamed from: l */
    public int f778l;

    /* renamed from: m */
    public int f779m;

    /* renamed from: n */
    public int f780n;

    /* renamed from: o */
    public int f781o;

    /* renamed from: p */
    public int f782p;

    /* renamed from: q */
    public int f783q;

    /* renamed from: r */
    public int f784r;

    /* renamed from: s */
    public int f785s;

    /* renamed from: t */
    public C0275r0 f786t;

    /* renamed from: u */
    public int f787u;

    /* renamed from: v */
    public int f788v;

    /* renamed from: w */
    public int f789w;

    /* renamed from: x */
    public CharSequence f790x;

    /* renamed from: y */
    public CharSequence f791y;

    /* renamed from: z */
    public ColorStateList f792z;

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0185a implements ActionMenuView.AbstractC0162e {
        public C0185a() {
            Toolbar.this = r4;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0186b implements Runnable {
        public RunnableC0186b() {
            Toolbar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m8595w();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0187c implements View.OnClickListener {
        public View$OnClickListenerC0187c() {
            Toolbar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0188d c0188d = Toolbar.this.f762M;
            C0140g c0140g = c0188d == null ? null : c0188d.f797b;
            if (c0140g != null) {
                c0140g.collapseActionView();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$d.class */
    public class C0188d implements AbstractC0144i {

        /* renamed from: a */
        public C0136e f796a;

        /* renamed from: b */
        public C0140g f797b;

        public C0188d() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: a */
        public void mo717a(C0136e c0136e, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: c */
        public void mo715c(Context context, C0136e c0136e) {
            C0140g c0140g;
            C0136e c0136e2 = this.f796a;
            if (c0136e2 != null && (c0140g = this.f797b) != null) {
                c0136e2.mo8680d(c0140g);
            }
            this.f796a = c0136e;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: d */
        public void mo714d(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: e */
        public boolean mo713e(SubMenuC0151l subMenuC0151l) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: g */
        public void mo711g(boolean z) {
            if (this.f797b != null) {
                C0136e c0136e = this.f796a;
                boolean z2 = false;
                if (c0136e != null) {
                    int size = c0136e.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f796a.getItem(i) == this.f797b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (z2) {
                    return;
                }
                mo708j(this.f796a, this.f797b);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: h */
        public boolean mo710h() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: i */
        public Parcelable mo709i() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: j */
        public boolean mo708j(C0136e c0136e, C0140g c0140g) {
            View view = Toolbar.this.f775i;
            if (view instanceof AbstractC3297b) {
                ((AbstractC3297b) view).mo2316e();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f775i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f774h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f775i = null;
            int size = toolbar3.f754E.size();
            while (true) {
                size--;
                if (size < 0) {
                    toolbar3.f754E.clear();
                    this.f797b = null;
                    Toolbar.this.requestLayout();
                    c0140g.f456C = false;
                    c0140g.f471n.mo696p(false);
                    return true;
                }
                toolbar3.addView(toolbar3.f754E.get(size));
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i
        /* renamed from: k */
        public boolean mo707k(C0136e c0136e, C0140g c0140g) {
            Toolbar.this.m8615c();
            ViewParent parent = Toolbar.this.f774h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f774h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f774h);
            }
            Toolbar.this.f775i = c0140g.getActionView();
            this.f797b = c0140g;
            ViewParent parent2 = Toolbar.this.f775i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f775i);
                }
                C0189e generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f9069a = 8388611 | (toolbar4.f780n & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle);
                generateDefaultLayoutParams.f799b = 2;
                toolbar4.f775i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f775i);
            }
            Toolbar toolbar6 = Toolbar.this;
            int childCount = toolbar6.getChildCount();
            while (true) {
                int i = childCount - 1;
                if (i < 0) {
                    break;
                }
                View childAt = toolbar6.getChildAt(i);
                childCount = i;
                if (((C0189e) childAt.getLayoutParams()).f799b != 2) {
                    childCount = i;
                    if (childAt != toolbar6.f767a) {
                        toolbar6.removeViewAt(i);
                        toolbar6.f754E.add(childAt);
                        childCount = i;
                    }
                }
            }
            Toolbar.this.requestLayout();
            c0140g.f456C = true;
            c0140g.f471n.mo696p(false);
            View view = Toolbar.this.f775i;
            if (view instanceof AbstractC3297b) {
                ((AbstractC3297b) view).mo2317c();
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$e.class */
    public static class C0189e extends AbstractC2635a.C2636a {

        /* renamed from: b */
        public int f799b;

        public C0189e(int i, int i2) {
            super(i, i2);
            this.f799b = 0;
            this.f9069a = 8388627;
        }

        public C0189e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f799b = 0;
        }

        public C0189e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f799b = 0;
        }

        public C0189e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f799b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public C0189e(C0189e c0189e) {
            super((AbstractC2635a.C2636a) c0189e);
            this.f799b = 0;
            this.f799b = c0189e.f799b;
        }

        public C0189e(AbstractC2635a.C2636a c2636a) {
            super(c2636a);
            this.f799b = 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$f.class */
    public interface AbstractC0190f {
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$g.class */
    public static class C0191g extends AbstractC4178a {
        public static final Parcelable.Creator<C0191g> CREATOR = new C0192a();

        /* renamed from: c */
        public int f800c;

        /* renamed from: d */
        public boolean f801d;

        /* renamed from: androidx.appcompat.widget.Toolbar$g$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$g$a.class */
        public class C0192a implements Parcelable.ClassLoaderCreator<C0191g> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0191g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0191g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0191g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0191g[i];
            }
        }

        public C0191g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f800c = parcel.readInt();
            this.f801d = parcel.readInt() != 0;
        }

        public C0191g(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f800c);
            parcel.writeInt(this.f801d ? 1 : 0);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f789w = 8388627;
        this.f753D = new ArrayList<>();
        this.f754E = new ArrayList<>();
        this.f755F = new int[2];
        this.f756G = new C3573f(new RunnableC0198a1(this, 0));
        this.f757H = new ArrayList<>();
        this.f759J = new C0185a();
        this.f766R = new RunnableC0186b();
        Context context2 = getContext();
        int[] iArr = C3035k.f10239z;
        C0303z0 m8383q = C0303z0.m8383q(context2, attributeSet, iArr, i, 0);
        C3589v.m2104t(this, context, iArr, attributeSet, m8383q.f1164b, i, 0);
        this.f778l = m8383q.m8388l(28, 0);
        this.f779m = m8383q.m8388l(19, 0);
        this.f789w = m8383q.f1164b.getInteger(0, this.f789w);
        this.f780n = m8383q.f1164b.getInteger(2, 48);
        int m8395e = m8383q.m8395e(22, 0);
        int m8395e2 = m8383q.m8385o(27) ? m8383q.m8395e(27, m8395e) : m8395e;
        this.f785s = m8395e2;
        this.f784r = m8395e2;
        this.f783q = m8395e2;
        this.f782p = m8395e2;
        int m8395e3 = m8383q.m8395e(25, -1);
        if (m8395e3 >= 0) {
            this.f782p = m8395e3;
        }
        int m8395e4 = m8383q.m8395e(24, -1);
        if (m8395e4 >= 0) {
            this.f783q = m8395e4;
        }
        int m8395e5 = m8383q.m8395e(26, -1);
        if (m8395e5 >= 0) {
            this.f784r = m8395e5;
        }
        int m8395e6 = m8383q.m8395e(23, -1);
        if (m8395e6 >= 0) {
            this.f785s = m8395e6;
        }
        this.f781o = m8383q.m8394f(13, -1);
        int m8395e7 = m8383q.m8395e(9, Integer.MIN_VALUE);
        int m8395e8 = m8383q.m8395e(5, Integer.MIN_VALUE);
        int m8394f = m8383q.m8394f(7, 0);
        int m8394f2 = m8383q.m8394f(8, 0);
        m8614d();
        C0275r0 c0275r0 = this.f786t;
        c0275r0.f1086h = false;
        if (m8394f != Integer.MIN_VALUE) {
            c0275r0.f1083e = m8394f;
            c0275r0.f1079a = m8394f;
        }
        if (m8394f2 != Integer.MIN_VALUE) {
            c0275r0.f1084f = m8394f2;
            c0275r0.f1080b = m8394f2;
        }
        if (m8395e7 != Integer.MIN_VALUE || m8395e8 != Integer.MIN_VALUE) {
            c0275r0.m8435a(m8395e7, m8395e8);
        }
        this.f787u = m8383q.m8395e(10, Integer.MIN_VALUE);
        this.f788v = m8383q.m8395e(6, Integer.MIN_VALUE);
        this.f772f = m8383q.m8393g(4);
        this.f773g = m8383q.m8386n(3);
        CharSequence m8386n = m8383q.m8386n(21);
        if (!TextUtils.isEmpty(m8386n)) {
            setTitle(m8386n);
        }
        CharSequence m8386n2 = m8383q.m8386n(18);
        if (!TextUtils.isEmpty(m8386n2)) {
            setSubtitle(m8386n2);
        }
        this.f776j = getContext();
        setPopupTheme(m8383q.m8388l(17, 0));
        Drawable m8393g = m8383q.m8393g(16);
        if (m8393g != null) {
            setNavigationIcon(m8393g);
        }
        CharSequence m8386n3 = m8383q.m8386n(15);
        if (!TextUtils.isEmpty(m8386n3)) {
            setNavigationContentDescription(m8386n3);
        }
        Drawable m8393g2 = m8383q.m8393g(11);
        if (m8393g2 != null) {
            setLogo(m8393g2);
        }
        CharSequence m8386n4 = m8383q.m8386n(12);
        if (!TextUtils.isEmpty(m8386n4)) {
            setLogoDescription(m8386n4);
        }
        if (m8383q.m8385o(29)) {
            setTitleTextColor(m8383q.m8397c(29));
        }
        if (m8383q.m8385o(20)) {
            setSubtitleTextColor(m8383q.m8397c(20));
        }
        if (m8383q.m8385o(14)) {
            getMenuInflater().inflate(m8383q.m8388l(14, 0), getMenu());
        }
        m8383q.f1164b.recycle();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new C3302f(getContext());
    }

    /* renamed from: a */
    public final void m8617a(List<View> list, int i) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z = C3589v.C3594e.m2071d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0189e c0189e = (C0189e) childAt.getLayoutParams();
                if (c0189e.f799b == 0 && m8596v(childAt) && m8608j(c0189e.f9069a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0189e c0189e2 = (C0189e) childAt2.getLayoutParams();
            if (c0189e2.f799b == 0 && m8596v(childAt2) && m8608j(c0189e2.f9069a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: b */
    public final void m8616b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0189e generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (C0189e) layoutParams;
        generateDefaultLayoutParams.f799b = 1;
        if (!z || this.f775i == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f754E.add(view);
    }

    /* renamed from: c */
    public void m8615c() {
        if (this.f774h == null) {
            C0258n c0258n = new C0258n(getContext(), null, C3681R.attr.toolbarNavigationButtonStyle);
            this.f774h = c0258n;
            c0258n.setImageDrawable(this.f772f);
            this.f774h.setContentDescription(this.f773g);
            C0189e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f9069a = 8388611 | (this.f780n & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle);
            generateDefaultLayoutParams.f799b = 2;
            this.f774h.setLayoutParams(generateDefaultLayoutParams);
            this.f774h.setOnClickListener(new View$OnClickListenerC0187c());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0189e);
    }

    /* renamed from: d */
    public final void m8614d() {
        if (this.f786t == null) {
            this.f786t = new C0275r0();
        }
    }

    /* renamed from: e */
    public final void m8613e() {
        m8612f();
        ActionMenuView actionMenuView = this.f767a;
        if (actionMenuView.f577p == null) {
            C0136e c0136e = (C0136e) actionMenuView.getMenu();
            if (this.f762M == null) {
                this.f762M = new C0188d();
            }
            this.f767a.setExpandedActionViewsExclusive(true);
            c0136e.m8713b(this.f762M, this.f776j);
        }
    }

    /* renamed from: f */
    public final void m8612f() {
        if (this.f767a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f767a = actionMenuView;
            actionMenuView.setPopupTheme(this.f777k);
            this.f767a.setOnMenuItemClickListener(this.f759J);
            ActionMenuView actionMenuView2 = this.f767a;
            AbstractC0144i.AbstractC0145a abstractC0145a = this.f763N;
            C0136e.AbstractC0137a abstractC0137a = this.f764O;
            actionMenuView2.f582u = abstractC0145a;
            actionMenuView2.f583v = abstractC0137a;
            C0189e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f9069a = 8388613 | (this.f780n & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle);
            this.f767a.setLayoutParams(generateDefaultLayoutParams);
            m8616b(this.f767a, false);
        }
    }

    /* renamed from: g */
    public final void m8611g() {
        if (this.f770d == null) {
            this.f770d = new C0258n(getContext(), null, C3681R.attr.toolbarNavigationButtonStyle);
            C0189e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f9069a = 8388611 | (this.f780n & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle);
            this.f770d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0189e(getContext(), attributeSet);
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f774h;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f774h;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0275r0 c0275r0 = this.f786t;
        return c0275r0 != null ? c0275r0.f1085g ? c0275r0.f1079a : c0275r0.f1080b : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f788v;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0275r0 c0275r0 = this.f786t;
        return c0275r0 != null ? c0275r0.f1079a : 0;
    }

    public int getContentInsetRight() {
        C0275r0 c0275r0 = this.f786t;
        return c0275r0 != null ? c0275r0.f1080b : 0;
    }

    public int getContentInsetStart() {
        C0275r0 c0275r0 = this.f786t;
        return c0275r0 != null ? c0275r0.f1085g ? c0275r0.f1080b : c0275r0.f1079a : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f787u;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        C0136e c0136e;
        ActionMenuView actionMenuView = this.f767a;
        return actionMenuView != null && (c0136e = actionMenuView.f577p) != null && c0136e.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f788v, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return C3589v.C3594e.m2071d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return C3589v.C3594e.m2071d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f787u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f771e;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f771e;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m8613e();
        return this.f767a.getMenu();
    }

    public View getNavButtonView() {
        return this.f770d;
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f770d;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f770d;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public C0202c getOuterActionMenuPresenter() {
        return this.f761L;
    }

    public Drawable getOverflowIcon() {
        m8613e();
        return this.f767a.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f776j;
    }

    public int getPopupTheme() {
        return this.f777k;
    }

    public CharSequence getSubtitle() {
        return this.f791y;
    }

    public final TextView getSubtitleTextView() {
        return this.f769c;
    }

    public CharSequence getTitle() {
        return this.f790x;
    }

    public int getTitleMarginBottom() {
        return this.f785s;
    }

    public int getTitleMarginEnd() {
        return this.f783q;
    }

    public int getTitleMarginStart() {
        return this.f782p;
    }

    public int getTitleMarginTop() {
        return this.f784r;
    }

    final TextView getTitleTextView() {
        return this.f768b;
    }

    public AbstractC0230g0 getWrapper() {
        if (this.f760K == null) {
            this.f760K = new C0213c1(this, true);
        }
        return this.f760K;
    }

    /* renamed from: h */
    public C0189e generateDefaultLayoutParams() {
        return new C0189e(-2, -2);
    }

    /* renamed from: i */
    public C0189e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0189e ? new C0189e((C0189e) layoutParams) : layoutParams instanceof AbstractC2635a.C2636a ? new C0189e((AbstractC2635a.C2636a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0189e((ViewGroup.MarginLayoutParams) layoutParams) : new C0189e(layoutParams);
    }

    /* renamed from: j */
    public final int m8608j(int i) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2071d = C3589v.C3594e.m2071d(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i, m2071d) & 7;
        if (absoluteGravity != 1) {
            int i2 = 3;
            if (absoluteGravity != 3 && absoluteGravity != 5) {
                if (m2071d == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return absoluteGravity;
    }

    /* renamed from: k */
    public final int m8607k(View view, int i) {
        C0189e c0189e = (C0189e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = c0189e.f9069a & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        int i4 = i3;
        if (i3 != 16) {
            i4 = i3;
            if (i3 != 48) {
                i4 = i3;
                if (i3 != 80) {
                    i4 = this.f789w & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
                }
            }
        }
        if (i4 != 48) {
            if (i4 == 80) {
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0189e).bottomMargin) - i2;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            int i6 = ((ViewGroup.MarginLayoutParams) c0189e).topMargin;
            if (i5 >= i6) {
                int i7 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
                int i8 = ((ViewGroup.MarginLayoutParams) c0189e).bottomMargin;
                i6 = i5;
                if (i7 < i8) {
                    i6 = Math.max(0, i5 - (i8 - i7));
                }
            }
            return paddingTop + i6;
        }
        return getPaddingTop() - i2;
    }

    /* renamed from: l */
    public final int m8606l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    /* renamed from: m */
    public final int m8605m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: n */
    public void m8604n(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: o */
    public void m8603o() {
        Iterator<MenuItem> it2 = this.f757H.iterator();
        while (it2.hasNext()) {
            getMenu().removeItem(it2.next().getItemId());
        }
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        C3573f c3573f = this.f756G;
        Menu menu = getMenu();
        MenuInflater menuInflater = getMenuInflater();
        Iterator<AbstractC3574g> it3 = c3573f.f11768a.iterator();
        while (it3.hasNext()) {
            it3.next().m2139b(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f757H = currentMenuItems2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f766R);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f752C = false;
        }
        if (!this.f752C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f752C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f752C = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0545 A[LOOP:0: B:120:0x053f->B:122:0x0545, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x057a A[LOOP:1: B:124:0x0574->B:126:0x057a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x05c7 A[LOOP:2: B:128:0x05c0->B:130:0x05c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0671 A[LOOP:3: B:138:0x066b->B:140:0x0671, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x036e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x042a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 1077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof C0191g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0191g c0191g = (C0191g) parcelable;
        super.onRestoreInstanceState(c0191g.f13167a);
        ActionMenuView actionMenuView = this.f767a;
        C0136e c0136e = actionMenuView != null ? actionMenuView.f577p : null;
        int i = c0191g.f800c;
        if (i != 0 && this.f762M != null && c0136e != null && (findItem = c0136e.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (!c0191g.f801d) {
            return;
        }
        removeCallbacks(this.f766R);
        post(this.f766R);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        m8614d();
        C0275r0 c0275r0 = this.f786t;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z == c0275r0.f1085g) {
            return;
        }
        c0275r0.f1085g = z;
        if (!c0275r0.f1086h) {
            c0275r0.f1079a = c0275r0.f1083e;
            c0275r0.f1080b = c0275r0.f1084f;
        } else if (z) {
            int i2 = c0275r0.f1082d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = c0275r0.f1083e;
            }
            c0275r0.f1079a = i2;
            int i3 = c0275r0.f1081c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = c0275r0.f1084f;
            }
            c0275r0.f1080b = i3;
        } else {
            int i4 = c0275r0.f1081c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = c0275r0.f1083e;
            }
            c0275r0.f1079a = i4;
            int i5 = c0275r0.f1082d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = c0275r0.f1084f;
            }
            c0275r0.f1080b = i5;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0140g c0140g;
        C0191g c0191g = new C0191g(super.onSaveInstanceState());
        C0188d c0188d = this.f762M;
        if (c0188d != null && (c0140g = c0188d.f797b) != null) {
            c0191g.f800c = c0140g.f458a;
        }
        c0191g.f801d = m8601q();
        return c0191g;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f751B = false;
        }
        if (!this.f751B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f751B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f751B = false;
            return true;
        }
        return true;
    }

    /* renamed from: p */
    public final boolean m8602p(View view) {
        return view.getParent() == this || this.f754E.contains(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
        if ((r0 != null && r0.m8570o()) != false) goto L13;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8601q() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.ActionMenuView r0 = r0.f767a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            androidx.appcompat.widget.c r0 = r0.f581t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L20
            r0 = r3
            boolean r0 = r0.m8570o()
            if (r0 == 0) goto L20
            r0 = 1
            r5 = r0
            goto L22
        L20:
            r0 = 0
            r5 = r0
        L22:
            r0 = r5
            if (r0 == 0) goto L29
            goto L2b
        L29:
            r0 = 0
            r4 = r0
        L2b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.m8601q():boolean");
    }

    /* renamed from: r */
    public final int m8600r(View view, int i, int[] iArr, int i2) {
        C0189e c0189e = (C0189e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0189e).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m8607k = m8607k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m8607k, max + measuredWidth, view.getMeasuredHeight() + m8607k);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c0189e).rightMargin + max;
    }

    /* renamed from: s */
    public final int m8599s(View view, int i, int[] iArr, int i2) {
        C0189e c0189e = (C0189e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0189e).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m8607k = m8607k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m8607k, max, view.getMeasuredHeight() + m8607k);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0189e).leftMargin);
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m8615c();
        }
        ImageButton imageButton = this.f774h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C2788a.m3015b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m8615c();
            this.f774h.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f774h;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f772f);
    }

    public void setCollapsible(boolean z) {
        this.f765P = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f788v) {
            this.f788v = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f787u) {
            this.f787u = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setLogo(int i) {
        setLogo(C2788a.m3015b(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f771e == null) {
                this.f771e = new C0263p(getContext(), null, 0);
            }
            if (!m8602p(this.f771e)) {
                m8616b(this.f771e, true);
            }
        } else {
            ImageView imageView = this.f771e;
            if (imageView != null && m8602p(imageView)) {
                removeView(this.f771e);
                this.f754E.remove(this.f771e);
            }
        }
        ImageView imageView2 = this.f771e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f771e == null) {
            this.f771e = new C0263p(getContext(), null, 0);
        }
        ImageView imageView = this.f771e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m8611g();
        }
        ImageButton imageButton = this.f770d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            C0220d1.m8549a(this.f770d, charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C2788a.m3015b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m8611g();
            if (!m8602p(this.f770d)) {
                m8616b(this.f770d, true);
            }
        } else {
            ImageButton imageButton = this.f770d;
            if (imageButton != null && m8602p(imageButton)) {
                removeView(this.f770d);
                this.f754E.remove(this.f770d);
            }
        }
        ImageButton imageButton2 = this.f770d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m8611g();
        this.f770d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0190f abstractC0190f) {
        this.f758I = abstractC0190f;
    }

    public void setOverflowIcon(Drawable drawable) {
        m8613e();
        this.f767a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f777k != i) {
            this.f777k = i;
            if (i == 0) {
                this.f776j = getContext();
            } else {
                this.f776j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f769c == null) {
                Context context = getContext();
                C0212c0 c0212c0 = new C0212c0(context, null);
                this.f769c = c0212c0;
                c0212c0.setSingleLine();
                this.f769c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f779m;
                if (i != 0) {
                    this.f769c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f750A;
                if (colorStateList != null) {
                    this.f769c.setTextColor(colorStateList);
                }
            }
            if (!m8602p(this.f769c)) {
                m8616b(this.f769c, true);
            }
        } else {
            TextView textView = this.f769c;
            if (textView != null && m8602p(textView)) {
                removeView(this.f769c);
                this.f754E.remove(this.f769c);
            }
        }
        TextView textView2 = this.f769c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f791y = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f750A = colorStateList;
        TextView textView = this.f769c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f768b == null) {
                Context context = getContext();
                C0212c0 c0212c0 = new C0212c0(context, null);
                this.f768b = c0212c0;
                c0212c0.setSingleLine();
                this.f768b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f778l;
                if (i != 0) {
                    this.f768b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f792z;
                if (colorStateList != null) {
                    this.f768b.setTextColor(colorStateList);
                }
            }
            if (!m8602p(this.f768b)) {
                m8616b(this.f768b, true);
            }
        } else {
            TextView textView = this.f768b;
            if (textView != null && m8602p(textView)) {
                removeView(this.f768b);
                this.f754E.remove(this.f768b);
            }
        }
        TextView textView2 = this.f768b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f790x = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f785s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f783q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f782p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f784r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f792z = colorStateList;
        TextView textView = this.f768b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: t */
    public final int m8598t(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: u */
    public final void m8597u(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i6 = childMeasureSpec2;
        if (mode != 1073741824) {
            i6 = childMeasureSpec2;
            if (i5 >= 0) {
                int i7 = i5;
                if (mode != 0) {
                    i7 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
                }
                i6 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i6);
    }

    /* renamed from: v */
    public final boolean m8596v(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
        if ((r0 != null && r0.m8569p()) != false) goto L13;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8595w() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.ActionMenuView r0 = r0.f767a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            androidx.appcompat.widget.c r0 = r0.f581t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L20
            r0 = r3
            boolean r0 = r0.m8569p()
            if (r0 == 0) goto L20
            r0 = 1
            r5 = r0
            goto L22
        L20:
            r0 = 0
            r5 = r0
        L22:
            r0 = r5
            if (r0 == 0) goto L29
            goto L2b
        L29:
            r0 = 0
            r4 = r0
        L2b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.m8595w():boolean");
    }
}
