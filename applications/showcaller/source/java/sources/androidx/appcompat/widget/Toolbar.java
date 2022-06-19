package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
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
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.SubMenuC0202r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import p020b.p021a.C1423a;
import p020b.p021a.C1432j;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p021a.p028o.AbstractC1457c;
import p020b.p021a.p028o.C1462g;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1664h;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private CharSequence f1165A;

    /* renamed from: B */
    private CharSequence f1166B;

    /* renamed from: C */
    private ColorStateList f1167C;

    /* renamed from: D */
    private ColorStateList f1168D;

    /* renamed from: E */
    private boolean f1169E;

    /* renamed from: F */
    private boolean f1170F;

    /* renamed from: G */
    private final ArrayList<View> f1171G;

    /* renamed from: H */
    private final ArrayList<View> f1172H;

    /* renamed from: I */
    private final int[] f1173I;

    /* renamed from: J */
    AbstractC0274e f1174J;

    /* renamed from: K */
    private final ActionMenuView.AbstractC0220d f1175K;

    /* renamed from: L */
    private C0289f0 f1176L;

    /* renamed from: M */
    private ActionMenuPresenter f1177M;

    /* renamed from: N */
    private C0273d f1178N;

    /* renamed from: O */
    private AbstractC0193m.AbstractC0194a f1179O;

    /* renamed from: P */
    private C0178g.AbstractC0179a f1180P;

    /* renamed from: Q */
    private boolean f1181Q;

    /* renamed from: R */
    private final Runnable f1182R;

    /* renamed from: d */
    private ActionMenuView f1183d;

    /* renamed from: e */
    private TextView f1184e;

    /* renamed from: f */
    private TextView f1185f;

    /* renamed from: g */
    private ImageButton f1186g;

    /* renamed from: h */
    private ImageView f1187h;

    /* renamed from: i */
    private Drawable f1188i;

    /* renamed from: j */
    private CharSequence f1189j;

    /* renamed from: k */
    ImageButton f1190k;

    /* renamed from: l */
    View f1191l;

    /* renamed from: m */
    private Context f1192m;

    /* renamed from: n */
    private int f1193n;

    /* renamed from: o */
    private int f1194o;

    /* renamed from: p */
    private int f1195p;

    /* renamed from: q */
    int f1196q;

    /* renamed from: r */
    private int f1197r;

    /* renamed from: s */
    private int f1198s;

    /* renamed from: t */
    private int f1199t;

    /* renamed from: u */
    private int f1200u;

    /* renamed from: v */
    private int f1201v;

    /* renamed from: w */
    private C0336x f1202w;

    /* renamed from: x */
    private int f1203x;

    /* renamed from: y */
    private int f1204y;

    /* renamed from: z */
    private int f1205z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        int f1206b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1206b = 0;
            this.f208a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1206b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1206b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1206b = 0;
            m35002a(marginLayoutParams);
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1206b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1206b = 0;
            this.f1206b = layoutParams.f1206b;
        }

        /* renamed from: a */
        void m35002a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0269a();

        /* renamed from: f */
        int f1207f;

        /* renamed from: g */
        boolean f1208g;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState$a.class */
        class C0269a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0269a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1207f = parcel.readInt();
            this.f1208g = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1207f);
            parcel.writeInt(this.f1208g ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0270a implements ActionMenuView.AbstractC0220d {
        C0270a() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0220d
        public boolean onMenuItemClick(MenuItem menuItem) {
            AbstractC0274e abstractC0274e = Toolbar.this.f1174J;
            if (abstractC0274e != null) {
                return abstractC0274e.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0271b implements Runnable {
        RunnableC0271b() {
            Toolbar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m35029J();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0272c implements View.OnClickListener {
        View$OnClickListenerC0272c() {
            Toolbar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m35024e();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$d.class */
    public class C0273d implements AbstractC0193m {

        /* renamed from: d */
        C0178g f1212d;

        /* renamed from: e */
        C0182i f1213e;

        C0273d() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: b */
        public void mo4537b(C0178g c0178g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: c */
        public void mo4536c(boolean z) {
            if (this.f1213e != null) {
                C0178g c0178g = this.f1212d;
                boolean z2 = false;
                if (c0178g != null) {
                    int size = c0178g.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1212d.getItem(i) == this.f1213e) {
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
                mo4534e(this.f1212d, this.f1213e);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: d */
        public boolean mo4535d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: e */
        public boolean mo4534e(C0178g c0178g, C0182i c0182i) {
            View view = Toolbar.this.f1191l;
            if (view instanceof AbstractC1457c) {
                ((AbstractC1457c) view).mo30042f();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1191l);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1190k);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1191l = null;
            toolbar3.m35028a();
            this.f1213e = null;
            Toolbar.this.requestLayout();
            c0182i.m35346r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: f */
        public boolean mo4533f(C0178g c0178g, C0182i c0182i) {
            Toolbar.this.m35022g();
            ViewParent parent = Toolbar.this.f1190k.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1190k);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1190k);
            }
            Toolbar.this.f1191l = c0182i.getActionView();
            this.f1213e = c0182i;
            ViewParent parent2 = Toolbar.this.f1191l.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1191l);
                }
                LayoutParams generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f208a = 8388611 | (toolbar4.f1196q & 112);
                generateDefaultLayoutParams.f1206b = 2;
                toolbar4.f1191l.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1191l);
            }
            Toolbar.this.m35032G();
            Toolbar.this.requestLayout();
            c0182i.m35346r(true);
            View view = Toolbar.this.f1191l;
            if (view instanceof AbstractC1457c) {
                ((AbstractC1457c) view).mo30043c();
                return true;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: i */
        public void mo4531i(Context context, C0178g c0178g) {
            C0182i c0182i;
            C0178g c0178g2 = this.f1212d;
            if (c0178g2 != null && (c0182i = this.f1213e) != null) {
                c0178g2.mo35301f(c0182i);
            }
            this.f1212d = c0178g;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: j */
        public void mo4530j(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: l */
        public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m
        /* renamed from: m */
        public Parcelable mo4527m() {
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$e.class */
    public interface AbstractC0274e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1205z = 8388627;
        this.f1171G = new ArrayList<>();
        this.f1172H = new ArrayList<>();
        this.f1173I = new int[2];
        this.f1175K = new C0270a();
        this.f1182R = new RunnableC0271b();
        Context context2 = getContext();
        int[] iArr = C1432j.Toolbar;
        C0286e0 m34946v = C0286e0.m34946v(context2, attributeSet, iArr, i, 0);
        C1679w.m29277p0(this, context, iArr, attributeSet, m34946v.m34950r(), i, 0);
        this.f1194o = m34946v.m34954n(C1432j.Toolbar_titleTextAppearance, 0);
        this.f1195p = m34946v.m34954n(C1432j.Toolbar_subtitleTextAppearance, 0);
        this.f1205z = m34946v.m34956l(C1432j.Toolbar_android_gravity, this.f1205z);
        this.f1196q = m34946v.m34956l(C1432j.Toolbar_buttonGravity, 48);
        int m34963e = m34946v.m34963e(C1432j.Toolbar_titleMargin, 0);
        int i2 = C1432j.Toolbar_titleMargins;
        int m34963e2 = m34946v.m34949s(i2) ? m34946v.m34963e(i2, m34963e) : m34963e;
        this.f1201v = m34963e2;
        this.f1200u = m34963e2;
        this.f1199t = m34963e2;
        this.f1198s = m34963e2;
        int m34963e3 = m34946v.m34963e(C1432j.Toolbar_titleMarginStart, -1);
        if (m34963e3 >= 0) {
            this.f1198s = m34963e3;
        }
        int m34963e4 = m34946v.m34963e(C1432j.Toolbar_titleMarginEnd, -1);
        if (m34963e4 >= 0) {
            this.f1199t = m34963e4;
        }
        int m34963e5 = m34946v.m34963e(C1432j.Toolbar_titleMarginTop, -1);
        if (m34963e5 >= 0) {
            this.f1200u = m34963e5;
        }
        int m34963e6 = m34946v.m34963e(C1432j.Toolbar_titleMarginBottom, -1);
        if (m34963e6 >= 0) {
            this.f1201v = m34963e6;
        }
        this.f1197r = m34946v.m34962f(C1432j.Toolbar_maxButtonHeight, -1);
        int m34963e7 = m34946v.m34963e(C1432j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int m34963e8 = m34946v.m34963e(C1432j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int m34962f = m34946v.m34962f(C1432j.Toolbar_contentInsetLeft, 0);
        int m34962f2 = m34946v.m34962f(C1432j.Toolbar_contentInsetRight, 0);
        m35021h();
        this.f1202w.m34708e(m34962f, m34962f2);
        if (m34963e7 != Integer.MIN_VALUE || m34963e8 != Integer.MIN_VALUE) {
            this.f1202w.m34706g(m34963e7, m34963e8);
        }
        this.f1203x = m34946v.m34963e(C1432j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f1204y = m34946v.m34963e(C1432j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f1188i = m34946v.m34961g(C1432j.Toolbar_collapseIcon);
        this.f1189j = m34946v.m34952p(C1432j.Toolbar_collapseContentDescription);
        CharSequence m34952p = m34946v.m34952p(C1432j.Toolbar_title);
        if (!TextUtils.isEmpty(m34952p)) {
            setTitle(m34952p);
        }
        CharSequence m34952p2 = m34946v.m34952p(C1432j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m34952p2)) {
            setSubtitle(m34952p2);
        }
        this.f1192m = getContext();
        setPopupTheme(m34946v.m34954n(C1432j.Toolbar_popupTheme, 0));
        Drawable m34961g = m34946v.m34961g(C1432j.Toolbar_navigationIcon);
        if (m34961g != null) {
            setNavigationIcon(m34961g);
        }
        CharSequence m34952p3 = m34946v.m34952p(C1432j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m34952p3)) {
            setNavigationContentDescription(m34952p3);
        }
        Drawable m34961g2 = m34946v.m34961g(C1432j.Toolbar_logo);
        if (m34961g2 != null) {
            setLogo(m34961g2);
        }
        CharSequence m34952p4 = m34946v.m34952p(C1432j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m34952p4)) {
            setLogoDescription(m34952p4);
        }
        int i3 = C1432j.Toolbar_titleTextColor;
        if (m34946v.m34949s(i3)) {
            setTitleTextColor(m34946v.m34965c(i3));
        }
        int i4 = C1432j.Toolbar_subtitleTextColor;
        if (m34946v.m34949s(i4)) {
            setSubtitleTextColor(m34946v.m34965c(i4));
        }
        int i5 = C1432j.Toolbar_menu;
        if (m34946v.m34949s(i5)) {
            m35005x(m34946v.m34954n(i5, 0));
        }
        m34946v.m34945w();
    }

    /* renamed from: B */
    private int m35037B(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m35012q = m35012q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m35012q, max + measuredWidth, view.getMeasuredHeight() + m35012q);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: C */
    private int m35036C(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m35012q = m35012q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m35012q, max, view.getMeasuredHeight() + m35012q);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: D */
    private int m35035D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: E */
    private void m35034E(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
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

    /* renamed from: F */
    private void m35033F() {
        removeCallbacks(this.f1182R);
        post(this.f1182R);
    }

    /* renamed from: H */
    private boolean m35031H() {
        if (!this.f1181Q) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m35030I(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: I */
    private boolean m35030I(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private void m35027b(List<View> list, int i) {
        boolean z = C1679w.m29346C(this) == 1;
        int childCount = getChildCount();
        int m29600b = C1614e.m29600b(i, C1679w.m29346C(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1206b == 0 && m35030I(childAt) && m35013p(layoutParams.f208a) == m29600b) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1206b == 0 && m35030I(childAt2) && m35013p(layoutParams2.f208a) == m29600b) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    private void m35026c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (LayoutParams) layoutParams;
        generateDefaultLayoutParams.f1206b = 1;
        if (!z || this.f1191l == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f1172H.add(view);
    }

    private MenuInflater getMenuInflater() {
        return new C1462g(getContext());
    }

    /* renamed from: h */
    private void m35021h() {
        if (this.f1202w == null) {
            this.f1202w = new C0336x();
        }
    }

    /* renamed from: i */
    private void m35020i() {
        if (this.f1187h == null) {
            this.f1187h = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: j */
    private void m35019j() {
        m35018k();
        if (this.f1183d.m35229N() == null) {
            C0178g c0178g = (C0178g) this.f1183d.getMenu();
            if (this.f1178N == null) {
                this.f1178N = new C0273d();
            }
            this.f1183d.setExpandedActionViewsExclusive(true);
            c0178g.m35391c(this.f1178N, this.f1192m);
        }
    }

    /* renamed from: k */
    private void m35018k() {
        if (this.f1183d == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1183d = actionMenuView;
            actionMenuView.setPopupTheme(this.f1193n);
            this.f1183d.setOnMenuItemClickListener(this.f1175K);
            this.f1183d.setMenuCallbacks(this.f1179O, this.f1180P);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388613 | (this.f1196q & 112);
            this.f1183d.setLayoutParams(generateDefaultLayoutParams);
            m35026c(this.f1183d, false);
        }
    }

    /* renamed from: l */
    private void m35017l() {
        if (this.f1186g == null) {
            this.f1186g = new AppCompatImageButton(getContext(), null, C1423a.toolbarNavigationButtonStyle);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388611 | (this.f1196q & 112);
            this.f1186g.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: p */
    private int m35013p(int i) {
        int m29346C = C1679w.m29346C(this);
        int m29600b = C1614e.m29600b(i, m29346C) & 7;
        if (m29600b != 1) {
            int i2 = 3;
            if (m29600b != 3 && m29600b != 5) {
                if (m29346C == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return m29600b;
    }

    /* renamed from: q */
    private int m35012q(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int m35011r = m35011r(layoutParams.f208a);
        if (m35011r != 48) {
            if (m35011r == 80) {
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            if (i3 >= i4) {
                int i5 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                i4 = i3;
                if (i5 < i6) {
                    i4 = Math.max(0, i3 - (i6 - i5));
                }
            }
            return paddingTop + i4;
        }
        return getPaddingTop() - i2;
    }

    /* renamed from: r */
    private int m35011r(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f1205z & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: s */
    private int m35010s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C1664h.m29401b(marginLayoutParams) + C1664h.m29402a(marginLayoutParams);
    }

    /* renamed from: t */
    private int m35009t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: u */
    private int m35008u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            i = Math.max(0, -i5);
            i2 = Math.max(0, -i6);
            i3 += max + view.getMeasuredWidth() + max2;
        }
        return i3;
    }

    /* renamed from: y */
    private boolean m35004y(View view) {
        return view.getParent() == this || this.f1172H.contains(view);
    }

    /* renamed from: A */
    public boolean m35038A() {
        ActionMenuView actionMenuView = this.f1183d;
        return actionMenuView != null && actionMenuView.m35233J();
    }

    /* renamed from: G */
    void m35032G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).f1206b != 2 && childAt != this.f1183d) {
                removeViewAt(childCount);
                this.f1172H.add(childAt);
            }
        }
    }

    /* renamed from: J */
    public boolean m35029J() {
        ActionMenuView actionMenuView = this.f1183d;
        return actionMenuView != null && actionMenuView.m35228O();
    }

    /* renamed from: a */
    void m35028a() {
        for (int size = this.f1172H.size() - 1; size >= 0; size--) {
            addView(this.f1172H.get(size));
        }
        this.f1172H.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public boolean m35025d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f1183d) != null && actionMenuView.m35232K();
    }

    /* renamed from: e */
    public void m35024e() {
        C0273d c0273d = this.f1178N;
        C0182i c0182i = c0273d == null ? null : c0273d.f1213e;
        if (c0182i != null) {
            c0182i.collapseActionView();
        }
    }

    /* renamed from: f */
    public void m35023f() {
        ActionMenuView actionMenuView = this.f1183d;
        if (actionMenuView != null) {
            actionMenuView.m35241B();
        }
    }

    /* renamed from: g */
    void m35022g() {
        if (this.f1190k == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C1423a.toolbarNavigationButtonStyle);
            this.f1190k = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f1188i);
            this.f1190k.setContentDescription(this.f1189j);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388611 | (this.f1196q & 112);
            generateDefaultLayoutParams.f1206b = 2;
            this.f1190k.setLayoutParams(generateDefaultLayoutParams);
            this.f1190k.setOnClickListener(new View$OnClickListenerC0272c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f1190k;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f1190k;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0336x c0336x = this.f1202w;
        return c0336x != null ? c0336x.m34712a() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f1204y;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0336x c0336x = this.f1202w;
        return c0336x != null ? c0336x.m34711b() : 0;
    }

    public int getContentInsetRight() {
        C0336x c0336x = this.f1202w;
        return c0336x != null ? c0336x.m34710c() : 0;
    }

    public int getContentInsetStart() {
        C0336x c0336x = this.f1202w;
        return c0336x != null ? c0336x.m34709d() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f1203x;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        C0178g m35229N;
        ActionMenuView actionMenuView = this.f1183d;
        return actionMenuView != null && (m35229N = actionMenuView.m35229N()) != null && m35229N.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f1204y, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return C1679w.m29346C(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return C1679w.m29346C(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1203x, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1187h;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1187h;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m35019j();
        return this.f1183d.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1186g;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1186g;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f1177M;
    }

    public Drawable getOverflowIcon() {
        m35019j();
        return this.f1183d.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1192m;
    }

    public int getPopupTheme() {
        return this.f1193n;
    }

    public CharSequence getSubtitle() {
        return this.f1166B;
    }

    final TextView getSubtitleTextView() {
        return this.f1185f;
    }

    public CharSequence getTitle() {
        return this.f1165A;
    }

    public int getTitleMarginBottom() {
        return this.f1201v;
    }

    public int getTitleMarginEnd() {
        return this.f1199t;
    }

    public int getTitleMarginStart() {
        return this.f1198s;
    }

    public int getTitleMarginTop() {
        return this.f1200u;
    }

    final TextView getTitleTextView() {
        return this.f1184e;
    }

    public AbstractC0316p getWrapper() {
        if (this.f1176L == null) {
            this.f1176L = new C0289f0(this, true);
        }
        return this.f1176L;
    }

    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1182R);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1170F = false;
        }
        if (!this.f1170F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1170F = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1170F = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x053f A[LOOP:0: B:120:0x0539->B:122:0x053f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0574 A[LOOP:1: B:124:0x056e->B:126:0x0574, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x05ef A[LOOP:2: B:134:0x05e9->B:136:0x05ef, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0364  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Object[] objArr;
        Object[] objArr2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.f1173I;
        if (C0305k0.m34869b(this)) {
            objArr2 = 1;
            objArr = null;
        } else {
            objArr2 = null;
            objArr = 1;
        }
        if (m35030I(this.f1186g)) {
            m35034E(this.f1186g, i, 0, i2, 0, this.f1197r);
            i5 = this.f1186g.getMeasuredWidth() + m35010s(this.f1186g);
            i4 = Math.max(0, this.f1186g.getMeasuredHeight() + m35009t(this.f1186g));
            i3 = View.combineMeasuredStates(0, this.f1186g.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i5;
        int i10 = i4;
        int i11 = i3;
        if (m35030I(this.f1190k)) {
            m35034E(this.f1190k, i, 0, i2, 0, this.f1197r);
            i9 = this.f1190k.getMeasuredWidth() + m35010s(this.f1190k);
            i10 = Math.max(i4, this.f1190k.getMeasuredHeight() + m35009t(this.f1190k));
            i11 = View.combineMeasuredStates(i3, this.f1190k.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i9);
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i9);
        if (m35030I(this.f1183d)) {
            m35034E(this.f1183d, i, max, i2, 0, this.f1197r);
            i6 = this.f1183d.getMeasuredWidth() + m35010s(this.f1183d);
            i10 = Math.max(i10, this.f1183d.getMeasuredHeight() + m35009t(this.f1183d));
            i11 = View.combineMeasuredStates(i11, this.f1183d.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i6);
        int i12 = i10;
        int i13 = i11;
        int i14 = max2;
        if (m35030I(this.f1191l)) {
            i14 = max2 + m35035D(this.f1191l, i, max2, i2, 0, iArr);
            i12 = Math.max(i10, this.f1191l.getMeasuredHeight() + m35009t(this.f1191l));
            i13 = View.combineMeasuredStates(i11, this.f1191l.getMeasuredState());
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = i14;
        if (m35030I(this.f1187h)) {
            i17 = i14 + m35035D(this.f1187h, i, i14, i2, 0, iArr);
            i15 = Math.max(i12, this.f1187h.getMeasuredHeight() + m35009t(this.f1187h));
            i16 = View.combineMeasuredStates(i13, this.f1187h.getMeasuredState());
        }
        int childCount = getChildCount();
        int i18 = i17;
        int i19 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i20 = i15;
            int i21 = i16;
            int i22 = i18;
            if (((LayoutParams) childAt.getLayoutParams()).f1206b == 0) {
                if (!m35030I(childAt)) {
                    i20 = i15;
                    i21 = i16;
                    i22 = i18;
                } else {
                    i22 = i18 + m35035D(childAt, i, i18, i2, 0, iArr);
                    i20 = Math.max(i15, childAt.getMeasuredHeight() + m35009t(childAt));
                    i21 = View.combineMeasuredStates(i16, childAt.getMeasuredState());
                }
            }
            i19++;
            i15 = i20;
            i16 = i21;
            i18 = i22;
        }
        int i23 = this.f1200u + this.f1201v;
        int i24 = this.f1198s + this.f1199t;
        if (m35030I(this.f1184e)) {
            m35035D(this.f1184e, i, i18 + i24, i2, i23, iArr);
            int measuredWidth = this.f1184e.getMeasuredWidth();
            int m35010s = m35010s(this.f1184e);
            int measuredHeight = this.f1184e.getMeasuredHeight();
            int m35009t = m35009t(this.f1184e);
            i16 = View.combineMeasuredStates(i16, this.f1184e.getMeasuredState());
            i8 = measuredHeight + m35009t;
            i7 = measuredWidth + m35010s;
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (m35030I(this.f1185f)) {
            i7 = Math.max(i7, m35035D(this.f1185f, i, i18 + i24, i2, i8 + i23, iArr));
            i8 += this.f1185f.getMeasuredHeight() + m35009t(this.f1185f);
            i16 = View.combineMeasuredStates(i16, this.f1185f.getMeasuredState());
        }
        int max3 = Math.max(i15, i8);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(i18 + i7 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i16);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i16 << 16);
        if (m35031H()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        ActionMenuView actionMenuView = this.f1183d;
        C0178g m35229N = actionMenuView != null ? actionMenuView.m35229N() : null;
        int i = savedState.f1207f;
        if (i != 0 && this.f1178N != null && m35229N != null && (findItem = m35229N.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (!savedState.f1208g) {
            return;
        }
        m35033F();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m35021h();
        C0336x c0336x = this.f1202w;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        c0336x.m34707f(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0182i c0182i;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0273d c0273d = this.f1178N;
        if (c0273d != null && (c0182i = c0273d.f1213e) != null) {
            savedState.f1207f = c0182i.getItemId();
        }
        savedState.f1208g = m35038A();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1169E = false;
        }
        if (!this.f1169E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1169E = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1169E = false;
            return true;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m35022g();
        }
        ImageButton imageButton = this.f1190k;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C1433a.m30126d(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m35022g();
            this.f1190k.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f1190k;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f1188i);
    }

    public void setCollapsible(boolean z) {
        this.f1181Q = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1204y) {
            this.f1204y = i2;
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
        if (i2 != this.f1203x) {
            this.f1203x = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        m35021h();
        this.f1202w.m34708e(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        m35021h();
        this.f1202w.m34706g(i, i2);
    }

    public void setLogo(int i) {
        setLogo(C1433a.m30126d(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m35020i();
            if (!m35004y(this.f1187h)) {
                m35026c(this.f1187h, true);
            }
        } else {
            ImageView imageView = this.f1187h;
            if (imageView != null && m35004y(imageView)) {
                removeView(this.f1187h);
                this.f1172H.remove(this.f1187h);
            }
        }
        ImageView imageView2 = this.f1187h;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m35020i();
        }
        ImageView imageView = this.f1187h;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(C0178g c0178g, ActionMenuPresenter actionMenuPresenter) {
        if (c0178g == null && this.f1183d == null) {
            return;
        }
        m35018k();
        C0178g m35229N = this.f1183d.m35229N();
        if (m35229N == c0178g) {
            return;
        }
        if (m35229N != null) {
            m35229N.m35403Q(this.f1177M);
            m35229N.m35403Q(this.f1178N);
        }
        if (this.f1178N == null) {
            this.f1178N = new C0273d();
        }
        actionMenuPresenter.m35261J(true);
        if (c0178g != null) {
            c0178g.m35391c(actionMenuPresenter, this.f1192m);
            c0178g.m35391c(this.f1178N, this.f1192m);
        } else {
            actionMenuPresenter.mo4531i(this.f1192m, null);
            this.f1178N.mo4531i(this.f1192m, null);
            actionMenuPresenter.mo4536c(true);
            this.f1178N.mo4536c(true);
        }
        this.f1183d.setPopupTheme(this.f1193n);
        this.f1183d.setPresenter(actionMenuPresenter);
        this.f1177M = actionMenuPresenter;
    }

    public void setMenuCallbacks(AbstractC0193m.AbstractC0194a abstractC0194a, C0178g.AbstractC0179a abstractC0179a) {
        this.f1179O = abstractC0194a;
        this.f1180P = abstractC0179a;
        ActionMenuView actionMenuView = this.f1183d;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(abstractC0194a, abstractC0179a);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m35017l();
        }
        ImageButton imageButton = this.f1186g;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C1433a.m30126d(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m35017l();
            if (!m35004y(this.f1186g)) {
                m35026c(this.f1186g, true);
            }
        } else {
            ImageButton imageButton = this.f1186g;
            if (imageButton != null && m35004y(imageButton)) {
                removeView(this.f1186g);
                this.f1172H.remove(this.f1186g);
            }
        }
        ImageButton imageButton2 = this.f1186g;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m35017l();
        this.f1186g.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0274e abstractC0274e) {
        this.f1174J = abstractC0274e;
    }

    public void setOverflowIcon(Drawable drawable) {
        m35019j();
        this.f1183d.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f1193n != i) {
            this.f1193n = i;
            if (i == 0) {
                this.f1192m = getContext();
            } else {
                this.f1192m = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1185f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1185f = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1185f.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1195p;
                if (i != 0) {
                    this.f1185f.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1168D;
                if (colorStateList != null) {
                    this.f1185f.setTextColor(colorStateList);
                }
            }
            if (!m35004y(this.f1185f)) {
                m35026c(this.f1185f, true);
            }
        } else {
            TextView textView = this.f1185f;
            if (textView != null && m35004y(textView)) {
                removeView(this.f1185f);
                this.f1172H.remove(this.f1185f);
            }
        }
        TextView textView2 = this.f1185f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1166B = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.f1195p = i;
        TextView textView = this.f1185f;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f1168D = colorStateList;
        TextView textView = this.f1185f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1184e == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1184e = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1184e.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1194o;
                if (i != 0) {
                    this.f1184e.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1167C;
                if (colorStateList != null) {
                    this.f1184e.setTextColor(colorStateList);
                }
            }
            if (!m35004y(this.f1184e)) {
                m35026c(this.f1184e, true);
            }
        } else {
            TextView textView = this.f1184e;
            if (textView != null && m35004y(textView)) {
                removeView(this.f1184e);
                this.f1172H.remove(this.f1184e);
            }
        }
        TextView textView2 = this.f1184e;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1165A = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.f1198s = i;
        this.f1200u = i2;
        this.f1199t = i3;
        this.f1201v = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.f1201v = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f1199t = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f1198s = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f1200u = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.f1194o = i;
        TextView textView = this.f1184e;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f1167C = colorStateList;
        TextView textView = this.f1184e;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: v */
    public boolean m35007v() {
        C0273d c0273d = this.f1178N;
        return (c0273d == null || c0273d.f1213e == null) ? false : true;
    }

    /* renamed from: w */
    public boolean m35006w() {
        ActionMenuView actionMenuView = this.f1183d;
        return actionMenuView != null && actionMenuView.m35235H();
    }

    /* renamed from: x */
    public void m35005x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: z */
    public boolean m35003z() {
        ActionMenuView actionMenuView = this.f1183d;
        return actionMenuView != null && actionMenuView.m35234I();
    }
}
