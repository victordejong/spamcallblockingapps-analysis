package com.skyfishjy.library;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/skyfishjy/library/RippleBackground.class */
public class RippleBackground extends RelativeLayout {

    /* renamed from: b */
    private int f11939b;

    /* renamed from: c */
    private float f11940c;

    /* renamed from: d */
    private float f11941d;

    /* renamed from: e */
    private int f11942e;

    /* renamed from: f */
    private int f11943f;

    /* renamed from: g */
    private int f11944g;

    /* renamed from: h */
    private float f11945h;

    /* renamed from: i */
    private int f11946i;

    /* renamed from: j */
    private Paint f11947j;

    /* renamed from: l */
    private AnimatorSet f11949l;

    /* renamed from: m */
    private ArrayList<Animator> f11950m;

    /* renamed from: n */
    private RelativeLayout.LayoutParams f11951n;

    /* renamed from: k */
    private boolean f11948k = false;

    /* renamed from: o */
    private ArrayList<C2848a> f11952o = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.skyfishjy.library.RippleBackground$a */
    /* loaded from: classes2-dex2jar.jar:com/skyfishjy/library/RippleBackground$a.class */
    public class C2848a extends View {
        public C2848a(Context context) {
            super(context);
            setVisibility(4);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2;
            canvas.drawCircle(min, min, min - RippleBackground.this.f11940c, RippleBackground.this.f11947j);
        }
    }

    public RippleBackground(Context context) {
        super(context);
    }

    public RippleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1332c(context, attributeSet);
    }

    public RippleBackground(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1332c(context, attributeSet);
    }

    /* renamed from: c */
    private void m1332c(Context context, AttributeSet attributeSet) {
        Paint.Style style;
        Paint paint;
        if (!isInEditMode()) {
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2851c.RippleBackground);
                this.f11939b = obtainStyledAttributes.getColor(C2851c.RippleBackground_rb_color, getResources().getColor(C2849a.rippelColor));
                this.f11940c = obtainStyledAttributes.getDimension(C2851c.RippleBackground_rb_strokeWidth, getResources().getDimension(C2850b.rippleStrokeWidth));
                this.f11941d = obtainStyledAttributes.getDimension(C2851c.RippleBackground_rb_radius, getResources().getDimension(C2850b.rippleRadius));
                this.f11942e = obtainStyledAttributes.getInt(C2851c.RippleBackground_rb_duration, 3000);
                this.f11943f = obtainStyledAttributes.getInt(C2851c.RippleBackground_rb_rippleAmount, 6);
                this.f11945h = obtainStyledAttributes.getFloat(C2851c.RippleBackground_rb_scale, 6.0f);
                this.f11946i = obtainStyledAttributes.getInt(C2851c.RippleBackground_rb_type, 0);
                obtainStyledAttributes.recycle();
                this.f11944g = this.f11942e / this.f11943f;
                Paint paint2 = new Paint();
                this.f11947j = paint2;
                paint2.setAntiAlias(true);
                if (this.f11946i == 0) {
                    this.f11940c = 0.0f;
                    paint = this.f11947j;
                    style = Paint.Style.FILL;
                } else {
                    paint = this.f11947j;
                    style = Paint.Style.STROKE;
                }
                paint.setStyle(style);
                this.f11947j.setColor(this.f11939b);
                float f = this.f11941d;
                float f2 = this.f11940c;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) ((f + f2) * 2.0f), (int) ((f + f2) * 2.0f));
                this.f11951n = layoutParams;
                layoutParams.addRule(13, -1);
                AnimatorSet animatorSet = new AnimatorSet();
                this.f11949l = animatorSet;
                animatorSet.setDuration(this.f11942e);
                this.f11949l.setInterpolator(new AccelerateDecelerateInterpolator());
                this.f11950m = new ArrayList<>();
                for (int i = 0; i < this.f11943f; i++) {
                    C2848a aVar = new C2848a(getContext());
                    addView(aVar, this.f11951n);
                    this.f11952o.add(aVar);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(aVar, "ScaleX", 1.0f, this.f11945h);
                    ofFloat.setRepeatCount(-1);
                    ofFloat.setRepeatMode(1);
                    ofFloat.setStartDelay(this.f11944g * i);
                    this.f11950m.add(ofFloat);
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(aVar, "ScaleY", 1.0f, this.f11945h);
                    ofFloat2.setRepeatCount(-1);
                    ofFloat2.setRepeatMode(1);
                    ofFloat2.setStartDelay(this.f11944g * i);
                    this.f11950m.add(ofFloat2);
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(aVar, "Alpha", 1.0f, 0.0f);
                    ofFloat3.setRepeatCount(-1);
                    ofFloat3.setRepeatMode(1);
                    ofFloat3.setStartDelay(this.f11944g * i);
                    this.f11950m.add(ofFloat3);
                }
                this.f11949l.playTogether(this.f11950m);
                return;
            }
            throw new IllegalArgumentException("Attributes should be provided to this view,");
        }
    }

    /* renamed from: d */
    public boolean m1331d() {
        return this.f11948k;
    }

    /* renamed from: e */
    public void m1330e() {
        if (!m1331d()) {
            Iterator<C2848a> it = this.f11952o.iterator();
            while (it.hasNext()) {
                it.next().setVisibility(0);
            }
            this.f11949l.start();
            this.f11948k = true;
        }
    }

    /* renamed from: f */
    public void m1329f() {
        if (m1331d()) {
            this.f11949l.end();
            this.f11948k = false;
        }
    }
}
