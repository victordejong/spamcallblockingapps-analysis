package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ScrollerCompat.class */
public final class ScrollerCompat {

    /* renamed from: a */
    OverScroller f3434a;

    ScrollerCompat(Context context, Interpolator interpolator) {
        this.f3434a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    @Deprecated
    /* renamed from: c */
    public static ScrollerCompat m18842c(Context context, Interpolator interpolator) {
        return new ScrollerCompat(context, interpolator);
    }

    @Deprecated
    /* renamed from: a */
    public void m18844a() {
        this.f3434a.abortAnimation();
    }

    @Deprecated
    /* renamed from: b */
    public boolean m18843b() {
        return this.f3434a.computeScrollOffset();
    }

    @Deprecated
    /* renamed from: d */
    public void m18841d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f3434a.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    @Deprecated
    /* renamed from: e */
    public float m18840e() {
        return this.f3434a.getCurrVelocity();
    }

    @Deprecated
    /* renamed from: f */
    public int m18839f() {
        return this.f3434a.getCurrX();
    }

    @Deprecated
    /* renamed from: g */
    public int m18838g() {
        return this.f3434a.getCurrY();
    }

    @Deprecated
    /* renamed from: h */
    public boolean m18837h() {
        return this.f3434a.isFinished();
    }

    @Deprecated
    /* renamed from: i */
    public boolean m18836i(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.f3434a.springBack(i, i2, i3, i4, i5, i6);
    }

    @Deprecated
    /* renamed from: j */
    public void m18835j(int i, int i2, int i3, int i4) {
        this.f3434a.startScroll(i, i2, i3, i4);
    }
}
