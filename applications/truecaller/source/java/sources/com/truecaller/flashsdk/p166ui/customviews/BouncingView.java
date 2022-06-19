package com.truecaller.flashsdk.p166ui.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1832m.p1833a.C26670e;
/* renamed from: com.truecaller.flashsdk.ui.customviews.BouncingView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/BouncingView.class */
public class BouncingView extends FrameLayout {

    /* renamed from: a */
    public C26670e f12089a;

    /* renamed from: b */
    public int f12090b;

    /* renamed from: c */
    public AbstractC3941c f12091c;

    /* renamed from: com.truecaller.flashsdk.ui.customviews.BouncingView$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/BouncingView$b.class */
    public class C3940b extends C26670e.AbstractC26673c {
        public C3940b(C3939a c3939a) {
            BouncingView.this = r4;
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: b */
        public int mo1462b(View view, int i, int i2) {
            if (i2 <= 0 || i < 10) {
                return i;
            }
            return 0;
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: d */
        public int mo1460d(View view) {
            return view.getMeasuredHeight();
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: i */
        public void mo1455i(int i) {
            BouncingView bouncingView = BouncingView.this;
            if (bouncingView.f12091c == null || i != 0 || bouncingView.findViewById(bouncingView.f12090b).getTop() >= 0) {
                return;
            }
            BouncingView.this.f12091c.mo35332G5();
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: k */
        public void mo1453k(View view, float f, float f2) {
            if (f2 < -300.0f || view.getBottom() < BouncingView.this.getHeight() / 2) {
                BouncingView.this.f12089a.m1467v(0, -view.getHeight());
            } else {
                BouncingView bouncingView = BouncingView.this;
                bouncingView.f12089a.m1467v(0, bouncingView.getTop());
            }
            BouncingView.this.invalidate();
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: l */
        public boolean mo1452l(View view, int i) {
            return view.getId() == BouncingView.this.f12090b;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.BouncingView$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/BouncingView$c.class */
    public interface AbstractC3941c {
        /* renamed from: G5 */
        void mo35332G5();
    }

    public BouncingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.f12089a.m1480i(true)) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f12089a = C26670e.m1479j(this, 1.0f, new C3940b(null));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f12089a.m1466w(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f12089a.m1473p(motionEvent);
        return true;
    }

    public void setDragViewResId(int i) {
        this.f12090b = i;
    }
}
