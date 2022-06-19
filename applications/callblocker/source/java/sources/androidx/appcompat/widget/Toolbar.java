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
import androidx.appcompat.C0083a;
import androidx.appcompat.app.AbstractC0110a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.AbstractC0174c;
import androidx.appcompat.view.C0179g;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.view.menu.SubMenuC0223r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0580f;
import androidx.core.p026h.C0595u;
import androidx.p029d.p030a.AbstractC0633a;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private ColorStateList f1134A;

    /* renamed from: B */
    private ColorStateList f1135B;

    /* renamed from: C */
    private boolean f1136C;

    /* renamed from: D */
    private boolean f1137D;

    /* renamed from: E */
    private final ArrayList<View> f1138E;

    /* renamed from: F */
    private final ArrayList<View> f1139F;

    /* renamed from: G */
    private final int[] f1140G;

    /* renamed from: H */
    private final ActionMenuView.AbstractC0235e f1141H;

    /* renamed from: I */
    private C0318aq f1142I;

    /* renamed from: J */
    private C0330c f1143J;

    /* renamed from: K */
    private C0272a f1144K;

    /* renamed from: L */
    private AbstractC0214m.AbstractC0215a f1145L;

    /* renamed from: M */
    private C0199g.AbstractC0200a f1146M;

    /* renamed from: N */
    private boolean f1147N;

    /* renamed from: O */
    private final Runnable f1148O;

    /* renamed from: a */
    ImageButton f1149a;

    /* renamed from: b */
    View f1150b;

    /* renamed from: c */
    int f1151c;

    /* renamed from: d */
    AbstractC0274c f1152d;

    /* renamed from: e */
    private ActionMenuView f1153e;

    /* renamed from: f */
    private TextView f1154f;

    /* renamed from: g */
    private TextView f1155g;

    /* renamed from: h */
    private ImageButton f1156h;

    /* renamed from: i */
    private ImageView f1157i;

    /* renamed from: j */
    private Drawable f1158j;

    /* renamed from: k */
    private CharSequence f1159k;

    /* renamed from: l */
    private Context f1160l;

    /* renamed from: m */
    private int f1161m;

    /* renamed from: n */
    private int f1162n;

    /* renamed from: o */
    private int f1163o;

    /* renamed from: p */
    private int f1164p;

    /* renamed from: q */
    private int f1165q;

    /* renamed from: r */
    private int f1166r;

    /* renamed from: s */
    private int f1167s;

    /* renamed from: t */
    private int f1168t;

    /* renamed from: u */
    private C0304ah f1169u;

    /* renamed from: v */
    private int f1170v;

    /* renamed from: w */
    private int f1171w;

    /* renamed from: x */
    private int f1172x;

    /* renamed from: y */
    private CharSequence f1173y;

    /* renamed from: z */
    private CharSequence f1174z;

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0272a implements AbstractC0214m {

        /* renamed from: a */
        C0199g f1178a;

        /* renamed from: b */
        C0203i f1179b;

        C0272a() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public void mo3589a(Context context, C0199g c0199g) {
            if (this.f1178a != null && this.f1179b != null) {
                this.f1178a.mo21782d(this.f1179b);
            }
            this.f1178a = c0199g;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public void mo3588a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public void mo3586a(C0199g c0199g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public void mo3582a(boolean z) {
            if (this.f1179b != null) {
                boolean z2 = false;
                if (this.f1178a != null) {
                    int size = this.f1178a.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1178a.getItem(i) == this.f1179b) {
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
                mo3580b(this.f1178a, this.f1179b);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public boolean mo3587a(C0199g c0199g, C0203i c0203i) {
            Toolbar.this.m21588i();
            ViewParent parent = Toolbar.this.f1149a.getParent();
            if (parent != Toolbar.this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Toolbar.this.f1149a);
                }
                Toolbar.this.addView(Toolbar.this.f1149a);
            }
            Toolbar.this.f1150b = c0203i.getActionView();
            this.f1179b = c0203i;
            ViewParent parent2 = Toolbar.this.f1150b.getParent();
            if (parent2 != Toolbar.this) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(Toolbar.this.f1150b);
                }
                C0273b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f327a = 8388611 | (Toolbar.this.f1151c & 112);
                generateDefaultLayoutParams.f1181b = 2;
                Toolbar.this.f1150b.setLayoutParams(generateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.f1150b);
            }
            Toolbar.this.m21586k();
            Toolbar.this.requestLayout();
            c0203i.m21829e(true);
            if (Toolbar.this.f1150b instanceof AbstractC0174c) {
                ((AbstractC0174c) Toolbar.this.f1150b).mo21671a();
                return true;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: a */
        public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: b */
        public boolean mo3581b() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: b */
        public boolean mo3580b(C0199g c0199g, C0203i c0203i) {
            if (Toolbar.this.f1150b instanceof AbstractC0174c) {
                ((AbstractC0174c) Toolbar.this.f1150b).mo21657b();
            }
            Toolbar.this.removeView(Toolbar.this.f1150b);
            Toolbar.this.removeView(Toolbar.this.f1149a);
            Toolbar.this.f1150b = null;
            Toolbar.this.m21585l();
            this.f1179b = null;
            Toolbar.this.requestLayout();
            c0203i.m21829e(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: c */
        public int mo3578c() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m
        /* renamed from: f */
        public Parcelable mo3577f() {
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public static class C0273b extends AbstractC0110a.C0111a {

        /* renamed from: b */
        int f1181b;

        public C0273b(int i, int i2) {
            super(i, i2);
            this.f1181b = 0;
            this.f327a = 8388627;
        }

        public C0273b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1181b = 0;
        }

        public C0273b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1181b = 0;
        }

        public C0273b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1181b = 0;
            m21576a(marginLayoutParams);
        }

        public C0273b(AbstractC0110a.C0111a c0111a) {
            super(c0111a);
            this.f1181b = 0;
        }

        public C0273b(C0273b c0273b) {
            super((AbstractC0110a.C0111a) c0273b);
            this.f1181b = 0;
            this.f1181b = c0273b.f1181b;
        }

        /* renamed from: a */
        void m21576a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public interface AbstractC0274c {
        /* renamed from: a */
        boolean m21575a(MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$d.class */
    public static class C0275d extends AbstractC0633a {
        public static final Parcelable.Creator<C0275d> CREATOR = new Parcelable.ClassLoaderCreator<C0275d>() { // from class: androidx.appcompat.widget.Toolbar.d.1
            /* renamed from: a */
            public C0275d createFromParcel(Parcel parcel) {
                return new C0275d(parcel, null);
            }

            /* renamed from: a */
            public C0275d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0275d(parcel, classLoader);
            }

            /* renamed from: a */
            public C0275d[] newArray(int i) {
                return new C0275d[i];
            }
        };

        /* renamed from: a */
        int f1182a;

        /* renamed from: b */
        boolean f1183b;

        public C0275d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1182a = parcel.readInt();
            this.f1183b = parcel.readInt() != 0;
        }

        public C0275d(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1182a);
            parcel.writeInt(this.f1183b ? 1 : 0);
        }
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1172x = 8388627;
        this.f1138E = new ArrayList<>();
        this.f1139F = new ArrayList<>();
        this.f1140G = new int[2];
        this.f1141H = new ActionMenuView.AbstractC0235e() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0235e
            /* renamed from: a */
            public boolean mo21577a(MenuItem menuItem) {
                return Toolbar.this.f1152d != null ? Toolbar.this.f1152d.m21575a(menuItem) : false;
            }
        };
        this.f1148O = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.m21594d();
            }
        };
        C0317ap m21433a = C0317ap.m21433a(getContext(), attributeSet, C0083a.C0093j.Toolbar, i, 0);
        this.f1162n = m21433a.m21420g(C0083a.C0093j.Toolbar_titleTextAppearance, 0);
        this.f1163o = m21433a.m21420g(C0083a.C0093j.Toolbar_subtitleTextAppearance, 0);
        this.f1172x = m21433a.m21428c(C0083a.C0093j.Toolbar_android_gravity, this.f1172x);
        this.f1151c = m21433a.m21428c(C0083a.C0093j.Toolbar_buttonGravity, 48);
        int m21426d = m21433a.m21426d(C0083a.C0093j.Toolbar_titleMargin, 0);
        int m21426d2 = m21433a.m21421g(C0083a.C0093j.Toolbar_titleMargins) ? m21433a.m21426d(C0083a.C0093j.Toolbar_titleMargins, m21426d) : m21426d;
        this.f1168t = m21426d2;
        this.f1167s = m21426d2;
        this.f1166r = m21426d2;
        this.f1165q = m21426d2;
        int m21426d3 = m21433a.m21426d(C0083a.C0093j.Toolbar_titleMarginStart, -1);
        if (m21426d3 >= 0) {
            this.f1165q = m21426d3;
        }
        int m21426d4 = m21433a.m21426d(C0083a.C0093j.Toolbar_titleMarginEnd, -1);
        if (m21426d4 >= 0) {
            this.f1166r = m21426d4;
        }
        int m21426d5 = m21433a.m21426d(C0083a.C0093j.Toolbar_titleMarginTop, -1);
        if (m21426d5 >= 0) {
            this.f1167s = m21426d5;
        }
        int m21426d6 = m21433a.m21426d(C0083a.C0093j.Toolbar_titleMarginBottom, -1);
        if (m21426d6 >= 0) {
            this.f1168t = m21426d6;
        }
        this.f1164p = m21433a.m21424e(C0083a.C0093j.Toolbar_maxButtonHeight, -1);
        int m21426d7 = m21433a.m21426d(C0083a.C0093j.Toolbar_contentInsetStart, RecyclerView.UNDEFINED_DURATION);
        int m21426d8 = m21433a.m21426d(C0083a.C0093j.Toolbar_contentInsetEnd, RecyclerView.UNDEFINED_DURATION);
        int m21424e = m21433a.m21424e(C0083a.C0093j.Toolbar_contentInsetLeft, 0);
        int m21424e2 = m21433a.m21424e(C0083a.C0093j.Toolbar_contentInsetRight, 0);
        m21578s();
        this.f1169u.m21481b(m21424e, m21424e2);
        if (m21426d7 != Integer.MIN_VALUE || m21426d8 != Integer.MIN_VALUE) {
            this.f1169u.m21484a(m21426d7, m21426d8);
        }
        this.f1170v = m21433a.m21426d(C0083a.C0093j.Toolbar_contentInsetStartWithNavigation, RecyclerView.UNDEFINED_DURATION);
        this.f1171w = m21433a.m21426d(C0083a.C0093j.Toolbar_contentInsetEndWithActions, RecyclerView.UNDEFINED_DURATION);
        this.f1158j = m21433a.m21440a(C0083a.C0093j.Toolbar_collapseIcon);
        this.f1159k = m21433a.m21429c(C0083a.C0093j.Toolbar_collapseContentDescription);
        CharSequence m21429c = m21433a.m21429c(C0083a.C0093j.Toolbar_title);
        if (!TextUtils.isEmpty(m21429c)) {
            setTitle(m21429c);
        }
        CharSequence m21429c2 = m21433a.m21429c(C0083a.C0093j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m21429c2)) {
            setSubtitle(m21429c2);
        }
        this.f1160l = getContext();
        setPopupTheme(m21433a.m21420g(C0083a.C0093j.Toolbar_popupTheme, 0));
        Drawable m21440a = m21433a.m21440a(C0083a.C0093j.Toolbar_navigationIcon);
        if (m21440a != null) {
            setNavigationIcon(m21440a);
        }
        CharSequence m21429c3 = m21433a.m21429c(C0083a.C0093j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m21429c3)) {
            setNavigationContentDescription(m21429c3);
        }
        Drawable m21440a2 = m21433a.m21440a(C0083a.C0093j.Toolbar_logo);
        if (m21440a2 != null) {
            setLogo(m21440a2);
        }
        CharSequence m21429c4 = m21433a.m21429c(C0083a.C0093j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m21429c4)) {
            setLogoDescription(m21429c4);
        }
        if (m21433a.m21421g(C0083a.C0093j.Toolbar_titleTextColor)) {
            setTitleTextColor(m21433a.m21425e(C0083a.C0093j.Toolbar_titleTextColor));
        }
        if (m21433a.m21421g(C0083a.C0093j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(m21433a.m21425e(C0083a.C0093j.Toolbar_subtitleTextColor));
        }
        if (m21433a.m21421g(C0083a.C0093j.Toolbar_menu)) {
            m21617a(m21433a.m21420g(C0083a.C0093j.Toolbar_menu, 0));
        }
        m21433a.m21441a();
    }

    /* renamed from: a */
    private int m21612a(View view, int i) {
        int height;
        C0273b c0273b = (C0273b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        switch (m21601b(c0273b.f327a)) {
            case 48:
                height = getPaddingTop() - i2;
                break;
            case 80:
                height = (((getHeight() - getPaddingBottom()) - measuredHeight) - c0273b.bottomMargin) - i2;
                break;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height2 = getHeight();
                int i3 = (((height2 - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i3 < c0273b.topMargin) {
                    i3 = c0273b.topMargin;
                } else {
                    int i4 = (((height2 - paddingBottom) - measuredHeight) - i3) - paddingTop;
                    if (i4 < c0273b.bottomMargin) {
                        i3 = Math.max(0, i3 - (c0273b.bottomMargin - i4));
                    }
                }
                height = i3 + paddingTop;
                break;
        }
        return height;
    }

    /* renamed from: a */
    private int m21610a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: a */
    private int m21609a(View view, int i, int[] iArr, int i2) {
        C0273b c0273b = (C0273b) view.getLayoutParams();
        int i3 = c0273b.leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m21612a = m21612a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m21612a, max + measuredWidth, view.getMeasuredHeight() + m21612a);
        return c0273b.rightMargin + measuredWidth + max;
    }

    /* renamed from: a */
    private int m21603a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 < size) {
                View view = list.get(i3);
                C0273b c0273b = (C0273b) view.getLayoutParams();
                int i6 = c0273b.leftMargin - i;
                int i7 = c0273b.rightMargin - i2;
                int max = Math.max(0, i6);
                int max2 = Math.max(0, i7);
                i = Math.max(0, -i6);
                i2 = Math.max(0, -i7);
                i3++;
                i4 = i5 + view.getMeasuredWidth() + max + max2;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: a */
    private void m21611a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
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

    /* renamed from: a */
    private void m21608a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0273b generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (C0273b) layoutParams;
        generateDefaultLayoutParams.f1181b = 1;
        if (!z || this.f1150b == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f1139F.add(view);
    }

    /* renamed from: a */
    private void m21604a(List<View> list, int i) {
        boolean z = true;
        if (C0595u.m20320g(this) != 1) {
            z = false;
        }
        int childCount = getChildCount();
        int m20421a = C0576c.m20421a(i, C0595u.m20320g(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0273b c0273b = (C0273b) childAt.getLayoutParams();
                if (c0273b.f1181b == 0 && m21613a(childAt) && m21596c(c0273b.f327a) == m20421a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0273b c0273b2 = (C0273b) childAt2.getLayoutParams();
            if (c0273b2.f1181b == 0 && m21613a(childAt2) && m21596c(c0273b2.f327a) == m20421a) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: a */
    private boolean m21613a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private int m21601b(int i) {
        int i2 = i & 112;
        int i3 = i2;
        switch (i2) {
            case 16:
            case 48:
            case 80:
                break;
            default:
                i3 = this.f1172x & 112;
                break;
        }
        return i3;
    }

    /* renamed from: b */
    private int m21599b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0580f.m20408b(marginLayoutParams) + C0580f.m20410a(marginLayoutParams);
    }

    /* renamed from: b */
    private int m21598b(View view, int i, int[] iArr, int i2) {
        C0273b c0273b = (C0273b) view.getLayoutParams();
        int i3 = c0273b.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m21612a = m21612a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m21612a, max, view.getMeasuredHeight() + m21612a);
        return max - (c0273b.leftMargin + measuredWidth);
    }

    /* renamed from: c */
    private int m21596c(int i) {
        int m20320g = C0595u.m20320g(this);
        int m20421a = C0576c.m20421a(i, m20320g) & 7;
        int i2 = m20421a;
        switch (m20421a) {
            case 1:
            case 3:
            case 5:
                break;
            case 2:
            case 4:
            default:
                if (m20320g != 1) {
                    i2 = 3;
                    break;
                } else {
                    i2 = 5;
                    break;
                }
        }
        return i2;
    }

    /* renamed from: c */
    private int m21595c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    /* renamed from: d */
    private boolean m21593d(View view) {
        return view.getParent() == this || this.f1139F.contains(view);
    }

    private MenuInflater getMenuInflater() {
        return new C0179g(getContext());
    }

    /* renamed from: m */
    private void m21584m() {
        if (this.f1157i == null) {
            this.f1157i = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: n */
    private void m21583n() {
        m21582o();
        if (this.f1153e.m21743d() == null) {
            C0199g c0199g = (C0199g) this.f1153e.getMenu();
            if (this.f1144K == null) {
                this.f1144K = new C0272a();
            }
            this.f1153e.setExpandedActionViewsExclusive(true);
            c0199g.m21883a(this.f1144K, this.f1160l);
        }
    }

    /* renamed from: o */
    private void m21582o() {
        if (this.f1153e == null) {
            this.f1153e = new ActionMenuView(getContext());
            this.f1153e.setPopupTheme(this.f1161m);
            this.f1153e.setOnMenuItemClickListener(this.f1141H);
            this.f1153e.m21747a(this.f1145L, this.f1146M);
            C0273b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f327a = 8388613 | (this.f1151c & 112);
            this.f1153e.setLayoutParams(generateDefaultLayoutParams);
            m21608a((View) this.f1153e, false);
        }
    }

    /* renamed from: p */
    private void m21581p() {
        if (this.f1156h == null) {
            this.f1156h = new AppCompatImageButton(getContext(), null, C0083a.C0084a.toolbarNavigationButtonStyle);
            C0273b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f327a = 8388611 | (this.f1151c & 112);
            this.f1156h.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: q */
    private void m21580q() {
        removeCallbacks(this.f1148O);
        post(this.f1148O);
    }

    /* renamed from: r */
    private boolean m21579r() {
        boolean z;
        if (this.f1147N) {
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    z = true;
                    break;
                }
                View childAt = getChildAt(i);
                if (m21613a(childAt) && childAt.getMeasuredWidth() > 0) {
                    z = false;
                    if (childAt.getMeasuredHeight() > 0) {
                        break;
                    }
                }
                i++;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: s */
    private void m21578s() {
        if (this.f1169u == null) {
            this.f1169u = new C0304ah();
        }
    }

    /* renamed from: a */
    public C0273b generateLayoutParams(AttributeSet attributeSet) {
        return new C0273b(getContext(), attributeSet);
    }

    /* renamed from: a */
    public C0273b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0273b ? new C0273b((C0273b) layoutParams) : layoutParams instanceof AbstractC0110a.C0111a ? new C0273b((AbstractC0110a.C0111a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0273b((ViewGroup.MarginLayoutParams) layoutParams) : new C0273b(layoutParams);
    }

    /* renamed from: a */
    public void m21617a(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: a */
    public void m21616a(int i, int i2) {
        m21578s();
        this.f1169u.m21484a(i, i2);
    }

    /* renamed from: a */
    public void m21615a(Context context, int i) {
        this.f1162n = i;
        if (this.f1154f != null) {
            this.f1154f.setTextAppearance(context, i);
        }
    }

    /* renamed from: a */
    public void m21606a(C0199g c0199g, C0330c c0330c) {
        if (c0199g == null && this.f1153e == null) {
            return;
        }
        m21582o();
        C0199g m21743d = this.f1153e.m21743d();
        if (m21743d == c0199g) {
            return;
        }
        if (m21743d != null) {
            m21743d.m21874b(this.f1143J);
            m21743d.m21874b(this.f1144K);
        }
        if (this.f1144K == null) {
            this.f1144K = new C0272a();
        }
        c0330c.m21372c(true);
        if (c0199g != null) {
            c0199g.m21883a(c0330c, this.f1160l);
            c0199g.m21883a(this.f1144K, this.f1160l);
        } else {
            c0330c.mo3589a(this.f1160l, (C0199g) null);
            this.f1144K.mo3589a(this.f1160l, (C0199g) null);
            c0330c.mo3582a(true);
            this.f1144K.mo3582a(true);
        }
        this.f1153e.setPopupTheme(this.f1161m);
        this.f1153e.setPresenter(c0330c);
        this.f1143J = c0330c;
    }

    /* renamed from: a */
    public void m21605a(AbstractC0214m.AbstractC0215a abstractC0215a, C0199g.AbstractC0200a abstractC0200a) {
        this.f1145L = abstractC0215a;
        this.f1146M = abstractC0200a;
        if (this.f1153e != null) {
            this.f1153e.m21747a(abstractC0215a, abstractC0200a);
        }
    }

    /* renamed from: a */
    public boolean m21618a() {
        return getVisibility() == 0 && this.f1153e != null && this.f1153e.m21753a();
    }

    /* renamed from: b */
    public void m21600b(Context context, int i) {
        this.f1163o = i;
        if (this.f1155g != null) {
            this.f1155g.setTextAppearance(context, i);
        }
    }

    /* renamed from: b */
    public boolean m21602b() {
        return this.f1153e != null && this.f1153e.m21740g();
    }

    /* renamed from: c */
    public boolean m21597c() {
        return this.f1153e != null && this.f1153e.m21739h();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0273b);
    }

    /* renamed from: d */
    public boolean m21594d() {
        return this.f1153e != null && this.f1153e.m21742e();
    }

    /* renamed from: e */
    public boolean m21592e() {
        return this.f1153e != null && this.f1153e.m21741f();
    }

    /* renamed from: f */
    public void m21591f() {
        if (this.f1153e != null) {
            this.f1153e.m21738i();
        }
    }

    /* renamed from: g */
    public boolean m21590g() {
        return (this.f1144K == null || this.f1144K.f1179b == null) ? false : true;
    }

    public CharSequence getCollapseContentDescription() {
        return this.f1149a != null ? this.f1149a.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        return this.f1149a != null ? this.f1149a.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        return this.f1169u != null ? this.f1169u.m21479d() : 0;
    }

    public int getContentInsetEndWithActions() {
        return this.f1171w != Integer.MIN_VALUE ? this.f1171w : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        return this.f1169u != null ? this.f1169u.m21485a() : 0;
    }

    public int getContentInsetRight() {
        return this.f1169u != null ? this.f1169u.m21482b() : 0;
    }

    public int getContentInsetStart() {
        return this.f1169u != null ? this.f1169u.m21480c() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        return this.f1170v != Integer.MIN_VALUE ? this.f1170v : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        boolean z;
        if (this.f1153e != null) {
            C0199g m21743d = this.f1153e.m21743d();
            z = m21743d != null && m21743d.hasVisibleItems();
        } else {
            z = false;
        }
        return z ? Math.max(getContentInsetEnd(), Math.max(this.f1171w, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return C0595u.m20320g(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return C0595u.m20320g(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1170v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        return this.f1157i != null ? this.f1157i.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        return this.f1157i != null ? this.f1157i.getContentDescription() : null;
    }

    public Menu getMenu() {
        m21583n();
        return this.f1153e.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        return this.f1156h != null ? this.f1156h.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        return this.f1156h != null ? this.f1156h.getDrawable() : null;
    }

    C0330c getOuterActionMenuPresenter() {
        return this.f1143J;
    }

    public Drawable getOverflowIcon() {
        m21583n();
        return this.f1153e.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1160l;
    }

    public int getPopupTheme() {
        return this.f1161m;
    }

    public CharSequence getSubtitle() {
        return this.f1174z;
    }

    final TextView getSubtitleTextView() {
        return this.f1155g;
    }

    public CharSequence getTitle() {
        return this.f1173y;
    }

    public int getTitleMarginBottom() {
        return this.f1168t;
    }

    public int getTitleMarginEnd() {
        return this.f1166r;
    }

    public int getTitleMarginStart() {
        return this.f1165q;
    }

    public int getTitleMarginTop() {
        return this.f1167s;
    }

    final TextView getTitleTextView() {
        return this.f1154f;
    }

    public AbstractC0368x getWrapper() {
        if (this.f1142I == null) {
            this.f1142I = new C0318aq(this, true);
        }
        return this.f1142I;
    }

    /* renamed from: h */
    public void m21589h() {
        C0203i c0203i = this.f1144K == null ? null : this.f1144K.f1179b;
        if (c0203i != null) {
            c0203i.collapseActionView();
        }
    }

    /* renamed from: i */
    void m21588i() {
        if (this.f1149a == null) {
            this.f1149a = new AppCompatImageButton(getContext(), null, C0083a.C0084a.toolbarNavigationButtonStyle);
            this.f1149a.setImageDrawable(this.f1158j);
            this.f1149a.setContentDescription(this.f1159k);
            C0273b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f327a = 8388611 | (this.f1151c & 112);
            generateDefaultLayoutParams.f1181b = 2;
            this.f1149a.setLayoutParams(generateDefaultLayoutParams);
            this.f1149a.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.m21589h();
                }
            });
        }
    }

    /* renamed from: j */
    public C0273b generateDefaultLayoutParams() {
        return new C0273b(-2, -2);
    }

    /* renamed from: k */
    void m21586k() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((C0273b) childAt.getLayoutParams()).f1181b != 2 && childAt != this.f1153e) {
                removeViewAt(childCount);
                this.f1139F.add(childAt);
            }
        }
    }

    /* renamed from: l */
    void m21585l() {
        for (int size = this.f1139F.size() - 1; size >= 0; size--) {
            addView(this.f1139F.get(size));
        }
        this.f1139F.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1148O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1137D = false;
        }
        if (!this.f1137D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1137D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1137D = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01d2, code lost:
        if (r0 != false) goto L43;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1593
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
        int i5 = 0;
        int i6 = 0;
        int[] iArr = this.f1140G;
        if (C0327av.m21389a(this)) {
            objArr = null;
            objArr2 = 1;
        } else {
            objArr = 1;
            objArr2 = null;
        }
        int i7 = 0;
        if (m21613a(this.f1156h)) {
            m21611a(this.f1156h, i, 0, i2, 0, this.f1164p);
            i7 = this.f1156h.getMeasuredWidth() + m21599b(this.f1156h);
            i5 = Math.max(0, this.f1156h.getMeasuredHeight() + m21595c(this.f1156h));
            i6 = View.combineMeasuredStates(0, this.f1156h.getMeasuredState());
        }
        int i8 = i7;
        int i9 = i6;
        int i10 = i5;
        if (m21613a(this.f1149a)) {
            m21611a(this.f1149a, i, 0, i2, 0, this.f1164p);
            i8 = this.f1149a.getMeasuredWidth() + m21599b(this.f1149a);
            i10 = Math.max(i5, this.f1149a.getMeasuredHeight() + m21595c(this.f1149a));
            i9 = View.combineMeasuredStates(i6, this.f1149a.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i8);
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i8);
        int i11 = 0;
        int i12 = i9;
        int i13 = i10;
        if (m21613a(this.f1153e)) {
            m21611a(this.f1153e, i, max, i2, 0, this.f1164p);
            i11 = this.f1153e.getMeasuredWidth() + m21599b(this.f1153e);
            i13 = Math.max(i10, this.f1153e.getMeasuredHeight() + m21595c(this.f1153e));
            i12 = View.combineMeasuredStates(i9, this.f1153e.getMeasuredState());
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i11);
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i11);
        int i14 = max2;
        int i15 = i12;
        int i16 = i13;
        if (m21613a(this.f1150b)) {
            i14 = max2 + m21610a(this.f1150b, i, max2, i2, 0, iArr);
            i16 = Math.max(i13, this.f1150b.getMeasuredHeight() + m21595c(this.f1150b));
            i15 = View.combineMeasuredStates(i12, this.f1150b.getMeasuredState());
        }
        int i17 = i14;
        int i18 = i15;
        int i19 = i16;
        if (m21613a(this.f1157i)) {
            i17 = i14 + m21610a(this.f1157i, i, i14, i2, 0, iArr);
            i19 = Math.max(i16, this.f1157i.getMeasuredHeight() + m21595c(this.f1157i));
            i18 = View.combineMeasuredStates(i15, this.f1157i.getMeasuredState());
        }
        int childCount = getChildCount();
        int i20 = i18;
        int i21 = i19;
        int i22 = 0;
        int i23 = i17;
        while (i22 < childCount) {
            View childAt = getChildAt(i22);
            if (((C0273b) childAt.getLayoutParams()).f1181b != 0) {
                int i24 = i20;
                i3 = i21;
                i4 = i24;
            } else if (!m21613a(childAt)) {
                int i25 = i20;
                i3 = i21;
                i4 = i25;
            } else {
                i23 += m21610a(childAt, i, i23, i2, 0, iArr);
                int max3 = Math.max(i21, childAt.getMeasuredHeight() + m21595c(childAt));
                i4 = View.combineMeasuredStates(i20, childAt.getMeasuredState());
                i3 = max3;
            }
            i22++;
            int i26 = i4;
            i21 = i3;
            i20 = i26;
        }
        int i27 = 0;
        int i28 = 0;
        int i29 = this.f1167s + this.f1168t;
        int i30 = this.f1165q + this.f1166r;
        int i31 = i20;
        if (m21613a(this.f1154f)) {
            m21610a(this.f1154f, i, i23 + i30, i2, i29, iArr);
            i27 = m21599b(this.f1154f) + this.f1154f.getMeasuredWidth();
            i28 = this.f1154f.getMeasuredHeight() + m21595c(this.f1154f);
            i31 = View.combineMeasuredStates(i20, this.f1154f.getMeasuredState());
        }
        int i32 = i28;
        int i33 = i27;
        int i34 = i31;
        if (m21613a(this.f1155g)) {
            i33 = Math.max(i27, m21610a(this.f1155g, i, i23 + i30, i2, i29 + i28, iArr));
            i32 = i28 + this.f1155g.getMeasuredHeight() + m21595c(this.f1155g);
            i34 = View.combineMeasuredStates(i31, this.f1155g.getMeasuredState());
        }
        int max4 = Math.max(i21, i32);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(i33 + i23 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i34);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(max4 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i34 << 16);
        if (m21579r()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof C0275d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0275d c0275d = (C0275d) parcelable;
        super.onRestoreInstanceState(c0275d.m20121a());
        C0199g m21743d = this.f1153e != null ? this.f1153e.m21743d() : null;
        if (c0275d.f1182a != 0 && this.f1144K != null && m21743d != null && (findItem = m21743d.findItem(c0275d.f1182a)) != null) {
            findItem.expandActionView();
        }
        if (!c0275d.f1183b) {
            return;
        }
        m21580q();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m21578s();
        C0304ah c0304ah = this.f1169u;
        if (i != 1) {
            z = false;
        }
        c0304ah.m21483a(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0275d c0275d = new C0275d(super.onSaveInstanceState());
        if (this.f1144K != null && this.f1144K.f1179b != null) {
            c0275d.f1182a = this.f1144K.f1179b.getItemId();
        }
        c0275d.f1183b = m21602b();
        return c0275d;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1136C = false;
        }
        if (!this.f1136C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1136C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1136C = false;
            return true;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21588i();
        }
        if (this.f1149a != null) {
            this.f1149a.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C0094a.m22275b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m21588i();
            this.f1149a.setImageDrawable(drawable);
        } else if (this.f1149a == null) {
        } else {
            this.f1149a.setImageDrawable(this.f1158j);
        }
    }

    public void setCollapsible(boolean z) {
        this.f1147N = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1171w) {
            this.f1171w = i2;
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
        if (i2 != this.f1170v) {
            this.f1170v = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setLogo(int i) {
        setLogo(C0094a.m22275b(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m21584m();
            if (!m21593d(this.f1157i)) {
                m21608a((View) this.f1157i, true);
            }
        } else if (this.f1157i != null && m21593d(this.f1157i)) {
            removeView(this.f1157i);
            this.f1139F.remove(this.f1157i);
        }
        if (this.f1157i != null) {
            this.f1157i.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21584m();
        }
        if (this.f1157i != null) {
            this.f1157i.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21581p();
        }
        if (this.f1156h != null) {
            this.f1156h.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0094a.m22275b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m21581p();
            if (!m21593d(this.f1156h)) {
                m21608a((View) this.f1156h, true);
            }
        } else if (this.f1156h != null && m21593d(this.f1156h)) {
            removeView(this.f1156h);
            this.f1139F.remove(this.f1156h);
        }
        if (this.f1156h != null) {
            this.f1156h.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m21581p();
        this.f1156h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0274c abstractC0274c) {
        this.f1152d = abstractC0274c;
    }

    public void setOverflowIcon(Drawable drawable) {
        m21583n();
        this.f1153e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f1161m != i) {
            this.f1161m = i;
            if (i == 0) {
                this.f1160l = getContext();
            } else {
                this.f1160l = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1155g == null) {
                Context context = getContext();
                this.f1155g = new AppCompatTextView(context);
                this.f1155g.setSingleLine();
                this.f1155g.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f1163o != 0) {
                    this.f1155g.setTextAppearance(context, this.f1163o);
                }
                if (this.f1135B != null) {
                    this.f1155g.setTextColor(this.f1135B);
                }
            }
            if (!m21593d(this.f1155g)) {
                m21608a((View) this.f1155g, true);
            }
        } else if (this.f1155g != null && m21593d(this.f1155g)) {
            removeView(this.f1155g);
            this.f1139F.remove(this.f1155g);
        }
        if (this.f1155g != null) {
            this.f1155g.setText(charSequence);
        }
        this.f1174z = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f1135B = colorStateList;
        if (this.f1155g != null) {
            this.f1155g.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1154f == null) {
                Context context = getContext();
                this.f1154f = new AppCompatTextView(context);
                this.f1154f.setSingleLine();
                this.f1154f.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f1162n != 0) {
                    this.f1154f.setTextAppearance(context, this.f1162n);
                }
                if (this.f1134A != null) {
                    this.f1154f.setTextColor(this.f1134A);
                }
            }
            if (!m21593d(this.f1154f)) {
                m21608a((View) this.f1154f, true);
            }
        } else if (this.f1154f != null && m21593d(this.f1154f)) {
            removeView(this.f1154f);
            this.f1139F.remove(this.f1154f);
        }
        if (this.f1154f != null) {
            this.f1154f.setText(charSequence);
        }
        this.f1173y = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f1168t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f1166r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f1165q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f1167s = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f1134A = colorStateList;
        if (this.f1154f != null) {
            this.f1154f.setTextColor(colorStateList);
        }
    }
}
