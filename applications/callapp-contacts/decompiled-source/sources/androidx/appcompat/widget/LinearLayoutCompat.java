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
import androidx.appcompat.a;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f958a;

    /* renamed from: b  reason: collision with root package name */
    private int f959b;

    /* renamed from: c  reason: collision with root package name */
    private int f960c;

    /* renamed from: d  reason: collision with root package name */
    private int f961d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private int[] i;
    private int[] j;
    private Drawable k;
    private int l;
    private int m;
    private int n;
    private int o;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float g;
        public int h;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.h = -1;
            this.g = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.h = -1;
            this.g = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.LinearLayoutCompat_Layout);
            this.g = obtainStyledAttributes.getFloat(a.j.LinearLayoutCompat_Layout_android_layout_weight, BitmapDescriptorFactory.HUE_RED);
            this.h = obtainStyledAttributes.getInt(a.j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.h = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.h = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.h = -1;
            this.g = layoutParams.g;
            this.h = layoutParams.h;
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
        this.f958a = true;
        this.f959b = -1;
        this.f960c = 0;
        this.e = 8388659;
        ab a2 = ab.a(context, attributeSet, a.j.LinearLayoutCompat, i, 0);
        v.a(this, context, a.j.LinearLayoutCompat, attributeSet, a2.f1044a, i);
        int a3 = a2.a(a.j.LinearLayoutCompat_android_orientation, -1);
        if (a3 >= 0) {
            setOrientation(a3);
        }
        int a4 = a2.a(a.j.LinearLayoutCompat_android_gravity, -1);
        if (a4 >= 0) {
            setGravity(a4);
        }
        boolean a5 = a2.a(a.j.LinearLayoutCompat_android_baselineAligned, true);
        if (!a5) {
            setBaselineAligned(a5);
        }
        this.g = a2.f1044a.getFloat(a.j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f959b = a2.a(a.j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.h = a2.a(a.j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a2.a(a.j.LinearLayoutCompat_divider));
        this.n = a2.a(a.j.LinearLayoutCompat_showDividers, 0);
        this.o = a2.e(a.j.LinearLayoutCompat_dividerPadding, 0);
        a2.f1044a.recycle();
    }

    private void a(int i, int i2) {
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

    private void a(Canvas canvas, int i) {
        this.k.setBounds(getPaddingLeft() + this.o, i, (getWidth() - getPaddingRight()) - this.o, this.m + i);
        this.k.draw(canvas);
    }

    private void a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0357, code lost:
        if (r0[3] != (-1)) goto L_0x035d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x05f5, code lost:
        if (r0 < 0) goto L_0x05e3;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.b(int, int):void");
    }

    private void b(Canvas canvas, int i) {
        this.k.setBounds(i, getPaddingTop() + this.o, this.l + i, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    private static void b(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(int i) {
        if (i == 0) {
            return (this.n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.n & 4) != 0;
        }
        boolean z = false;
        if ((this.n & 2) != 0) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f961d;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    public final Drawable e() {
        return this.k;
    }

    public final int f() {
        return this.l;
    }

    public final int g() {
        return this.e;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f959b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f959b;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.f960c;
                int i3 = i2;
                if (this.f961d == 1) {
                    int i4 = this.e & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2);
                    }
                }
                return i3 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
            } else if (this.f959b == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        if (this.k != null) {
            if (this.f961d == 1) {
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !a(i4))) {
                        a(canvas, (childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin) - this.m);
                    }
                }
                if (a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.m : childAt2.getBottom() + ((LayoutParams) childAt2.getLayoutParams()).bottomMargin);
                    return;
                }
                return;
            }
            int childCount2 = getChildCount();
            boolean a2 = ah.a(this);
            for (int i5 = 0; i5 < childCount2; i5++) {
                View childAt3 = getChildAt(i5);
                if (!(childAt3 == null || childAt3.getVisibility() == 8 || !a(i5))) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    b(canvas, a2 ? childAt3.getRight() + layoutParams.rightMargin : (childAt3.getLeft() - layoutParams.leftMargin) - this.l);
                }
            }
            if (a(childCount2)) {
                View childAt4 = getChildAt(childCount2 - 1);
                if (childAt4 != null) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    if (a2) {
                        i2 = childAt4.getLeft() - layoutParams2.leftMargin;
                        i3 = this.l;
                        i = i2 - i3;
                        b(canvas, i);
                    }
                    i = childAt4.getRight() + layoutParams2.rightMargin;
                    b(canvas, i);
                } else if (a2) {
                    i = getPaddingLeft();
                    b(canvas, i);
                } else {
                    i2 = getWidth() - getPaddingRight();
                    i3 = this.l;
                    i = i2 - i3;
                    b(canvas, i);
                }
            }
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x04ac, code lost:
        if (r0 < 0) goto L_0x0496;
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
        this.f958a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f959b = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.k) {
            this.k = drawable;
            boolean z = false;
            if (drawable != null) {
                this.l = drawable.getIntrinsicWidth();
                this.m = drawable.getIntrinsicHeight();
            } else {
                this.l = 0;
                this.m = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.o = i;
    }

    public void setGravity(int i) {
        if (this.e != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.e;
        if ((8388615 & i3) != i2) {
            this.e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.h = z;
    }

    public void setOrientation(int i) {
        if (this.f961d != i) {
            this.f961d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.n) {
            requestLayout();
        }
        this.n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.e;
        if ((i3 & 112) != i2) {
            this.e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.g = Math.max((float) BitmapDescriptorFactory.HUE_RED, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
