package com.allinone.callerid.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/LFrameLayout.class */
public class LFrameLayout extends FrameLayout implements AbstractC2443a {

    /* renamed from: d */
    private C2444b f8596d;

    public LFrameLayout(Context context) {
        this(context, null);
    }

    @SuppressLint({"NewApi"})
    public LFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8596d = new C2444b(this, attributeSet);
    }

    @Override // com.allinone.callerid.customview.AbstractC2443a
    /* renamed from: a */
    public void mo27361a() {
        super.performClick();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (!isEnabled()) {
            super.onDraw(canvas);
            return;
        }
        this.f8596d.m27360a(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        C2444b c2444b = this.f8596d;
        if (c2444b == null) {
            super.onMeasure(i, i2);
        } else if (!c2444b.m27353h()) {
            super.onMeasure(i, i2);
        } else {
            int[] m27358c = this.f8596d.m27358c(i, i2);
            setMeasuredDimension(m27358c[0], m27358c[1]);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27352i(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27351j(view, i);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27350k(z);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean performClick() {
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27349l();
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27346o(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        C2444b c2444b = this.f8596d;
        if (c2444b != null) {
            c2444b.m27345p(i);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackground(getResources().getDrawable(i));
    }

    public void setColor(int i) {
        this.f8596d.m27344q(i);
    }

    public void setDelayClick(boolean z) {
        this.f8596d.m27343r(z);
    }

    public void setType(int i) {
        this.f8596d.m27342s(i);
    }
}
