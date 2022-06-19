package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.truecaller.C2752R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p682e.AbstractC13325w0;
/* renamed from: com.truecaller.ui.components.ScrimInsetsFrameLayout */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a */
    public Drawable f15799a;

    /* renamed from: b */
    public Rect f15800b;

    /* renamed from: c */
    public Rect f15801c = new Rect();

    /* renamed from: d */
    public AbstractC4685a f15802d;

    /* renamed from: com.truecaller.ui.components.ScrimInsetsFrameLayout$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/ScrimInsetsFrameLayout$a.class */
    public interface AbstractC4685a {
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.ScrimInsetsView, 0, 0);
        if (obtainStyledAttributes == null) {
            return;
        }
        this.f15799a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f15800b == null || this.f15799a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.f15801c.set(0, 0, width, this.f15800b.top);
        this.f15799a.setBounds(this.f15801c);
        this.f15799a.draw(canvas);
        this.f15801c.set(0, height - this.f15800b.bottom, width, height);
        this.f15799a.setBounds(this.f15801c);
        this.f15799a.draw(canvas);
        Rect rect = this.f15801c;
        Rect rect2 = this.f15800b;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f15799a.setBounds(this.f15801c);
        this.f15799a.draw(canvas);
        Rect rect3 = this.f15801c;
        Rect rect4 = this.f15800b;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f15799a.setBounds(this.f15801c);
        this.f15799a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        Toolbar toolbar;
        this.f15800b = new Rect(rect);
        setWillNotDraw(this.f15799a == null);
        AtomicInteger atomicInteger = C26614s.f74505a;
        postInvalidateOnAnimation();
        AbstractC4685a abstractC4685a = this.f15802d;
        if (abstractC4685a == null || (toolbar = ((AbstractC13325w0) abstractC4685a).f38726c) == null) {
            return true;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) toolbar.getLayoutParams();
        marginLayoutParams.topMargin = rect.top;
        toolbar.setLayoutParams(marginLayoutParams);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f15799a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f15799a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setInsetForeground(Drawable drawable) {
        this.f15799a = drawable;
    }

    public void setOnInsetsCallback(AbstractC4685a abstractC4685a) {
        this.f15802d = abstractC4685a;
    }
}
