package com.truecaller.common.p156ui;

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
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0001\u001cJ7\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0014\u0010\u001aR\u001a\u0010\u001e\u001a\u00060\u001bR\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/truecaller/common/ui/FlowLayout;", "Landroid/view/ViewGroup;", "", AnalyticsConstants.CHANGED, "", "l", "t", "r", C22021b.f61237c, "Ls1/s;", "onLayout", "(ZIIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "p", "generateLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;", "checkLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Z", "Landroid/util/AttributeSet;", "attrs", "(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;", "Lcom/truecaller/common/ui/FlowLayout$a;", "a", "Lcom/truecaller/common/ui/FlowLayout$a;", "childLayoutHelper", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.FlowLayout */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/FlowLayout.class */
public final class FlowLayout extends ViewGroup {

    /* renamed from: a */
    public final C3697a f10995a = new C3697a();

    /* renamed from: com.truecaller.common.ui.FlowLayout$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/FlowLayout$a.class */
    public final class C3697a {

        /* renamed from: a */
        public int f10996a;

        /* renamed from: b */
        public boolean f10997b;

        /* renamed from: c */
        public int f10998c;

        /* renamed from: d */
        public int f10999d;

        /* renamed from: e */
        public int f11000e;

        /* renamed from: f */
        public int f11001f;

        /* renamed from: g */
        public int f11002g;

        public C3697a() {
            FlowLayout.this = r4;
        }

        /* renamed from: a */
        public final void m35711a(View view) {
            l.e(view, "child");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            boolean z = this.f10997b;
            int i = z ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i2 = z ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int measuredWidth = view.getMeasuredWidth();
            int i3 = measuredWidth + i + i2;
            int measuredHeight = view.getMeasuredHeight();
            int i4 = marginLayoutParams.bottomMargin;
            int i5 = marginLayoutParams.topMargin;
            int i6 = measuredHeight + i4 + i5;
            int i7 = this.f11000e;
            int i8 = i7;
            if (i7 < i6) {
                i8 = i6;
            }
            this.f11000e = i8;
            int i9 = this.f10996a;
            if (measuredWidth > i9) {
                if (this.f10998c != 0) {
                    this.f10999d += i8;
                    this.f11000e = i6;
                    this.f10998c = 0;
                }
            } else if (this.f10998c + i3 > i9) {
                this.f10999d += i8;
                this.f11000e = i6;
                this.f10998c = 0;
            }
            this.f11001f = this.f10997b ? i9 - ((this.f10998c + measuredWidth) + i) : this.f10998c + i;
            this.f11002g = this.f10999d + i5;
            this.f10998c += i3;
        }

        /* renamed from: b */
        public final void m35710b(int i) {
            this.f10996a = i;
            FlowLayout flowLayout = FlowLayout.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            boolean z = true;
            if (flowLayout.getLayoutDirection() != 1) {
                z = false;
            }
            this.f10997b = z;
            this.f10998c = 0;
            this.f10999d = 0;
            this.f11000e = 0;
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
        this.f10995a.m35710b(((i3 - i) - getPaddingLeft()) - getPaddingRight());
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z2 = true;
        if (getLayoutDirection() != 1) {
            z2 = false;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C3697a c3697a = this.f10995a;
            l.d(childAt, "child");
            c3697a.m35711a(childAt);
            int paddingRight = this.f10995a.f11001f + (z2 ? getPaddingRight() : getPaddingLeft());
            int paddingTop = getPaddingTop() + this.f10995a.f11002g;
            childAt.layout(paddingRight, paddingTop, childAt.getMeasuredWidth() + paddingRight, childAt.getMeasuredHeight() + paddingTop);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d A[LOOP:0: B:13:0x0046->B:15:0x004d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.FlowLayout.onMeasure(int, int):void");
    }
}
