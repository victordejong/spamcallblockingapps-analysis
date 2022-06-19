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
import androidx.appcompat.C0142a;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    private boolean f1222a;

    /* renamed from: b */
    private int f1223b;

    /* renamed from: c */
    private int f1224c;

    /* renamed from: d */
    private int f1225d;

    /* renamed from: e */
    private int f1226e;

    /* renamed from: f */
    private int f1227f;

    /* renamed from: g */
    private float f1228g;

    /* renamed from: h */
    private boolean f1229h;

    /* renamed from: i */
    private int[] f1230i;

    /* renamed from: j */
    private int[] f1231j;

    /* renamed from: k */
    private Drawable f1232k;

    /* renamed from: l */
    private int f1233l;

    /* renamed from: m */
    private int f1234m;

    /* renamed from: n */
    private int f1235n;

    /* renamed from: o */
    private int f1236o;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: g */
        public float f1237g;

        /* renamed from: h */
        public int f1238h;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1238h = -1;
            this.f1237g = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.f1238h = -1;
            this.f1237g = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1238h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.LinearLayoutCompat_Layout);
            this.f1237g = obtainStyledAttributes.getFloat(C0142a.C0152j.LinearLayoutCompat_Layout_android_layout_weight, BitmapDescriptorFactory.HUE_RED);
            this.f1238h = obtainStyledAttributes.getInt(C0142a.C0152j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1238h = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1238h = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f1238h = -1;
            this.f1237g = layoutParams.f1237g;
            this.f1238h = layoutParams.f1238h;
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
        this.f1222a = true;
        this.f1223b = -1;
        this.f1224c = 0;
        this.f1226e = 8388659;
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.LinearLayoutCompat, i, 0);
        C0926v.m44133a(this, context, C0142a.C0152j.LinearLayoutCompat, attributeSet, m45804a.f1491a, i);
        int m45809a = m45804a.m45809a(C0142a.C0152j.LinearLayoutCompat_android_orientation, -1);
        if (m45809a >= 0) {
            setOrientation(m45809a);
        }
        int m45809a2 = m45804a.m45809a(C0142a.C0152j.LinearLayoutCompat_android_gravity, -1);
        if (m45809a2 >= 0) {
            setGravity(m45809a2);
        }
        boolean m45807a = m45804a.m45807a(C0142a.C0152j.LinearLayoutCompat_android_baselineAligned, true);
        if (!m45807a) {
            setBaselineAligned(m45807a);
        }
        this.f1228g = m45804a.f1491a.getFloat(C0142a.C0152j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1223b = m45804a.m45809a(C0142a.C0152j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1229h = m45804a.m45807a(C0142a.C0152j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(m45804a.m45810a(C0142a.C0152j.LinearLayoutCompat_divider));
        this.f1235n = m45804a.m45809a(C0142a.C0152j.LinearLayoutCompat_showDividers, 0);
        this.f1236o = m45804a.m45796e(C0142a.C0152j.LinearLayoutCompat_dividerPadding, 0);
        m45804a.f1491a.recycle();
    }

    /* renamed from: a */
    private void m45947a(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* renamed from: a */
    private void m45946a(Canvas canvas, int i) {
        this.f1232k.setBounds(getPaddingLeft() + this.f1236o, i, (getWidth() - getPaddingRight()) - this.f1236o, this.f1234m + i);
        this.f1232k.draw(canvas);
    }

    /* renamed from: a */
    private void m45944a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0357, code lost:
        if (r0[3] != (-1)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x05f5, code lost:
        if (r0 < 0) goto L166;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02f1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m45943b(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m45943b(int, int):void");
    }

    /* renamed from: b */
    private void m45942b(Canvas canvas, int i) {
        this.f1232k.setBounds(i, getPaddingTop() + this.f1236o, this.f1233l + i, (getHeight() - getPaddingBottom()) - this.f1236o);
        this.f1232k.draw(canvas);
    }

    /* renamed from: b */
    private static void m45941b(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: a */
    public final boolean m45948a(int i) {
        if (i == 0) {
            return (this.f1235n & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.f1235n & 4) != 0;
        } else {
            boolean z = false;
            if ((this.f1235n & 2) != 0) {
                while (true) {
                    i--;
                    z = false;
                    if (i < 0) {
                        break;
                    } else if (getChildAt(i).getVisibility() != 8) {
                        z = true;
                        break;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: b */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f1225d;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new LayoutParams(-1, -2);
    }

    /* renamed from: e */
    public final Drawable m45938e() {
        return this.f1232k;
    }

    /* renamed from: f */
    public final int m45937f() {
        return this.f1233l;
    }

    /* renamed from: g */
    public final int m45936g() {
        return this.f1226e;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f1223b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f1223b;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f1223b != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.f1224c;
        int i3 = i2;
        if (this.f1225d == 1) {
            int i4 = this.f1226e & 112;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f1227f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1227f) / 2);
            }
        }
        return i3 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        if (this.f1232k == null) {
            return;
        }
        if (this.f1225d == 1) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt != null && childAt.getVisibility() != 8 && m45948a(i4)) {
                    m45946a(canvas, (childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin) - this.f1234m);
                }
            }
            if (!m45948a(childCount)) {
                return;
            }
            View childAt2 = getChildAt(childCount - 1);
            m45946a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f1234m : childAt2.getBottom() + ((LayoutParams) childAt2.getLayoutParams()).bottomMargin);
            return;
        }
        int childCount2 = getChildCount();
        boolean m45770a = C0380ah.m45770a(this);
        for (int i5 = 0; i5 < childCount2; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m45948a(i5)) {
                LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                m45942b(canvas, m45770a ? childAt3.getRight() + layoutParams.rightMargin : (childAt3.getLeft() - layoutParams.leftMargin) - this.f1233l);
            }
        }
        if (!m45948a(childCount2)) {
            return;
        }
        View childAt4 = getChildAt(childCount2 - 1);
        if (childAt4 == null) {
            if (m45770a) {
                i = getPaddingLeft();
                m45942b(canvas, i);
            }
            i2 = getWidth() - getPaddingRight();
            i3 = this.f1233l;
            i = i2 - i3;
            m45942b(canvas, i);
        }
        LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
        if (!m45770a) {
            i = childAt4.getRight() + layoutParams2.rightMargin;
            m45942b(canvas, i);
        }
        i2 = childAt4.getLeft() - layoutParams2.leftMargin;
        i3 = this.f1233l;
        i = i2 - i3;
        m45942b(canvas, i);
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

    /* JADX WARN: Removed duplicated region for block: B:32:0x0134  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r7, int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x04ac, code lost:
        if (r0 < 0) goto L135;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 1499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z) {
        this.f1222a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f1223b = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1232k) {
            return;
        }
        this.f1232k = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f1233l = drawable.getIntrinsicWidth();
            this.f1234m = drawable.getIntrinsicHeight();
        } else {
            this.f1233l = 0;
            this.f1234m = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f1236o = i;
    }

    public void setGravity(int i) {
        if (this.f1226e != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f1226e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f1226e;
        if ((8388615 & i3) != i2) {
            this.f1226e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1229h = z;
    }

    public void setOrientation(int i) {
        if (this.f1225d != i) {
            this.f1225d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f1235n) {
            requestLayout();
        }
        this.f1235n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f1226e;
        if ((i3 & 112) != i2) {
            this.f1226e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f1228g = Math.max((float) BitmapDescriptorFactory.HUE_RED, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
