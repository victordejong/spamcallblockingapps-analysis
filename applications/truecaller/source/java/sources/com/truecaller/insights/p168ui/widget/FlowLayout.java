package com.truecaller.insights.p168ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0001\u001cJ7\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0014\u0010\u001aR\u001a\u0010\u001e\u001a\u00060\u001bR\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/truecaller/insights/ui/widget/FlowLayout;", "Landroid/view/ViewGroup;", "", AnalyticsConstants.CHANGED, "", "l", "t", "r", C22021b.f61237c, "Ls1/s;", "onLayout", "(ZIIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "p", "generateLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;", "checkLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Z", "Landroid/util/AttributeSet;", "attrs", "(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;", "Lcom/truecaller/insights/ui/widget/FlowLayout$a;", "a", "Lcom/truecaller/insights/ui/widget/FlowLayout$a;", "childLayoutHelper", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.widget.FlowLayout */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/widget/FlowLayout.class */
public final class FlowLayout extends ViewGroup {

    /* renamed from: a */
    public final C4129a f12937a = new C4129a();

    /* renamed from: com.truecaller.insights.ui.widget.FlowLayout$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/widget/FlowLayout$a.class */
    public final class C4129a {

        /* renamed from: a */
        public int f12938a;

        /* renamed from: b */
        public boolean f12939b;

        /* renamed from: c */
        public int f12940c;

        /* renamed from: d */
        public int f12941d;

        /* renamed from: e */
        public int f12942e;

        /* renamed from: f */
        public int f12943f;

        /* renamed from: g */
        public int f12944g;

        public C4129a() {
            FlowLayout.this = r4;
        }

        /* renamed from: a */
        public final void m35147a(View view) {
            l.e(view, "child");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            boolean z = this.f12939b;
            int i = z ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i2 = z ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int measuredWidth = view.getMeasuredWidth();
            int i3 = measuredWidth + i + i2;
            int measuredHeight = view.getMeasuredHeight();
            int i4 = marginLayoutParams.bottomMargin;
            int i5 = marginLayoutParams.topMargin;
            int i6 = measuredHeight + i4 + i5;
            int i7 = this.f12942e;
            int i8 = i7;
            if (i7 < i6) {
                i8 = i6;
            }
            this.f12942e = i8;
            int i9 = this.f12938a;
            if (measuredWidth > i9) {
                if (this.f12940c != 0) {
                    this.f12941d += i8;
                    this.f12942e = i6;
                    this.f12940c = 0;
                }
            } else if (this.f12940c + i3 > i9) {
                this.f12941d += i8;
                this.f12942e = i6;
                this.f12940c = 0;
            }
            this.f12943f = this.f12939b ? i9 - ((this.f12940c + measuredWidth) + i) : this.f12940c + i;
            this.f12944g = this.f12941d + i5;
            this.f12940c += i3;
        }

        /* renamed from: b */
        public final void m35146b(int i) {
            this.f12938a = i;
            FlowLayout flowLayout = FlowLayout.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            boolean z = true;
            if (flowLayout.getLayoutDirection() != 1) {
                z = false;
            }
            this.f12939b = z;
            this.f12940c = 0;
            this.f12941d = 0;
            this.f12942e = 0;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        l.e(layoutParams, "p");
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        l.e(attributeSet, "attrs");
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        l.e(layoutParams, "p");
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f12937a.m35146b(((i3 - i) - getPaddingLeft()) - getPaddingRight());
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z2 = true;
        if (getLayoutDirection() != 1) {
            z2 = false;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C4129a c4129a = this.f12937a;
            l.d(childAt, "child");
            c4129a.m35147a(childAt);
            int paddingRight = this.f12937a.f12943f + (z2 ? getPaddingRight() : getPaddingLeft());
            int paddingTop = getPaddingTop() + this.f12937a.f12944g;
            childAt.layout(paddingRight, paddingTop, childAt.getMeasuredWidth() + paddingRight, childAt.getMeasuredHeight() + paddingTop);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043 A[LOOP:0: B:13:0x003c->B:15:0x0043, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0077  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L26
            r0 = r10
            if (r0 == 0) goto L20
            r0 = r10
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto L18
            goto L26
        L18:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L20:
            r0 = 2147483647(0x7fffffff, float:NaN)
            r10 = r0
            goto L2b
        L26:
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r10 = r0
        L2b:
            r0 = r7
            com.truecaller.insights.ui.widget.FlowLayout$a r0 = r0.f12937a
            r1 = r10
            r0.m35146b(r1)
            r0 = 0
            r11 = r0
            r0 = r7
            int r0 = r0.getChildCount()
            r12 = r0
        L3c:
            r0 = r11
            r1 = r12
            if (r0 >= r1) goto L6f
            r0 = r7
            r1 = r11
            android.view.View r0 = r0.getChildAt(r1)
            r13 = r0
            r0 = r7
            r1 = r13
            r2 = r8
            r3 = 0
            r4 = r9
            r5 = 0
            r0.measureChildWithMargins(r1, r2, r3, r4, r5)
            r0 = r7
            com.truecaller.insights.ui.widget.FlowLayout$a r0 = r0.f12937a
            r14 = r0
            r0 = r13
            java.lang.String r1 = "child"
            s1.z.c.l.d(r0, r1)
            r0 = r14
            r1 = r13
            r0.m35147a(r1)
            int r11 = r11 + 1
            goto L3c
        L6f:
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 != r1) goto L7f
            r0 = r7
            com.truecaller.insights.ui.widget.FlowLayout$a r0 = r0.f12937a
            int r0 = r0.f12940c
            r8 = r0
        L7f:
            r0 = r7
            com.truecaller.insights.ui.widget.FlowLayout$a r0 = r0.f12937a
            r14 = r0
            r0 = r14
            int r0 = r0.f12941d
            r11 = r0
            r0 = r14
            int r0 = r0.f12942e
            r10 = r0
            r0 = r7
            int r0 = r0.getPaddingTop()
            r12 = r0
            r0 = r7
            int r0 = r0.getPaddingBottom()
            r15 = r0
            r0 = r7
            int r0 = r0.getPaddingLeft()
            r9 = r0
            r0 = r7
            r1 = r7
            int r1 = r1.getPaddingRight()
            r2 = r9
            int r1 = r1 + r2
            r2 = r8
            int r1 = r1 + r2
            r2 = r15
            r3 = r12
            r4 = r11
            r5 = r10
            int r4 = r4 + r5
            int r3 = r3 + r4
            int r2 = r2 + r3
            r0.setMeasuredDimension(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.p168ui.widget.FlowLayout.onMeasure(int, int):void");
    }
}
