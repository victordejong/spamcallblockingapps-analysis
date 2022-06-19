package com.truecaller.p183ui.components;

import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.Keep;
import java.util.Objects;
/* renamed from: com.truecaller.ui.components.RippleView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/RippleView.class */
public class RippleView extends View {

    /* renamed from: b */
    public static final /* synthetic */ int f15794b = 0;

    /* renamed from: a */
    public int f15795a;

    /* renamed from: com.truecaller.ui.components.RippleView$Ripple */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/RippleView$Ripple.class */
    public class Ripple {

        /* renamed from: a */
        public final float f15796a;

        /* renamed from: b */
        public final ObjectAnimator f15797b;

        public Ripple(int i, float f) {
            RippleView.this = r8;
            this.f15796a = f;
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "time", 0, 2000);
            this.f15797b = ofInt;
            ofInt.setStartDelay(i);
            ofInt.setDuration(2000L);
            ofInt.setRepeatCount(-1);
        }

        @Keep
        public void setTime(int i) {
            if (i > 900) {
                RippleView.this.invalidate();
                return;
            }
            RippleView rippleView = RippleView.this;
            int i2 = RippleView.f15794b;
            Objects.requireNonNull(rippleView);
            throw null;
        }
    }

    /* renamed from: a */
    public final void m34519a() {
        new Ripple(0, 0.5f);
        throw null;
    }

    /* renamed from: b */
    public final void m34518b() {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m34519a();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        m34518b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        throw null;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f15795a = (int) (Math.max(i, i2) * 1.4d);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            m34519a();
        } else {
            m34518b();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (i == 0) {
                m34519a();
            } else {
                m34518b();
            }
        }
    }
}
