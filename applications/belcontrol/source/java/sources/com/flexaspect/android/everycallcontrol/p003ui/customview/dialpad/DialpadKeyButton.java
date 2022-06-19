package com.flexaspect.android.everycallcontrol.p003ui.customview.dialpad;

import android.content.Context;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.dialpad.DialpadKeyButton */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton.class */
public class DialpadKeyButton extends FrameLayout {

    /* renamed from: l */
    public static final int f2824l = ViewConfiguration.getLongPressTimeout() * 2;

    /* renamed from: a */
    public AccessibilityManager f2825a;

    /* renamed from: b */
    public RectF f2826b = new RectF();

    /* renamed from: c */
    public boolean f2827c;

    /* renamed from: d */
    public CharSequence f2828d;

    /* renamed from: f */
    public CharSequence f2829f;

    /* renamed from: g */
    public boolean f2830g;

    /* renamed from: h */
    public boolean f2831h;

    /* renamed from: j */
    public Runnable f2832j;

    /* renamed from: k */
    public AbstractC0392b f2833k;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.dialpad.DialpadKeyButton$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a.class */
    public class RunnableC0391a implements Runnable {
        public RunnableC0391a() {
            DialpadKeyButton.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DialpadKeyButton.this.setLongHovered(true);
            DialpadKeyButton dialpadKeyButton = DialpadKeyButton.this;
            dialpadKeyButton.announceForAccessibility(dialpadKeyButton.f2828d);
        }
    }

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.dialpad.DialpadKeyButton$b */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b.class */
    public interface AbstractC0392b {
        /* renamed from: e */
        void m4818e(View view, boolean z);
    }

    public DialpadKeyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4820d(context);
    }

    public DialpadKeyButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4820d(context);
    }

    public void setLongHovered(boolean z) {
        CharSequence charSequence;
        if (this.f2827c != z) {
            this.f2827c = z;
            if (z) {
                this.f2829f = getContentDescription();
                charSequence = this.f2828d;
            } else {
                charSequence = this.f2829f;
            }
            super.setContentDescription(charSequence);
        }
    }

    /* renamed from: c */
    public final void m4821c() {
        Runnable runnable = this.f2832j;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        setLongHovered(false);
    }

    /* renamed from: d */
    public final void m4820d(Context context) {
        this.f2825a = (AccessibilityManager) context.getSystemService("accessibility");
    }

    /* renamed from: e */
    public final void m4819e() {
        if (isPressed()) {
            return;
        }
        setPressed(true);
        sendAccessibilityEvent(1);
        setPressed(false);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.f2825a.isEnabled() && this.f2825a.isTouchExplorationEnabled()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 9) {
                this.f2830g = isClickable();
                boolean isLongClickable = isLongClickable();
                this.f2831h = isLongClickable;
                if (isLongClickable && this.f2828d != null) {
                    if (this.f2832j == null) {
                        this.f2832j = new RunnableC0391a();
                    }
                    postDelayed(this.f2832j, f2824l);
                }
                z = false;
                setClickable(false);
            } else if (actionMasked == 10) {
                if (this.f2826b.contains(motionEvent.getX(), motionEvent.getY())) {
                    if (this.f2827c) {
                        performLongClick();
                    } else {
                        m4819e();
                    }
                }
                m4821c();
                setClickable(this.f2830g);
                z = this.f2831h;
            }
            setLongClickable(z);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f2826b.left = getPaddingLeft();
        this.f2826b.right = i - getPaddingRight();
        this.f2826b.top = getPaddingTop();
        this.f2826b.bottom = i2 - getPaddingBottom();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i == 16) {
            m4819e();
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        if (this.f2827c) {
            this.f2829f = charSequence;
        } else {
            super.setContentDescription(charSequence);
        }
    }

    public void setLongHoverContentDescription(CharSequence charSequence) {
        this.f2828d = charSequence;
        if (this.f2827c) {
            super.setContentDescription(charSequence);
        }
    }

    public void setOnPressedListener(AbstractC0392b abstractC0392b) {
        this.f2833k = abstractC0392b;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        AbstractC0392b abstractC0392b = this.f2833k;
        if (abstractC0392b != null) {
            abstractC0392b.m4818e(this, z);
        }
    }
}
