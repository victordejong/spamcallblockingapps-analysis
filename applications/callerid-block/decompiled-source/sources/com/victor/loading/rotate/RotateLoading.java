package com.victor.loading.rotate;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import p092e.p111h.p112a.C3130f;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/rotate/RotateLoading.class */
public class RotateLoading extends View {

    /* renamed from: b */
    private Paint f12584b;

    /* renamed from: c */
    private RectF f12585c;

    /* renamed from: d */
    private RectF f12586d;

    /* renamed from: g */
    private float f12589g;

    /* renamed from: h */
    private int f12590h;

    /* renamed from: j */
    private int f12592j;

    /* renamed from: l */
    private int f12594l;

    /* renamed from: m */
    private int f12595m;

    /* renamed from: n */
    private float f12596n;

    /* renamed from: e */
    private int f12587e = 10;

    /* renamed from: f */
    private int f12588f = 190;

    /* renamed from: i */
    private boolean f12591i = true;

    /* renamed from: k */
    private boolean f12593k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.rotate.RotateLoading$a */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/rotate/RotateLoading$a.class */
    public class C2991a implements Animator.AnimatorListener {
        C2991a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RotateLoading.this.f12593k = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public RotateLoading(Context context) {
        super(context);
        m598c(context, null);
    }

    public RotateLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m598c(context, attributeSet);
    }

    public RotateLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m598c(context, attributeSet);
    }

    /* renamed from: c */
    private void m598c(Context context, AttributeSet attributeSet) {
        this.f12594l = -1;
        this.f12590h = m599b(context, 6.0f);
        this.f12592j = m599b(getContext(), 2.0f);
        this.f12595m = 10;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3130f.RotateLoading);
            this.f12594l = obtainStyledAttributes.getColor(C3130f.RotateLoading_loading_color, -1);
            this.f12590h = obtainStyledAttributes.getDimensionPixelSize(C3130f.RotateLoading_loading_width, m599b(context, 6.0f));
            this.f12592j = obtainStyledAttributes.getInt(C3130f.RotateLoading_shadow_position, 2);
            this.f12595m = obtainStyledAttributes.getInt(C3130f.RotateLoading_loading_speed, 10);
            obtainStyledAttributes.recycle();
        }
        this.f12596n = this.f12595m / 4;
        Paint paint = new Paint();
        this.f12584b = paint;
        paint.setColor(this.f12594l);
        this.f12584b.setAntiAlias(true);
        this.f12584b.setStyle(Paint.Style.STROKE);
        this.f12584b.setStrokeWidth(this.f12590h);
        this.f12584b.setStrokeCap(Paint.Cap.ROUND);
    }

    /* renamed from: f */
    private void m595f() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.start();
    }

    /* renamed from: h */
    private void m593h() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, 0.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new C2991a());
        animatorSet.start();
    }

    /* renamed from: b */
    public int m599b(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: d */
    public boolean m597d() {
        return this.f12593k;
    }

    /* renamed from: e */
    public void m596e() {
        m595f();
        this.f12593k = true;
        invalidate();
    }

    /* renamed from: g */
    public void m594g() {
        m593h();
        invalidate();
    }

    public int getLoadingColor() {
        return this.f12594l;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.f12593k) {
            this.f12584b.setColor(Color.parseColor("#1a000000"));
            canvas.drawArc(this.f12586d, this.f12587e, this.f12589g, false, this.f12584b);
            canvas.drawArc(this.f12586d, this.f12588f, this.f12589g, false, this.f12584b);
            this.f12584b.setColor(this.f12594l);
            canvas.drawArc(this.f12585c, this.f12587e, this.f12589g, false, this.f12584b);
            canvas.drawArc(this.f12585c, this.f12588f, this.f12589g, false, this.f12584b);
            int i = this.f12587e;
            int i2 = this.f12595m;
            int i3 = i + i2;
            this.f12587e = i3;
            int i4 = this.f12588f + i2;
            this.f12588f = i4;
            if (i3 > 360) {
                this.f12587e = i3 - 360;
            }
            if (i4 > 360) {
                this.f12588f = i4 - 360;
            }
            if (this.f12591i) {
                float f3 = this.f12589g;
                if (f3 < 160.0f) {
                    f2 = f3 + this.f12596n;
                    this.f12589g = f2;
                    invalidate();
                }
                f = this.f12589g;
                if (f < 160.0f || f <= 10.0f) {
                    this.f12591i = !this.f12591i;
                    invalidate();
                }
                return;
            }
            float f4 = this.f12589g;
            if (f4 > i2) {
                f2 = f4 - (this.f12596n * 2.0f);
                this.f12589g = f2;
                invalidate();
            }
            f = this.f12589g;
            if (f < 160.0f) {
            }
            this.f12591i = !this.f12591i;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12589g = 10.0f;
        int i5 = this.f12590h;
        this.f12585c = new RectF(i5 * 2, i5 * 2, i - (i5 * 2), i2 - (i5 * 2));
        int i6 = this.f12590h;
        int i7 = this.f12592j;
        this.f12586d = new RectF((i6 * 2) + i7, (i6 * 2) + i7, (i - (i6 * 2)) + i7, (i2 - (i6 * 2)) + i7);
    }

    public void setLoadingColor(int i) {
        this.f12594l = i;
    }
}
