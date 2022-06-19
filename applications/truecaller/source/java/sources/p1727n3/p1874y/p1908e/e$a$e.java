package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Comparator;
import n3.y.e.e;
/* renamed from: n3.y.e.e$a$e */
/* loaded from: classes-dex2jar.jar:n3/y/e/e$a$e.class */
public class e$a$e extends ViewGroup {

    /* renamed from: a */
    public final Comparator<Rect> f77524a = new C27522a(this);

    /* renamed from: b */
    public Rect[] f77525b;

    /* renamed from: n3.y.e.e$a$e$a */
    /* loaded from: classes-dex2jar.jar:n3/y/e/e$a$e$a.class */
    public class C27522a implements Comparator<Rect> {
        public C27522a(e$a$e e_a_e) {
        }

        @Override // java.util.Comparator
        public int compare(Rect rect, Rect rect2) {
            Rect rect3 = rect;
            Rect rect4 = rect2;
            int i = rect3.top;
            int i2 = rect4.top;
            return i != i2 ? i - i2 : rect3.left - rect4.left;
        }
    }

    /* renamed from: n3.y.e.e$a$e$b */
    /* loaded from: classes-dex2jar.jar:n3/y/e/e$a$e$b.class */
    public class C27523b extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public float f77526a;

        /* renamed from: b */
        public float f77527b;

        /* renamed from: c */
        public float f77528c;

        /* renamed from: d */
        public float f77529d;

        public C27523b(e$a$e e_a_e) {
            super(-1, -1);
        }

        public C27523b(e$a$e e_a_e, float f, float f2, float f3, float f4) {
            super(-1, -1);
            this.f77526a = f;
            this.f77527b = f2;
            this.f77528c = f3;
            this.f77529d = f4;
        }
    }

    public e$a$e(e.a aVar, Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C27523b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                Rect[] rectArr = this.f77525b;
                if (i >= rectArr.length) {
                    return;
                }
                int i2 = rectArr[i].left;
                int i3 = rectArr[i].top;
                int save = canvas.save();
                canvas.translate(i2 + paddingLeft, i3 + paddingTop);
                childAt.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        getContext();
        return new C27523b(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                Rect[] rectArr = this.f77525b;
                childAt.layout(rectArr[i5].left + paddingLeft, rectArr[i5].top + paddingTop, rectArr[i5].right + paddingTop, rectArr[i5].bottom + paddingLeft);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        this.f77525b = new Rect[childCount];
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (!(layoutParams instanceof C27523b)) {
                throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
            }
            C27523b c27523b = (C27523b) layoutParams;
            float f = c27523b.f77526a;
            float f2 = c27523b.f77527b;
            float f3 = c27523b.f77528c;
            float f4 = c27523b.f77529d;
            if (f < 0.0f || f > 1.0f) {
                throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
            }
            if (f2 < f || i6 > 0) {
                throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
            }
            if (f4 < 0.0f || f4 > 1.0f) {
                throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
            }
            if (f4 < f3 || i7 > 0) {
                throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
            }
            float f5 = paddingLeft;
            int i9 = (int) (f3 * f5);
            float f6 = paddingTop;
            this.f77525b[i8] = new Rect(i9, (int) (f * f6), (int) (f4 * f5), (int) (f2 * f6));
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((f4 - f3) * f5), 1073741824);
            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
            if (childAt.getMeasuredHeight() > this.f77525b[i8].height()) {
                int measuredHeight = ((childAt.getMeasuredHeight() - this.f77525b[i8].height()) + 1) / 2;
                Rect[] rectArr = this.f77525b;
                rectArr[i8].bottom += measuredHeight;
                rectArr[i8].top -= measuredHeight;
                if (rectArr[i8].top < 0) {
                    rectArr[i8].bottom -= rectArr[i8].top;
                    rectArr[i8].top = 0;
                }
                if (rectArr[i8].bottom > paddingTop) {
                    rectArr[i8].top -= rectArr[i8].bottom - paddingTop;
                    rectArr[i8].bottom = paddingTop;
                }
            }
            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) ((f2 - f) * f6), 1073741824));
        }
        int[] iArr = new int[childCount];
        Rect[] rectArr2 = new Rect[childCount];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i3 = i11;
            if (i10 >= childCount) {
                break;
            }
            int i12 = i3;
            if (getChildAt(i10).getVisibility() == 0) {
                iArr[i3] = i3;
                rectArr2[i3] = this.f77525b[i10];
                i12 = i3 + 1;
            }
            i10++;
            i11 = i12;
        }
        Arrays.sort(rectArr2, 0, i3, this.f77524a);
        int i13 = 0;
        while (true) {
            int i14 = i13;
            i4 = i3 - 1;
            if (i14 < i4) {
                int i15 = i14 + 1;
                for (int i16 = i15; i16 < i3; i16++) {
                    if (Rect.intersects(rectArr2[i14], rectArr2[i16])) {
                        iArr[i16] = iArr[i14];
                        rectArr2[i16].set(rectArr2[i16].left, rectArr2[i14].bottom, rectArr2[i16].right, rectArr2[i16].height() + rectArr2[i14].bottom);
                    }
                }
                i13 = i15;
            }
        }
        for (i5 = i4; i5 >= 0; i5--) {
            if (rectArr2[i5].bottom > paddingTop) {
                int i17 = rectArr2[i5].bottom - paddingTop;
                for (int i18 = 0; i18 <= i5; i18++) {
                    if (iArr[i5] == iArr[i18]) {
                        rectArr2[i18].set(rectArr2[i18].left, rectArr2[i18].top - i17, rectArr2[i18].right, rectArr2[i18].bottom - i17);
                    }
                }
            }
        }
        setMeasuredDimension(size, size2);
    }
}
