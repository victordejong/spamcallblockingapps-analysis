package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    public boolean f309a;

    /* renamed from: b */
    public int f310b;

    /* renamed from: c */
    public int f311c;

    /* renamed from: d */
    public int f312d;

    /* renamed from: e */
    public int f313e;

    /* renamed from: f */
    public int f314f;

    /* renamed from: g */
    public float f315g;

    /* renamed from: h */
    public boolean f316h;

    /* renamed from: i */
    public int[] f317i;

    /* renamed from: j */
    public int[] f318j;

    /* renamed from: k */
    public Drawable f319k;

    /* renamed from: l */
    public int f320l;

    /* renamed from: m */
    public int f321m;

    /* renamed from: n */
    public int f322n;

    /* renamed from: o */
    public int f323o;

    /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$a.class */
    public static class C0057a extends LinearLayout.LayoutParams {
        public C0057a(int i, int i2) {
            super(i, i2);
        }

        public C0057a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0057a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int resourceId;
        this.f309a = true;
        this.f310b = -1;
        this.f311c = 0;
        this.f313e = 8388659;
        int[] iArr = C0032R.styleable.LinearLayoutCompat;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C26614s.m1565p(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = obtainStyledAttributes.getInt(C0032R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(C0032R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(C0032R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f315g = obtainStyledAttributes.getFloat(C0032R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f310b = obtainStyledAttributes.getInt(C0032R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f316h = obtainStyledAttributes.getBoolean(C0032R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        int i4 = C0032R.styleable.LinearLayoutCompat_divider;
        setDividerDrawable((!obtainStyledAttributes.hasValue(i4) || (resourceId = obtainStyledAttributes.getResourceId(i4, 0)) == 0) ? obtainStyledAttributes.getDrawable(i4) : C25440a.m3540a(context, resourceId));
        this.f322n = obtainStyledAttributes.getInt(C0032R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f323o = obtainStyledAttributes.getDimensionPixelSize(C0032R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0057a;
    }

    /* renamed from: f */
    public void m43132f(Canvas canvas, int i) {
        this.f319k.setBounds(getPaddingLeft() + this.f323o, i, (getWidth() - getPaddingRight()) - this.f323o, this.f321m + i);
        this.f319k.draw(canvas);
    }

    /* renamed from: g */
    public void m43131g(Canvas canvas, int i) {
        this.f319k.setBounds(i, getPaddingTop() + this.f323o, this.f320l + i, (getHeight() - getPaddingBottom()) - this.f323o);
        this.f319k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f310b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f310b;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f310b != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.f311c;
        int i3 = i2;
        if (this.f312d == 1) {
            int i4 = this.f313e & 112;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f314f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f314f) / 2);
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((C0057a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f310b;
    }

    public Drawable getDividerDrawable() {
        return this.f319k;
    }

    public int getDividerPadding() {
        return this.f323o;
    }

    public int getDividerWidth() {
        return this.f320l;
    }

    public int getGravity() {
        return this.f313e;
    }

    public int getOrientation() {
        return this.f312d;
    }

    public int getShowDividers() {
        return this.f322n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f315g;
    }

    /* renamed from: h */
    public C0057a generateDefaultLayoutParams() {
        int i = this.f312d;
        if (i == 0) {
            return new C0057a(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new C0057a(-1, -2);
    }

    /* renamed from: i */
    public C0057a generateLayoutParams(AttributeSet attributeSet) {
        return new C0057a(getContext(), attributeSet);
    }

    /* renamed from: j */
    public C0057a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0057a(layoutParams);
    }

    /* renamed from: k */
    public int m43127k() {
        return 0;
    }

    /* renamed from: l */
    public int m43126l() {
        return 0;
    }

    /* renamed from: m */
    public int m43125m() {
        return 0;
    }

    /* renamed from: n */
    public boolean m43124n(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.f322n & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            boolean z2 = false;
            if ((this.f322n & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            boolean z3 = false;
            if ((this.f322n & 2) != 0) {
                while (true) {
                    i--;
                    z3 = false;
                    if (i < 0) {
                        break;
                    } else if (getChildAt(i).getVisibility() != 8) {
                        z3 = true;
                        break;
                    }
                }
            }
            return z3;
        }
    }

    /* renamed from: o */
    public void m43123o(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        if (this.f319k == null) {
            return;
        }
        if (this.f312d == 1) {
            int virtualChildCount = getVirtualChildCount();
            for (int i4 = 0; i4 < virtualChildCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt != null && childAt.getVisibility() != 8 && m43124n(i4)) {
                    m43132f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C0057a) childAt.getLayoutParams())).topMargin) - this.f321m);
                }
            }
            if (!m43124n(virtualChildCount)) {
                return;
            }
            View childAt2 = getChildAt(virtualChildCount - 1);
            m43132f(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f321m : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C0057a) childAt2.getLayoutParams())).bottomMargin);
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean m3244a = C25558x0.m3244a(this);
        for (int i5 = 0; i5 < virtualChildCount2; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m43124n(i5)) {
                C0057a c0057a = (C0057a) childAt3.getLayoutParams();
                m43131g(canvas, m3244a ? childAt3.getRight() + ((LinearLayout.LayoutParams) c0057a).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c0057a).leftMargin) - this.f320l);
            }
        }
        if (!m43124n(virtualChildCount2)) {
            return;
        }
        View childAt4 = getChildAt(virtualChildCount2 - 1);
        if (childAt4 == null) {
            if (m3244a) {
                i = getPaddingLeft();
                m43131g(canvas, i);
            }
            i2 = getWidth() - getPaddingRight();
            i3 = this.f320l;
            i = i2 - i3;
            m43131g(canvas, i);
        }
        C0057a c0057a2 = (C0057a) childAt4.getLayoutParams();
        if (!m3244a) {
            i = childAt4.getRight() + ((LinearLayout.LayoutParams) c0057a2).rightMargin;
            m43131g(canvas, i);
        }
        i2 = childAt4.getLeft() - ((LinearLayout.LayoutParams) c0057a2).leftMargin;
        i3 = this.f320l;
        i = i2 - i3;
        m43131g(canvas, i);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0138  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 921
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:247:0x09b3  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0a15  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0a2e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 4125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    /* renamed from: p */
    public int m43122p() {
        return 0;
    }

    public void setBaselineAligned(boolean z) {
        this.f309a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f310b = i;
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("base aligned child index out of range (0, ");
        m8728C.append(getChildCount());
        m8728C.append(")");
        throw new IllegalArgumentException(m8728C.toString());
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f319k) {
            return;
        }
        this.f319k = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f320l = drawable.getIntrinsicWidth();
            this.f321m = drawable.getIntrinsicHeight();
        } else {
            this.f320l = 0;
            this.f321m = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f323o = i;
    }

    public void setGravity(int i) {
        if (this.f313e != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f313e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f313e;
        if ((8388615 & i3) != i2) {
            this.f313e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f316h = z;
    }

    public void setOrientation(int i) {
        if (this.f312d != i) {
            this.f312d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f322n) {
            requestLayout();
        }
        this.f322n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f313e;
        if ((i3 & 112) != i2) {
            this.f313e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f315g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
