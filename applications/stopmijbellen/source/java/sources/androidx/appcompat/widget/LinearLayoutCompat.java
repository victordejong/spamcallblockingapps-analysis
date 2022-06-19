package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
import p117h8.C3035k;
import p163m0.C3589v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    public boolean f617a;

    /* renamed from: b */
    public int f618b;

    /* renamed from: c */
    public int f619c;

    /* renamed from: d */
    public int f620d;

    /* renamed from: e */
    public int f621e;

    /* renamed from: f */
    public int f622f;

    /* renamed from: g */
    public float f623g;

    /* renamed from: h */
    public boolean f624h;

    /* renamed from: i */
    public int[] f625i;

    /* renamed from: j */
    public int[] f626j;

    /* renamed from: k */
    public Drawable f627k;

    /* renamed from: l */
    public int f628l;

    /* renamed from: m */
    public int f629m;

    /* renamed from: n */
    public int f630n;

    /* renamed from: o */
    public int f631o;

    /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$a.class */
    public static class C0164a extends LinearLayout.LayoutParams {
        public C0164a(int i, int i2) {
            super(i, i2);
        }

        public C0164a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0164a(ViewGroup.LayoutParams layoutParams) {
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
        this.f617a = true;
        this.f618b = -1;
        this.f619c = 0;
        this.f621e = 8388659;
        int[] iArr = C3035k.f10228o;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C3589v.m2104t(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = obtainStyledAttributes.getInt(1, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f623g = obtainStyledAttributes.getFloat(4, -1.0f);
        this.f618b = obtainStyledAttributes.getInt(3, -1);
        this.f624h = obtainStyledAttributes.getBoolean(7, false);
        setDividerDrawable((!obtainStyledAttributes.hasValue(5) || (resourceId = obtainStyledAttributes.getResourceId(5, 0)) == 0) ? obtainStyledAttributes.getDrawable(5) : C2788a.m3015b(context, resourceId));
        this.f630n = obtainStyledAttributes.getInt(8, 0);
        this.f631o = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0164a;
    }

    /* renamed from: f */
    public void m8656f(Canvas canvas, int i) {
        this.f627k.setBounds(getPaddingLeft() + this.f631o, i, (getWidth() - getPaddingRight()) - this.f631o, this.f629m + i);
        this.f627k.draw(canvas);
    }

    /* renamed from: g */
    public void m8655g(Canvas canvas, int i) {
        this.f627k.setBounds(i, getPaddingTop() + this.f631o, this.f628l + i, (getHeight() - getPaddingBottom()) - this.f631o);
        this.f627k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f618b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f618b;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f618b != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.f619c;
        int i3 = i2;
        if (this.f620d == 1) {
            int i4 = this.f621e & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f622f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f622f) / 2);
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((C0164a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f618b;
    }

    public Drawable getDividerDrawable() {
        return this.f627k;
    }

    public int getDividerPadding() {
        return this.f631o;
    }

    public int getDividerWidth() {
        return this.f628l;
    }

    public int getGravity() {
        return this.f621e;
    }

    public int getOrientation() {
        return this.f620d;
    }

    public int getShowDividers() {
        return this.f630n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f623g;
    }

    /* renamed from: h */
    public C0164a generateDefaultLayoutParams() {
        int i = this.f620d;
        if (i == 0) {
            return new C0164a(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new C0164a(-1, -2);
    }

    /* renamed from: i */
    public C0164a generateLayoutParams(AttributeSet attributeSet) {
        return new C0164a(getContext(), attributeSet);
    }

    /* renamed from: j */
    public C0164a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0164a(layoutParams);
    }

    /* renamed from: k */
    public boolean m8651k(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.f630n & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            boolean z2 = false;
            if ((this.f630n & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            boolean z3 = false;
            if ((this.f630n & 2) != 0) {
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

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        if (this.f627k == null) {
            return;
        }
        if (this.f620d == 1) {
            int virtualChildCount = getVirtualChildCount();
            for (int i4 = 0; i4 < virtualChildCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt != null && childAt.getVisibility() != 8 && m8651k(i4)) {
                    m8656f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C0164a) childAt.getLayoutParams())).topMargin) - this.f629m);
                }
            }
            if (!m8651k(virtualChildCount)) {
                return;
            }
            View childAt2 = getChildAt(virtualChildCount - 1);
            m8656f(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f629m : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C0164a) childAt2.getLayoutParams())).bottomMargin);
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean m8493a = C0236h1.m8493a(this);
        for (int i5 = 0; i5 < virtualChildCount2; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m8651k(i5)) {
                C0164a c0164a = (C0164a) childAt3.getLayoutParams();
                m8655g(canvas, m8493a ? childAt3.getRight() + ((LinearLayout.LayoutParams) c0164a).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c0164a).leftMargin) - this.f628l);
            }
        }
        if (!m8651k(virtualChildCount2)) {
            return;
        }
        View childAt4 = getChildAt(virtualChildCount2 - 1);
        if (childAt4 == null) {
            if (m8493a) {
                i = getPaddingLeft();
                m8655g(canvas, i);
            }
            i2 = getWidth() - getPaddingRight();
            i3 = this.f628l;
            i = i2 - i3;
            m8655g(canvas, i);
        }
        C0164a c0164a2 = (C0164a) childAt4.getLayoutParams();
        if (!m8493a) {
            i = childAt4.getRight() + ((LinearLayout.LayoutParams) c0164a2).rightMargin;
            m8655g(canvas, i);
        }
        i2 = childAt4.getLeft() - ((LinearLayout.LayoutParams) c0164a2).leftMargin;
        i3 = this.f628l;
        i = i2 - i3;
        m8655g(canvas, i);
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

    /* JADX WARN: Removed duplicated region for block: B:32:0x0139  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:238:0x089e  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x08db  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x093e  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x095a  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0ee5  */
    /* JADX WARN: Removed duplicated region for block: B:449:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 3911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z) {
        this.f617a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f618b = i;
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("base aligned child index out of range (0, ");
        m8752j.append(getChildCount());
        m8752j.append(")");
        throw new IllegalArgumentException(m8752j.toString());
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f627k) {
            return;
        }
        this.f627k = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f628l = drawable.getIntrinsicWidth();
            this.f629m = drawable.getIntrinsicHeight();
        } else {
            this.f628l = 0;
            this.f629m = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f631o = i;
    }

    public void setGravity(int i) {
        if (this.f621e != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 0) {
                i3 = i2 | 48;
            }
            this.f621e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f621e;
        if ((8388615 & i3) != i2) {
            this.f621e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f624h = z;
    }

    public void setOrientation(int i) {
        if (this.f620d != i) {
            this.f620d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f630n) {
            requestLayout();
        }
        this.f630n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        int i3 = this.f621e;
        if ((i3 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) != i2) {
            this.f621e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f623g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
