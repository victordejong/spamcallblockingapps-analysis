package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import java.util.WeakHashMap;
import p090f3.C2733g;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p262v3.C4603d;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AbstractC0320b {

    /* renamed from: t */
    public static final /* synthetic */ int f6621t = 0;

    /* renamed from: s */
    public boolean f6622s;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.AbstractC0321c<T> {

        /* renamed from: a */
        public Rect f6623a;

        /* renamed from: b */
        public boolean f6624b;

        /* renamed from: c */
        public boolean f6625c;

        public ExtendedFloatingActionButtonBehavior() {
            this.f6624b = false;
            this.f6625c = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11030k);
            this.f6624b = obtainStyledAttributes.getBoolean(0, false);
            this.f6625c = obtainStyledAttributes.getBoolean(1, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo4573a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: c */
        public void mo4487c(CoordinatorLayout.C0324f c0324f) {
            if (c0324f.f1465h == 0) {
                c0324f.f1465h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: d */
        public boolean mo4490d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m4588t(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                return false;
            }
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (!(layoutParams instanceof CoordinatorLayout.C0324f ? ((CoordinatorLayout.C0324f) layoutParams).f1458a instanceof BottomSheetBehavior : false)) {
                return false;
            }
            m4587u(view2, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: h */
        public boolean mo2976h(CoordinatorLayout coordinatorLayout, View view, int i) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            List<View> m8336e = coordinatorLayout.m8336e(extendedFloatingActionButton);
            int size = m8336e.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = m8336e.get(i2);
                if (view2 instanceof AppBarLayout) {
                    m4588t(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                } else {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.C0324f ? ((CoordinatorLayout.C0324f) layoutParams).f1458a instanceof BottomSheetBehavior : false) {
                        m4587u(view2, extendedFloatingActionButton);
                    }
                }
            }
            coordinatorLayout.m8328s(extendedFloatingActionButton, i);
            return true;
        }

        /* renamed from: s */
        public final boolean m4589s(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f6624b || this.f6625c) && ((CoordinatorLayout.C0324f) extendedFloatingActionButton.getLayoutParams()).f1463f == view.getId();
        }

        /* renamed from: t */
        public final boolean m4588t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m4589s(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f6623a == null) {
                this.f6623a = new Rect();
            }
            Rect rect = this.f6623a;
            C4603d.m720a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                if (this.f6625c) {
                    int i = ExtendedFloatingActionButton.f6621t;
                } else {
                    int i2 = ExtendedFloatingActionButton.f6621t;
                }
                throw null;
            }
            if (this.f6625c) {
                int i3 = ExtendedFloatingActionButton.f6621t;
            } else {
                int i4 = ExtendedFloatingActionButton.f6621t;
            }
            throw null;
        }

        /* renamed from: u */
        public final boolean m4587u(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m4589s(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0324f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                if (this.f6625c) {
                    int i = ExtendedFloatingActionButton.f6621t;
                } else {
                    int i2 = ExtendedFloatingActionButton.f6621t;
                }
                throw null;
            }
            if (this.f6625c) {
                int i3 = ExtendedFloatingActionButton.f6621t;
            } else {
                int i4 = ExtendedFloatingActionButton.f6621t;
            }
            throw null;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
    public static final class C1772a extends Property<View, Float> {
        public C1772a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b.class */
    public static final class C1773b extends Property<View, Float> {
        public C1773b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c.class */
    public static final class C1774c extends Property<View, Float> {
        public C1774c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return Float.valueOf(C3589v.C3594e.m2069f(view));
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            int intValue = f.intValue();
            int paddingTop = view2.getPaddingTop();
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3594e.m2064k(view2, intValue, paddingTop, C3589v.C3594e.m2070e(view2), view2.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d.class */
    public static final class C1775d extends Property<View, Float> {
        public C1775d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return Float.valueOf(C3589v.C3594e.m2070e(view));
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3594e.m2064k(view2, C3589v.C3594e.m2069f(view2), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    }

    static {
        new C1772a(Float.class, "width");
        new C1773b(Float.class, "height");
        new C1774c(Float.class, "paddingStart");
        new C1775d(Float.class, "paddingEnd");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0320b
    public CoordinatorLayout.AbstractC0321c<ExtendedFloatingActionButton> getBehavior() {
        return null;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        return 0;
    }

    public C2733g getExtendMotionSpec() {
        throw null;
    }

    public C2733g getHideMotionSpec() {
        throw null;
    }

    public C2733g getShowMotionSpec() {
        throw null;
    }

    public C2733g getShrinkMotionSpec() {
        throw null;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f6622s = z;
    }

    public void setExtendMotionSpec(C2733g c2733g) {
        throw null;
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(C2733g.m3193b(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (!z) {
            return;
        }
        throw null;
    }

    public void setHideMotionSpec(C2733g c2733g) {
        throw null;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C2733g.m3193b(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
    }

    public void setShowMotionSpec(C2733g c2733g) {
        throw null;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C2733g.m3193b(getContext(), i));
    }

    public void setShrinkMotionSpec(C2733g c2733g) {
        throw null;
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(C2733g.m3193b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        getTextColors();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        getTextColors();
    }
}
