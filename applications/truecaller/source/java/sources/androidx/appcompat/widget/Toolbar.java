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
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import n3.b.e.i.r;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1741e.AbstractC25452b;
import p1727n3.p1734b.p1741e.C25457f;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
import p1727n3.p1734b.p1743f.AbstractC25551v;
import p1727n3.p1734b.p1743f.C25523j0;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1734b.p1743f.C25546t0;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    public ColorStateList f441A;

    /* renamed from: B */
    public boolean f442B;

    /* renamed from: C */
    public boolean f443C;

    /* renamed from: D */
    public final ArrayList<View> f444D;

    /* renamed from: E */
    public final ArrayList<View> f445E;

    /* renamed from: J */
    public final int[] f446J;

    /* renamed from: K */
    public AbstractC0082f f447K;

    /* renamed from: L */
    public final ActionMenuView.AbstractC0050e f448L;

    /* renamed from: M */
    public C25546t0 f449M;

    /* renamed from: N */
    public ActionMenuPresenter f450N;

    /* renamed from: O */
    public C0080d f451O;

    /* renamed from: P */
    public AbstractC25483m.AbstractC25484a f452P;

    /* renamed from: Q */
    public C25469g.AbstractC25470a f453Q;

    /* renamed from: R */
    public boolean f454R;

    /* renamed from: S */
    public final Runnable f455S;

    /* renamed from: a */
    public ActionMenuView f456a;

    /* renamed from: b */
    public TextView f457b;

    /* renamed from: c */
    public TextView f458c;

    /* renamed from: d */
    public ImageButton f459d;

    /* renamed from: e */
    public ImageView f460e;

    /* renamed from: f */
    public Drawable f461f;

    /* renamed from: g */
    public CharSequence f462g;

    /* renamed from: h */
    public ImageButton f463h;

    /* renamed from: i */
    public View f464i;

    /* renamed from: j */
    public Context f465j;

    /* renamed from: k */
    public int f466k;

    /* renamed from: l */
    public int f467l;

    /* renamed from: m */
    public int f468m;

    /* renamed from: n */
    public int f469n;

    /* renamed from: o */
    public int f470o;

    /* renamed from: p */
    public int f471p;

    /* renamed from: q */
    public int f472q;

    /* renamed from: r */
    public int f473r;

    /* renamed from: s */
    public int f474s;

    /* renamed from: t */
    public C25523j0 f475t;

    /* renamed from: u */
    public int f476u;

    /* renamed from: v */
    public int f477v;

    /* renamed from: w */
    public int f478w;

    /* renamed from: x */
    public CharSequence f479x;

    /* renamed from: y */
    public CharSequence f480y;

    /* renamed from: z */
    public ColorStateList f481z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0076a();

        /* renamed from: c */
        public int f482c;

        /* renamed from: d */
        public boolean f483d;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState$a.class */
        public class C0076a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f482c = parcel.readInt();
            this.f483d = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f713a, i);
            parcel.writeInt(this.f482c);
            parcel.writeInt(this.f483d ? 1 : 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0077a implements ActionMenuView.AbstractC0050e {
        public C0077a() {
            Toolbar.this = r4;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0078b implements Runnable {
        public RunnableC0078b() {
            Toolbar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m43071v();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0079c implements View.OnClickListener {
        public View$OnClickListenerC0079c() {
            Toolbar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0080d c0080d = Toolbar.this.f451O;
            C25473i c25473i = c0080d == null ? null : c0080d.f488b;
            if (c25473i != null) {
                c25473i.collapseActionView();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$d.class */
    public class C0080d implements AbstractC25483m {

        /* renamed from: a */
        public C25469g f487a;

        /* renamed from: b */
        public C25473i f488b;

        public C0080d() {
            Toolbar.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: a */
        public void mo3423a(C25469g c25469g, boolean z) {
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: b */
        public boolean mo3422b(C25469g c25469g, C25473i c25473i) {
            Toolbar.this.m43090c();
            ViewParent parent = Toolbar.this.f463h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f463h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f463h);
            }
            Toolbar.this.f464i = c25473i.getActionView();
            this.f488b = c25473i;
            ViewParent parent2 = Toolbar.this.f464i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f464i);
                }
                C0081e generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f70833a = 8388611 | (toolbar4.f469n & 112);
                generateDefaultLayoutParams.f490b = 2;
                toolbar4.f464i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f464i);
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
                if (((C0081e) childAt.getLayoutParams()).f490b != 2) {
                    childCount = i;
                    if (childAt != toolbar6.f456a) {
                        toolbar6.removeViewAt(i);
                        toolbar6.f445E.add(childAt);
                        childCount = i;
                    }
                }
            }
            Toolbar.this.requestLayout();
            c25473i.f71245C = true;
            c25473i.f71260n.m3467q(false);
            View view = Toolbar.this.f464i;
            if (view instanceof AbstractC25452b) {
                ((AbstractC25452b) view).mo3443c();
                return true;
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: c */
        public Parcelable mo3421c() {
            return null;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: d */
        public void mo3420d(boolean z) {
            if (this.f488b != null) {
                C25469g c25469g = this.f487a;
                boolean z2 = false;
                if (c25469g != null) {
                    int size = c25469g.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f487a.getItem(i) == this.f488b) {
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
                mo3418f(this.f487a, this.f488b);
            }
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: e */
        public boolean mo3419e() {
            return false;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: f */
        public boolean mo3418f(C25469g c25469g, C25473i c25473i) {
            View view = Toolbar.this.f464i;
            if (view instanceof AbstractC25452b) {
                ((AbstractC25452b) view).mo3444b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f464i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f463h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f464i = null;
            int size = toolbar3.f445E.size();
            while (true) {
                size--;
                if (size < 0) {
                    toolbar3.f445E.clear();
                    this.f488b = null;
                    Toolbar.this.requestLayout();
                    c25473i.f71245C = false;
                    c25473i.f71260n.m3467q(false);
                    return true;
                }
                toolbar3.addView(toolbar3.f445E.get(size));
            }
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: g */
        public void mo3417g(Context context, C25469g c25469g) {
            C25473i c25473i;
            C25469g c25469g2 = this.f487a;
            if (c25469g2 != null && (c25473i = this.f488b) != null) {
                c25469g2.m3480d(c25473i);
            }
            this.f487a = c25469g;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        public int getId() {
            return 0;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: j */
        public void mo3415j(Parcelable parcelable) {
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
        /* renamed from: k */
        public boolean mo3414k(r rVar) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$e.class */
    public static class C0081e extends AbstractC25393a.C25394a {

        /* renamed from: b */
        public int f490b;

        public C0081e(int i, int i2) {
            super(i, i2);
            this.f490b = 0;
            this.f70833a = 8388627;
        }

        public C0081e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f490b = 0;
        }

        public C0081e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f490b = 0;
        }

        public C0081e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f490b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public C0081e(C0081e c0081e) {
            super((AbstractC25393a.C25394a) c0081e);
            this.f490b = 0;
            this.f490b = c0081e.f490b;
        }

        public C0081e(AbstractC25393a.C25394a c25394a) {
            super(c25394a);
            this.f490b = 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$f.class */
    public interface AbstractC0082f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f478w = 8388627;
        this.f444D = new ArrayList<>();
        this.f445E = new ArrayList<>();
        this.f446J = new int[2];
        this.f448L = new C0077a();
        this.f455S = new RunnableC0078b();
        Context context2 = getContext();
        int[] iArr = C0032R.styleable.Toolbar;
        C25540r0 m3306q = C25540r0.m3306q(context2, attributeSet, iArr, i, 0);
        C26614s.m1565p(this, context, iArr, attributeSet, m3306q.f71466b, i, 0);
        this.f467l = m3306q.m3311l(C0032R.styleable.Toolbar_titleTextAppearance, 0);
        this.f468m = m3306q.m3311l(C0032R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f478w = m3306q.f71466b.getInteger(C0032R.styleable.Toolbar_android_gravity, this.f478w);
        this.f469n = m3306q.f71466b.getInteger(C0032R.styleable.Toolbar_buttonGravity, 48);
        int m3318e = m3306q.m3318e(C0032R.styleable.Toolbar_titleMargin, 0);
        int i2 = C0032R.styleable.Toolbar_titleMargins;
        int m3318e2 = m3306q.m3308o(i2) ? m3306q.m3318e(i2, m3318e) : m3318e;
        this.f474s = m3318e2;
        this.f473r = m3318e2;
        this.f472q = m3318e2;
        this.f471p = m3318e2;
        int m3318e3 = m3306q.m3318e(C0032R.styleable.Toolbar_titleMarginStart, -1);
        if (m3318e3 >= 0) {
            this.f471p = m3318e3;
        }
        int m3318e4 = m3306q.m3318e(C0032R.styleable.Toolbar_titleMarginEnd, -1);
        if (m3318e4 >= 0) {
            this.f472q = m3318e4;
        }
        int m3318e5 = m3306q.m3318e(C0032R.styleable.Toolbar_titleMarginTop, -1);
        if (m3318e5 >= 0) {
            this.f473r = m3318e5;
        }
        int m3318e6 = m3306q.m3318e(C0032R.styleable.Toolbar_titleMarginBottom, -1);
        if (m3318e6 >= 0) {
            this.f474s = m3318e6;
        }
        this.f470o = m3306q.m3317f(C0032R.styleable.Toolbar_maxButtonHeight, -1);
        int m3318e7 = m3306q.m3318e(C0032R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int m3318e8 = m3306q.m3318e(C0032R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int m3317f = m3306q.m3317f(C0032R.styleable.Toolbar_contentInsetLeft, 0);
        int m3317f2 = m3306q.m3317f(C0032R.styleable.Toolbar_contentInsetRight, 0);
        m43089d();
        C25523j0 c25523j0 = this.f475t;
        c25523j0.f71408h = false;
        if (m3317f != Integer.MIN_VALUE) {
            c25523j0.f71405e = m3317f;
            c25523j0.f71401a = m3317f;
        }
        if (m3317f2 != Integer.MIN_VALUE) {
            c25523j0.f71406f = m3317f2;
            c25523j0.f71402b = m3317f2;
        }
        if (m3318e7 != Integer.MIN_VALUE || m3318e8 != Integer.MIN_VALUE) {
            c25523j0.m3345a(m3318e7, m3318e8);
        }
        this.f476u = m3306q.m3318e(C0032R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f477v = m3306q.m3318e(C0032R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f461f = m3306q.m3316g(C0032R.styleable.Toolbar_collapseIcon);
        this.f462g = m3306q.m3309n(C0032R.styleable.Toolbar_collapseContentDescription);
        CharSequence m3309n = m3306q.m3309n(C0032R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(m3309n)) {
            setTitle(m3309n);
        }
        CharSequence m3309n2 = m3306q.m3309n(C0032R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m3309n2)) {
            setSubtitle(m3309n2);
        }
        this.f465j = getContext();
        setPopupTheme(m3306q.m3311l(C0032R.styleable.Toolbar_popupTheme, 0));
        Drawable m3316g = m3306q.m3316g(C0032R.styleable.Toolbar_navigationIcon);
        if (m3316g != null) {
            setNavigationIcon(m3316g);
        }
        CharSequence m3309n3 = m3306q.m3309n(C0032R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m3309n3)) {
            setNavigationContentDescription(m3309n3);
        }
        Drawable m3316g2 = m3306q.m3316g(C0032R.styleable.Toolbar_logo);
        if (m3316g2 != null) {
            setLogo(m3316g2);
        }
        CharSequence m3309n4 = m3306q.m3309n(C0032R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m3309n4)) {
            setLogoDescription(m3309n4);
        }
        int i3 = C0032R.styleable.Toolbar_titleTextColor;
        if (m3306q.m3308o(i3)) {
            setTitleTextColor(m3306q.m3320c(i3));
        }
        int i4 = C0032R.styleable.Toolbar_subtitleTextColor;
        if (m3306q.m3308o(i4)) {
            setSubtitleTextColor(m3306q.m3320c(i4));
        }
        int i5 = C0032R.styleable.Toolbar_menu;
        if (m3306q.m3308o(i5)) {
            m43079n(m3306q.m3311l(i5, 0));
        }
        m3306q.f71466b.recycle();
    }

    private MenuInflater getMenuInflater() {
        return new C25457f(getContext());
    }

    /* renamed from: a */
    public final void m43092a(List<View> list, int i) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0081e c0081e = (C0081e) childAt.getLayoutParams();
                if (c0081e.f490b == 0 && m43072u(childAt) && m43083j(c0081e.f70833a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0081e c0081e2 = (C0081e) childAt2.getLayoutParams();
            if (c0081e2.f490b == 0 && m43072u(childAt2) && m43083j(c0081e2.f70833a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: b */
    public final void m43091b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0081e generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (C0081e) layoutParams;
        generateDefaultLayoutParams.f490b = 1;
        if (!z || this.f464i == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f445E.add(view);
    }

    /* renamed from: c */
    public void m43090c() {
        if (this.f463h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C0032R.attr.toolbarNavigationButtonStyle);
            this.f463h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f461f);
            this.f463h.setContentDescription(this.f462g);
            C0081e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f70833a = 8388611 | (this.f469n & 112);
            generateDefaultLayoutParams.f490b = 2;
            this.f463h.setLayoutParams(generateDefaultLayoutParams);
            this.f463h.setOnClickListener(new View$OnClickListenerC0079c());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0081e);
    }

    /* renamed from: d */
    public final void m43089d() {
        if (this.f475t == null) {
            this.f475t = new C25523j0();
        }
    }

    /* renamed from: e */
    public final void m43088e() {
        m43087f();
        ActionMenuView actionMenuView = this.f456a;
        if (actionMenuView.f234p == null) {
            C25469g c25469g = (C25469g) actionMenuView.getMenu();
            if (this.f451O == null) {
                this.f451O = new C0080d();
            }
            this.f456a.setExpandedActionViewsExclusive(true);
            c25469g.m3482b(this.f451O, this.f465j);
        }
    }

    /* renamed from: f */
    public final void m43087f() {
        if (this.f456a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f456a = actionMenuView;
            actionMenuView.setPopupTheme(this.f466k);
            this.f456a.setOnMenuItemClickListener(this.f448L);
            ActionMenuView actionMenuView2 = this.f456a;
            AbstractC25483m.AbstractC25484a abstractC25484a = this.f452P;
            C25469g.AbstractC25470a abstractC25470a = this.f453Q;
            actionMenuView2.f239u = abstractC25484a;
            actionMenuView2.f240v = abstractC25470a;
            C0081e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f70833a = 8388613 | (this.f469n & 112);
            this.f456a.setLayoutParams(generateDefaultLayoutParams);
            m43091b(this.f456a, false);
        }
    }

    /* renamed from: g */
    public final void m43086g() {
        if (this.f459d == null) {
            this.f459d = new AppCompatImageButton(getContext(), null, C0032R.attr.toolbarNavigationButtonStyle);
            C0081e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f70833a = 8388611 | (this.f469n & 112);
            this.f459d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0081e(getContext(), attributeSet);
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f463h;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f463h;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C25523j0 c25523j0 = this.f475t;
        return c25523j0 != null ? c25523j0.f71407g ? c25523j0.f71401a : c25523j0.f71402b : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f477v;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C25523j0 c25523j0 = this.f475t;
        return c25523j0 != null ? c25523j0.f71401a : 0;
    }

    public int getContentInsetRight() {
        C25523j0 c25523j0 = this.f475t;
        return c25523j0 != null ? c25523j0.f71402b : 0;
    }

    public int getContentInsetStart() {
        C25523j0 c25523j0 = this.f475t;
        return c25523j0 != null ? c25523j0.f71407g ? c25523j0.f71402b : c25523j0.f71401a : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f476u;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        C25469g c25469g;
        ActionMenuView actionMenuView = this.f456a;
        return actionMenuView != null && (c25469g = actionMenuView.f234p) != null && c25469g.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f477v, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        AtomicInteger atomicInteger = C26614s.f74505a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        AtomicInteger atomicInteger = C26614s.f74505a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f476u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f460e;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f460e;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m43088e();
        return this.f456a.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f459d;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f459d;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f450N;
    }

    public Drawable getOverflowIcon() {
        m43088e();
        return this.f456a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f465j;
    }

    public int getPopupTheme() {
        return this.f466k;
    }

    public CharSequence getSubtitle() {
        return this.f480y;
    }

    public final TextView getSubtitleTextView() {
        return this.f458c;
    }

    public CharSequence getTitle() {
        return this.f479x;
    }

    public int getTitleMarginBottom() {
        return this.f474s;
    }

    public int getTitleMarginEnd() {
        return this.f472q;
    }

    public int getTitleMarginStart() {
        return this.f471p;
    }

    public int getTitleMarginTop() {
        return this.f473r;
    }

    public final TextView getTitleTextView() {
        return this.f457b;
    }

    public AbstractC25551v getWrapper() {
        if (this.f449M == null) {
            this.f449M = new C25546t0(this, true);
        }
        return this.f449M;
    }

    /* renamed from: h */
    public C0081e generateDefaultLayoutParams() {
        return new C0081e(-2, -2);
    }

    /* renamed from: i */
    public C0081e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0081e ? new C0081e((C0081e) layoutParams) : layoutParams instanceof AbstractC25393a.C25394a ? new C0081e((AbstractC25393a.C25394a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0081e((ViewGroup.MarginLayoutParams) layoutParams) : new C0081e(layoutParams);
    }

    /* renamed from: j */
    public final int m43083j(int i) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, layoutDirection) & 7;
        if (absoluteGravity != 1) {
            int i2 = 3;
            if (absoluteGravity != 3 && absoluteGravity != 5) {
                if (layoutDirection == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return absoluteGravity;
    }

    /* renamed from: k */
    public final int m43082k(View view, int i) {
        C0081e c0081e = (C0081e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = c0081e.f70833a & 112;
        int i4 = i3;
        if (i3 != 16) {
            i4 = i3;
            if (i3 != 48) {
                i4 = i3;
                if (i3 != 80) {
                    i4 = this.f478w & 112;
                }
            }
        }
        if (i4 != 48) {
            if (i4 == 80) {
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0081e).bottomMargin) - i2;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            int i6 = ((ViewGroup.MarginLayoutParams) c0081e).topMargin;
            if (i5 >= i6) {
                int i7 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
                int i8 = ((ViewGroup.MarginLayoutParams) c0081e).bottomMargin;
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
    public final int m43081l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    /* renamed from: m */
    public final int m43080m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: n */
    public void m43079n(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: o */
    public final boolean m43078o(View view) {
        return view.getParent() == this || this.f445E.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f455S);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f443C = false;
        }
        if (!this.f443C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f443C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f443C = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0545 A[LOOP:0: B:120:0x053f->B:122:0x0545, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x057a A[LOOP:1: B:124:0x0574->B:126:0x057a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x05c7 A[LOOP:2: B:128:0x05c0->B:130:0x05c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0675 A[LOOP:3: B:138:0x066f->B:140:0x0675, LOOP_END] */
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
            Method dump skipped, instructions count: 1688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        Object[] objArr;
        Object[] objArr2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Object[] objArr3;
        int[] iArr = this.f446J;
        if (C25558x0.m3244a(this)) {
            objArr2 = 1;
            objArr = null;
        } else {
            objArr = 1;
            objArr2 = null;
        }
        if (m43072u(this.f459d)) {
            m43073t(this.f459d, i, 0, i2, 0, this.f470o);
            i5 = m43081l(this.f459d) + this.f459d.getMeasuredWidth();
            i4 = Math.max(0, m43080m(this.f459d) + this.f459d.getMeasuredHeight());
            i3 = View.combineMeasuredStates(0, this.f459d.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i5;
        int i10 = i4;
        int i11 = i3;
        if (m43072u(this.f463h)) {
            m43073t(this.f463h, i, 0, i2, 0, this.f470o);
            i9 = m43081l(this.f463h) + this.f463h.getMeasuredWidth();
            i10 = Math.max(i4, m43080m(this.f463h) + this.f463h.getMeasuredHeight());
            i11 = View.combineMeasuredStates(i3, this.f463h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i9) + 0;
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i9);
        if (m43072u(this.f456a)) {
            m43073t(this.f456a, i, max, i2, 0, this.f470o);
            i6 = m43081l(this.f456a) + this.f456a.getMeasuredWidth();
            i10 = Math.max(i10, m43080m(this.f456a) + this.f456a.getMeasuredHeight());
            i11 = View.combineMeasuredStates(i11, this.f456a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = Math.max(currentContentInsetEnd, i6) + max;
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i6);
        int i12 = max2;
        int i13 = i10;
        int i14 = i11;
        if (m43072u(this.f464i)) {
            i12 = max2 + m43074s(this.f464i, i, max2, i2, 0, iArr);
            i13 = Math.max(i10, m43080m(this.f464i) + this.f464i.getMeasuredHeight());
            i14 = View.combineMeasuredStates(i11, this.f464i.getMeasuredState());
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = i14;
        if (m43072u(this.f460e)) {
            i15 = i12 + m43074s(this.f460e, i, i12, i2, 0, iArr);
            i16 = Math.max(i13, m43080m(this.f460e) + this.f460e.getMeasuredHeight());
            i17 = View.combineMeasuredStates(i14, this.f460e.getMeasuredState());
        }
        int childCount = getChildCount();
        int i18 = 0;
        int i19 = i16;
        while (i18 < childCount) {
            View childAt = getChildAt(i18);
            int i20 = i15;
            int i21 = i19;
            int i22 = i17;
            if (((C0081e) childAt.getLayoutParams()).f490b == 0) {
                if (!m43072u(childAt)) {
                    i20 = i15;
                    i21 = i19;
                    i22 = i17;
                } else {
                    i20 = i15 + m43074s(childAt, i, i15, i2, 0, iArr);
                    i21 = Math.max(i19, m43080m(childAt) + childAt.getMeasuredHeight());
                    i22 = View.combineMeasuredStates(i17, childAt.getMeasuredState());
                }
            }
            i18++;
            i15 = i20;
            i19 = i21;
            i17 = i22;
        }
        int i23 = this.f473r + this.f474s;
        int i24 = this.f471p + this.f472q;
        if (m43072u(this.f457b)) {
            m43074s(this.f457b, i, i15 + i24, i2, i23, iArr);
            int measuredWidth = this.f457b.getMeasuredWidth();
            int m43081l = m43081l(this.f457b);
            int measuredHeight = this.f457b.getMeasuredHeight();
            int m43080m = m43080m(this.f457b);
            i17 = View.combineMeasuredStates(i17, this.f457b.getMeasuredState());
            i8 = m43080m + measuredHeight;
            i7 = m43081l + measuredWidth;
        } else {
            i8 = 0;
            i7 = 0;
        }
        if (m43072u(this.f458c)) {
            i7 = Math.max(i7, m43074s(this.f458c, i, i15 + i24, i2, i8 + i23, iArr));
            i8 = m43080m(this.f458c) + this.f458c.getMeasuredHeight() + i8;
            i17 = View.combineMeasuredStates(i17, this.f458c.getMeasuredState());
        }
        int max3 = Math.max(i19, i8);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + paddingLeft + i15 + i7, getSuggestedMinimumWidth()), i, (-16777216) & i17);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom + paddingTop + max3, getSuggestedMinimumHeight()), i2, i17 << 16);
        if (this.f454R) {
            int childCount2 = getChildCount();
            int i25 = 0;
            while (true) {
                objArr3 = 1;
                if (i25 >= childCount2) {
                    break;
                }
                View childAt2 = getChildAt(i25);
                if (m43072u(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                    break;
                }
                i25++;
            }
        }
        objArr3 = null;
        setMeasuredDimension(resolveSizeAndState, objArr3 != null ? 0 : resolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f713a);
        ActionMenuView actionMenuView = this.f456a;
        C25469g c25469g = actionMenuView != null ? actionMenuView.f234p : null;
        int i = savedState.f482c;
        if (i != 0 && this.f451O != null && c25469g != null && (findItem = c25469g.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (!savedState.f483d) {
            return;
        }
        removeCallbacks(this.f455S);
        post(this.f455S);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        m43089d();
        C25523j0 c25523j0 = this.f475t;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z == c25523j0.f71407g) {
            return;
        }
        c25523j0.f71407g = z;
        if (!c25523j0.f71408h) {
            c25523j0.f71401a = c25523j0.f71405e;
            c25523j0.f71402b = c25523j0.f71406f;
        } else if (z) {
            int i2 = c25523j0.f71404d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = c25523j0.f71405e;
            }
            c25523j0.f71401a = i2;
            int i3 = c25523j0.f71403c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = c25523j0.f71406f;
            }
            c25523j0.f71402b = i3;
        } else {
            int i4 = c25523j0.f71403c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = c25523j0.f71405e;
            }
            c25523j0.f71401a = i4;
            int i5 = c25523j0.f71404d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = c25523j0.f71406f;
            }
            c25523j0.f71402b = i5;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C25473i c25473i;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0080d c0080d = this.f451O;
        if (c0080d != null && (c25473i = c0080d.f488b) != null) {
            savedState.f482c = c25473i.f71247a;
        }
        savedState.f483d = m43077p();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f442B = false;
        }
        if (!this.f442B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f442B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f442B = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
        if ((r0 != null && r0.o()) != false) goto L13;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m43077p() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.ActionMenuView r0 = r0.f456a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f238t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L20
            r0 = r3
            boolean r0 = r0.o()
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.m43077p():boolean");
    }

    /* renamed from: q */
    public final int m43076q(View view, int i, int[] iArr, int i2) {
        C0081e c0081e = (C0081e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0081e).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m43082k = m43082k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m43082k, max + measuredWidth, view.getMeasuredHeight() + m43082k);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c0081e).rightMargin + max;
    }

    /* renamed from: r */
    public final int m43075r(View view, int i, int[] iArr, int i2) {
        C0081e c0081e = (C0081e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0081e).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m43082k = m43082k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m43082k, max, view.getMeasuredHeight() + m43082k);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0081e).leftMargin);
    }

    /* renamed from: s */
    public final int m43074s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m43090c();
        }
        ImageButton imageButton = this.f463h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C25440a.m3540a(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m43090c();
            this.f463h.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f463h;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f461f);
    }

    public void setCollapsible(boolean z) {
        this.f454R = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f477v) {
            this.f477v = i2;
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
        if (i2 != this.f476u) {
            this.f476u = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setLogo(int i) {
        setLogo(C25440a.m3540a(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f460e == null) {
                this.f460e = new AppCompatImageView(getContext(), null);
            }
            if (!m43078o(this.f460e)) {
                m43091b(this.f460e, true);
            }
        } else {
            ImageView imageView = this.f460e;
            if (imageView != null && m43078o(imageView)) {
                removeView(this.f460e);
                this.f445E.remove(this.f460e);
            }
        }
        ImageView imageView2 = this.f460e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f460e == null) {
            this.f460e = new AppCompatImageView(getContext(), null);
        }
        ImageView imageView = this.f460e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m43086g();
        }
        ImageButton imageButton = this.f459d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C25440a.m3540a(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m43086g();
            if (!m43078o(this.f459d)) {
                m43091b(this.f459d, true);
            }
        } else {
            ImageButton imageButton = this.f459d;
            if (imageButton != null && m43078o(imageButton)) {
                removeView(this.f459d);
                this.f445E.remove(this.f459d);
            }
        }
        ImageButton imageButton2 = this.f459d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m43086g();
        this.f459d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0082f abstractC0082f) {
        this.f447K = abstractC0082f;
    }

    public void setOverflowIcon(Drawable drawable) {
        m43088e();
        this.f456a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f466k != i) {
            this.f466k = i;
            if (i == 0) {
                this.f465j = getContext();
            } else {
                this.f465j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f458c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.f458c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f458c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f468m;
                if (i != 0) {
                    this.f458c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f441A;
                if (colorStateList != null) {
                    this.f458c.setTextColor(colorStateList);
                }
            }
            if (!m43078o(this.f458c)) {
                m43091b(this.f458c, true);
            }
        } else {
            TextView textView = this.f458c;
            if (textView != null && m43078o(textView)) {
                removeView(this.f458c);
                this.f445E.remove(this.f458c);
            }
        }
        TextView textView2 = this.f458c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f480y = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f441A = colorStateList;
        TextView textView = this.f458c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f457b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.f457b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f457b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f467l;
                if (i != 0) {
                    this.f457b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f481z;
                if (colorStateList != null) {
                    this.f457b.setTextColor(colorStateList);
                }
            }
            if (!m43078o(this.f457b)) {
                m43091b(this.f457b, true);
            }
        } else {
            TextView textView = this.f457b;
            if (textView != null && m43078o(textView)) {
                removeView(this.f457b);
                this.f445E.remove(this.f457b);
            }
        }
        TextView textView2 = this.f457b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f479x = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f474s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f472q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f471p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f473r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f481z = colorStateList;
        TextView textView = this.f457b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: t */
    public final void m43073t(View view, int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: u */
    public final boolean m43072u(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
        if ((r0 != null && r0.p()) != false) goto L13;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m43071v() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.ActionMenuView r0 = r0.f456a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f238t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L20
            r0 = r3
            boolean r0 = r0.p()
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.m43071v():boolean");
    }
}
