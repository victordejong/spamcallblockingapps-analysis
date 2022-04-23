package com.android.contacts.quickcontact;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.android.contacts.util.SchedulingUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/FloatingChildLayout.class */
public class FloatingChildLayout extends FrameLayout {

    /* renamed from: b  reason: collision with root package name */
    private View f2045b;
    private final int d;
    private View.OnTouchListener h;
    private Rect c = new Rect();
    private int e = 0;
    private ObjectAnimator f = ObjectAnimator.ofInt(this, "backgroundColorAlpha", 0, 127);
    private int g = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f2044a = -1;

    public FloatingChildLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getResources();
        this.d = resources.getInteger(17694720);
        super.setBackground(new ColorDrawable(0));
    }

    private static int a(int i, int i2, int i3) {
        return i2 > i3 ? (i3 - i2) / 2 : Math.min(Math.max(i, 0), i3 - i2);
    }

    private static void a(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private void a(final boolean z, final Runnable runnable) {
        float f = 1.0f;
        this.f2045b.setPivotX(this.c.centerX() - this.f2045b.getLeft());
        this.f2045b.setPivotY(this.c.centerY() - this.f2045b.getTop());
        int i = z ? 17563652 : 17563653;
        float f2 = z ? 0.5f : 1.0f;
        ViewPropertyAnimator scaleY = this.f2045b.animate().setDuration(this.d).setInterpolator(AnimationUtils.loadInterpolator(getContext(), i)).scaleX(f2).scaleY(f2);
        if (z) {
            f = 0.0f;
        }
        scaleY.alpha(f).setListener(new AnimatorListenerAdapter() { // from class: com.android.contacts.quickcontact.FloatingChildLayout.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                FloatingChildLayout.this.f2045b.setLayerType(0, null);
                if (z) {
                    if (FloatingChildLayout.this.g == 3) {
                        FloatingChildLayout.this.g = 4;
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                } else if (FloatingChildLayout.this.g == 1) {
                    FloatingChildLayout.this.g = 2;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }
        });
    }

    private void d() {
        this.f2045b.invalidate();
        this.f2045b.setLayerType(2, null);
        this.f2045b.buildLayer();
    }

    public final void a() {
        if (this.e == 0) {
            this.e = 1;
            d();
            SchedulingUtils.doAfterDraw(this, new Runnable() { // from class: com.android.contacts.quickcontact.FloatingChildLayout.1
                @Override // java.lang.Runnable
                public final void run() {
                    FloatingChildLayout.this.f.setDuration(FloatingChildLayout.this.d).start();
                }
            });
        }
    }

    public final void a(Runnable runnable) {
        if (this.g == 0) {
            this.g = 1;
            a(false, runnable);
        }
    }

    public final void b() {
        if (this.e == 1) {
            this.e = 3;
            if (this.f.isRunning()) {
                this.f.reverse();
            } else {
                ObjectAnimator.ofInt(this, "backgroundColorAlpha", 127, 0).setDuration(this.d).start();
            }
        }
    }

    public final boolean b(Runnable runnable) {
        boolean z = true;
        if (this.g == 1 || this.g == 2) {
            this.g = 3;
            d();
            a(true, runnable);
        } else {
            z = false;
        }
        return z;
    }

    public final boolean c() {
        return this.g == 2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.f2045b = findViewById(16908290);
        this.f2045b.setDuplicateParentStateEnabled(true);
        this.f2045b.setScaleX(0.5f);
        this.f2045b.setScaleY(0.5f);
        this.f2045b.setAlpha(0.0f);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.f2045b;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (this.f2044a != -1) {
            a(view, (getWidth() - measuredWidth) / 2, this.f2044a);
            return;
        }
        a(view, a((getWidth() - measuredWidth) / 2, measuredWidth, getWidth()), a((getHeight() - measuredHeight) / 2, measuredHeight, getHeight()));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.h != null ? this.h.onTouch(this, motionEvent) : false;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        Log.wtf("FloatingChildLayout", "don't setBackground(), it is managed internally");
    }

    public void setBackgroundColorAlpha(int i) {
        setBackgroundColor(i << 24);
    }

    public void setChildTargetScreen(Rect rect) {
        this.c = rect;
        requestLayout();
    }

    public void setOnOutsideTouchListener(View.OnTouchListener onTouchListener) {
        this.h = onTouchListener;
    }
}
