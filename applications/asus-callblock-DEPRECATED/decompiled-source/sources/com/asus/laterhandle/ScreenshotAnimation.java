package com.asus.laterhandle;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/ScreenshotAnimation.class */
final class ScreenshotAnimation extends f {

    /* renamed from: a  reason: collision with root package name */
    ImageView f2907a;

    /* renamed from: b  reason: collision with root package name */
    BorderImageView f2908b;
    ImageView c;
    float d;
    Handler e;
    private float o;

    /* renamed from: com.asus.laterhandle.ScreenshotAnimation$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/laterhandle/ScreenshotAnimation$3.class */
    final class AnonymousClass3 extends AnimatorListenerAdapter {
        AnonymousClass3() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            new Thread(new Runnable() { // from class: com.asus.laterhandle.ScreenshotAnimation.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (ScreenshotAnimation.this.m != null) {
                        ScreenshotAnimation.this.e();
                    }
                    ScreenshotAnimation.this.e.post(new Runnable() { // from class: com.asus.laterhandle.ScreenshotAnimation.3.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ScreenshotAnimation.this.d();
                        }
                    });
                }
            }).start();
        }
    }

    @SuppressLint({"DrawAllocation"})
    /* loaded from: classes-dex2jar.jar:com/asus/laterhandle/ScreenshotAnimation$BorderImageView.class */
    public class BorderImageView extends ImageView {
        private int c;
        private int d;

        /* renamed from: b  reason: collision with root package name */
        private int f2924b = -1;
        private int e = 10;

        public BorderImageView(Context context) {
            super(context);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            Rect clipBounds = canvas.getClipBounds();
            Rect clipBounds2 = canvas.getClipBounds();
            Rect clipBounds3 = canvas.getClipBounds();
            Rect clipBounds4 = canvas.getClipBounds();
            clipBounds.left = (clipBounds.right - this.c) / 2;
            clipBounds.right = clipBounds.left + this.e;
            clipBounds.top = (clipBounds.bottom - this.d) / 2;
            clipBounds.bottom = (clipBounds.bottom + this.d) / 2;
            clipBounds2.top = (clipBounds2.bottom - this.d) / 2;
            clipBounds2.bottom = clipBounds2.top + this.e;
            clipBounds2.left = (clipBounds2.right - this.c) / 2;
            clipBounds2.right = (clipBounds2.right + this.c) / 2;
            clipBounds3.right = (clipBounds3.right + this.c) / 2;
            clipBounds3.left = clipBounds3.right - this.e;
            clipBounds3.top = (clipBounds3.bottom - this.d) / 2;
            clipBounds3.bottom = (clipBounds3.bottom + this.d) / 2;
            clipBounds4.bottom = (clipBounds4.bottom + this.d) / 2;
            clipBounds4.top = clipBounds4.bottom - this.e;
            clipBounds4.left = (clipBounds4.right - this.c) / 2;
            clipBounds4.right = (clipBounds4.right + this.c) / 2;
            Paint paint = new Paint();
            paint.setColor(this.f2924b);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRect(clipBounds, paint);
            canvas.drawRect(clipBounds2, paint);
            canvas.drawRect(clipBounds3, paint);
            canvas.drawRect(clipBounds4, paint);
        }

        public void setPadding(int i) {
            this.e = i;
        }

        public void setRealSize(int i, int i2) {
            this.c = i;
            this.d = i2;
        }
    }

    @Override // com.asus.laterhandle.f
    protected final void a() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 0, 0, 2006, 16778496, -3);
        layoutParams.setTitle("ScreenshotAnimation");
        this.g.addView(this.j, layoutParams);
    }

    @Override // com.asus.laterhandle.c
    public final boolean a(Bundle bundle, Intent intent) {
        this.m = new d(this.f, bundle, this.n, intent);
        this.i = f();
        this.f2908b.setImageBitmap(this.i);
        this.f2908b.setRealSize(this.i.getWidth(), this.i.getHeight());
        this.j.post(new Runnable() { // from class: com.asus.laterhandle.ScreenshotAnimation.1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenshotAnimation.this.f2908b.setLayerType(2, null);
                ScreenshotAnimation.this.f2908b.buildLayer();
                ScreenshotAnimation.this.h.start();
            }
        });
        return true;
    }

    @Override // com.asus.laterhandle.f
    protected final void b() {
        this.f2907a = new ImageView(this.f);
        this.f2907a.setBackgroundColor(-7829368);
        this.f2907a.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f2907a.setVisibility(8);
        this.j.addView(this.f2907a);
        this.f2908b = new BorderImageView(this.f);
        this.f2908b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f2908b.setBackgroundColor(0);
        this.f2908b.setVisibility(8);
        this.j.addView(this.f2908b);
        this.c = new ImageView(this.f);
        this.c.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.c.setVisibility(8);
        this.j.addView(this.c);
        this.j.setFocusable(true);
        this.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.asus.laterhandle.ScreenshotAnimation.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.j.requestFocus();
    }

    @Override // com.asus.laterhandle.f
    protected final void c() {
        Display defaultDisplay = this.g.getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        this.o = 20.0f;
        this.d = this.o / displayMetrics.widthPixels;
        final Interpolator interpolator = new Interpolator() { // from class: com.asus.laterhandle.ScreenshotAnimation.4
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return f <= 0.60465115f ? (float) Math.sin(3.141592653589793d * (f / 0.60465115f)) : 0.0f;
            }
        };
        final Interpolator interpolator2 = new Interpolator() { // from class: com.asus.laterhandle.ScreenshotAnimation.5
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return f < 0.30232558f ? 0.0f : (f - 0.60465115f) / 0.39534885f;
            }
        };
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(430L);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.asus.laterhandle.ScreenshotAnimation.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ScreenshotAnimation.this.c.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ScreenshotAnimation.this.f2907a.setAlpha(0.5f);
                ScreenshotAnimation.this.f2907a.setVisibility(0);
                ScreenshotAnimation.this.f2908b.setAlpha(0.0f);
                ScreenshotAnimation.this.f2908b.setTranslationX(0.0f);
                ScreenshotAnimation.this.f2908b.setTranslationY(0.0f);
                ScreenshotAnimation.this.f2908b.setScaleX(ScreenshotAnimation.this.d + 1.0f);
                ScreenshotAnimation.this.f2908b.setScaleY(ScreenshotAnimation.this.d + 1.0f);
                ScreenshotAnimation.this.f2908b.setVisibility(0);
                ScreenshotAnimation.this.c.setAlpha(0.0f);
                ScreenshotAnimation.this.c.setVisibility(8);
            }
        });
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.asus.laterhandle.ScreenshotAnimation.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float interpolation = (1.0f + ScreenshotAnimation.this.d) - (interpolator2.getInterpolation(floatValue) * 0.27499998f);
                ScreenshotAnimation.this.f2907a.setAlpha(interpolator2.getInterpolation(floatValue) * 0.5f);
                ScreenshotAnimation.this.f2908b.setAlpha(floatValue);
                ScreenshotAnimation.this.f2908b.setScaleX(interpolation);
                ScreenshotAnimation.this.f2908b.setScaleY(interpolation);
                ScreenshotAnimation.this.c.setAlpha(interpolator.getInterpolation(floatValue));
            }
        });
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setStartDelay(500L);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.asus.laterhandle.ScreenshotAnimation.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ScreenshotAnimation.this.f2907a.setVisibility(8);
                ScreenshotAnimation.this.f2908b.setVisibility(8);
                ScreenshotAnimation.this.f2908b.setLayerType(0, null);
            }
        });
        final Interpolator interpolator3 = new Interpolator() { // from class: com.asus.laterhandle.ScreenshotAnimation.9
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = 1.0f;
                if (f < 0.8604651f) {
                    f2 = (float) (1.0d - Math.pow(1.0f - (f / 0.8604651f), 2.0d));
                }
                return f2;
            }
        };
        float f = (i - (this.o * 2.0f)) / 2.0f;
        float f2 = (i2 - (this.o * 2.0f)) / 2.0f;
        final PointF pointF = new PointF((f * 0.45f) + (-f), (f2 * 0.45f) + (-f2));
        ofFloat2.setDuration(430L);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.asus.laterhandle.ScreenshotAnimation.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float interpolation = (0.725f + ScreenshotAnimation.this.d) - (interpolator3.getInterpolation(floatValue) * 0.27500004f);
                ScreenshotAnimation.this.f2907a.setAlpha((1.0f - floatValue) * 0.5f);
                ScreenshotAnimation.this.f2908b.setAlpha(1.0f - interpolator3.getInterpolation(floatValue));
                ScreenshotAnimation.this.f2908b.setScaleX(interpolation);
                ScreenshotAnimation.this.f2908b.setScaleY(interpolation);
                ScreenshotAnimation.this.f2908b.setTranslationY(floatValue * pointF.y);
            }
        });
        this.h.playSequentially(ofFloat, ofFloat2);
        this.h.addListener(new AnonymousClass3());
    }

    @Override // com.asus.laterhandle.f
    public final void d() {
        super.d();
        this.f2908b.setImageBitmap(null);
    }
}
