package com.truecaller.p183ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import androidx.core.widget.NestedScrollView;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\tR\u0016\u0010\u0016\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ui/view/VerticalNestedScrollView;", "Landroidx/core/widget/NestedScrollView;", "Landroid/view/MotionEvent;", "motion", "", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "D", "F", "xDistance", "K", "lastY", "", "L", "I", "touchSlop", "C", "gestureDirection", "E", "yDistance", "J", "lastX", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.view.VerticalNestedScrollView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/VerticalNestedScrollView.class */
public final class VerticalNestedScrollView extends NestedScrollView {

    /* renamed from: C */
    public int f15935C;

    /* renamed from: D */
    public float f15936D;

    /* renamed from: E */
    public float f15937E;

    /* renamed from: J */
    public float f15938J;

    /* renamed from: K */
    public float f15939K;

    /* renamed from: L */
    public final int f15940L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerticalNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        l.d(viewConfiguration, "ViewConfiguration.get(context)");
        int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f15940L = scaledTouchSlop;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00da, code lost:
        if ((r4.f15935C == 0) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.view.VerticalNestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }
}
