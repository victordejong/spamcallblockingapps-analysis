package com.asus.contacts.interactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.android.contacts.util.SchedulingUtils;
import com.asus.contacts.b.a;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/AsusFloatingChildBottomLayout.class */
public class AsusFloatingChildBottomLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2679a = AsusFloatingChildBottomLayout.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private View f2680b;
    private View.OnTouchListener g;
    private int d = 0;
    private ObjectAnimator e = ObjectAnimator.ofInt(this, "backgroundColorAlpha", 0, 127);
    private int f = 0;
    private final int c = 500;

    public AsusFloatingChildBottomLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setBackground(new ColorDrawable(0));
    }

    private void a(final boolean z, final Runnable runnable) {
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), a.a(z ? 1 : 2).intValue());
        loadAnimation.setDuration(this.c);
        this.f2680b.setAnimation(loadAnimation);
        this.f2680b.animate().alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.asus.contacts.interactions.AsusFloatingChildBottomLayout.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                AsusFloatingChildBottomLayout.this.f2680b.setLayerType(0, null);
                if (z) {
                    if (AsusFloatingChildBottomLayout.this.f == 3) {
                        AsusFloatingChildBottomLayout.this.f = 4;
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                } else if (AsusFloatingChildBottomLayout.this.f == 1) {
                    AsusFloatingChildBottomLayout.this.f = 2;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }
        });
    }

    private void c() {
        this.f2680b.invalidate();
        this.f2680b.setLayerType(2, null);
        this.f2680b.buildLayer();
    }

    public final void a() {
        if (this.d == 0) {
            this.d = 1;
            c();
            SchedulingUtils.doAfterDraw(this, new Runnable() { // from class: com.asus.contacts.interactions.AsusFloatingChildBottomLayout.1
                @Override // java.lang.Runnable
                public final void run() {
                    AsusFloatingChildBottomLayout.this.e.setDuration(AsusFloatingChildBottomLayout.this.c).start();
                }
            });
        }
    }

    public final void a(Runnable runnable) {
        if (this.f == 0) {
            this.f = 1;
            a(false, runnable);
        }
    }

    public final void b() {
        if (this.d == 1) {
            this.d = 3;
            if (this.e.isRunning()) {
                this.e.reverse();
            } else {
                ObjectAnimator.ofInt(this, "backgroundColorAlpha", 127, 0).setDuration(this.c).start();
            }
        }
    }

    public final boolean b(Runnable runnable) {
        boolean z = true;
        if (this.f == 1 || this.f == 2) {
            this.f = 3;
            c();
            a(true, runnable);
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.f2680b = findViewById(16908290);
        this.f2680b.setDuplicateParentStateEnabled(true);
        this.f2680b.setAlpha(0.0f);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.f2680b;
        int height = getHeight();
        view.layout(0, height - view.getMeasuredHeight(), view.getMeasuredWidth() + 0, height);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.g != null ? this.g.onTouch(this, motionEvent) : false;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        Log.wtf(f2679a, "don't setBackground(), it is managed internally");
    }

    public void setBackgroundColorAlpha(int i) {
        setBackgroundColor(i << 24);
    }

    public void setOnOutsideTouchListener(View.OnTouchListener onTouchListener) {
        this.g = onTouchListener;
    }
}
