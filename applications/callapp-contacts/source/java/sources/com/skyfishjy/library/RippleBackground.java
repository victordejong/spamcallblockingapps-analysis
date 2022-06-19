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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.C17132a;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/skyfishjy/library/RippleBackground.class */
public class RippleBackground extends RelativeLayout {

    /* renamed from: b */
    private int f60708b;

    /* renamed from: c */
    private float f60709c;

    /* renamed from: d */
    private float f60710d;

    /* renamed from: e */
    private int f60711e;

    /* renamed from: f */
    private int f60712f;

    /* renamed from: g */
    private int f60713g;

    /* renamed from: h */
    private float f60714h;

    /* renamed from: i */
    private int f60715i;

    /* renamed from: j */
    private Paint f60716j;

    /* renamed from: k */
    private AnimatorSet f60717k;

    /* renamed from: l */
    private ArrayList<Animator> f60718l;

    /* renamed from: m */
    private RelativeLayout.LayoutParams f60719m;

    /* renamed from: a */
    public boolean f60707a = false;

    /* renamed from: n */
    private ArrayList<C17131a> f60720n = new ArrayList<>();

    /* renamed from: com.skyfishjy.library.RippleBackground$a */
    /* loaded from: classes4-dex2jar.jar:com/skyfishjy/library/RippleBackground$a.class */
    public final class C17131a extends View {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17131a(Context context) {
            super(context);
            RippleBackground.this = r4;
            setVisibility(4);
        }

        @Override // android.view.View
        protected final void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2;
            canvas.drawCircle(min, min, min - RippleBackground.this.f60709c, RippleBackground.this.f60716j);
        }
    }

    public RippleBackground(Context context) {
        super(context);
    }

    public RippleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5865a(context, attributeSet);
    }

    public RippleBackground(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5865a(context, attributeSet);
    }

    /* renamed from: a */
    private void m5865a(Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            return;
        }
        if (attributeSet == null) {
            throw new IllegalArgumentException("Attributes should be provided to this view,");
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17132a.C17135c.RippleBackground);
        this.f60708b = obtainStyledAttributes.getColor(C17132a.C17135c.RippleBackground_rb_color, getResources().getColor(C17132a.C17133a.rippelColor));
        this.f60709c = obtainStyledAttributes.getDimension(C17132a.C17135c.RippleBackground_rb_strokeWidth, getResources().getDimension(C17132a.C17134b.rippleStrokeWidth));
        this.f60710d = obtainStyledAttributes.getDimension(C17132a.C17135c.RippleBackground_rb_radius, getResources().getDimension(C17132a.C17134b.rippleRadius));
        this.f60711e = obtainStyledAttributes.getInt(C17132a.C17135c.RippleBackground_rb_duration, 3000);
        this.f60712f = obtainStyledAttributes.getInt(C17132a.C17135c.RippleBackground_rb_rippleAmount, 6);
        this.f60714h = obtainStyledAttributes.getFloat(C17132a.C17135c.RippleBackground_rb_scale, 6.0f);
        this.f60715i = obtainStyledAttributes.getInt(C17132a.C17135c.RippleBackground_rb_type, 0);
        obtainStyledAttributes.recycle();
        this.f60713g = this.f60711e / this.f60712f;
        Paint paint = new Paint();
        this.f60716j = paint;
        paint.setAntiAlias(true);
        if (this.f60715i == 0) {
            this.f60709c = BitmapDescriptorFactory.HUE_RED;
            this.f60716j.setStyle(Paint.Style.FILL);
        } else {
            this.f60716j.setStyle(Paint.Style.STROKE);
        }
        this.f60716j.setColor(this.f60708b);
        float f = this.f60710d;
        float f2 = this.f60709c;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) ((f + f2) * 2.0f), (int) ((f + f2) * 2.0f));
        this.f60719m = layoutParams;
        layoutParams.addRule(13, -1);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f60717k = animatorSet;
        animatorSet.setDuration(this.f60711e);
        this.f60717k.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f60718l = new ArrayList<>();
        for (int i = 0; i < this.f60712f; i++) {
            C17131a c17131a = new C17131a(getContext());
            addView(c17131a, this.f60719m);
            this.f60720n.add(c17131a);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c17131a, "ScaleX", 1.0f, this.f60714h);
            ofFloat.setRepeatCount(-1);
            ofFloat.setRepeatMode(1);
            ofFloat.setStartDelay(this.f60713g * i);
            this.f60718l.add(ofFloat);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c17131a, "ScaleY", 1.0f, this.f60714h);
            ofFloat2.setRepeatCount(-1);
            ofFloat2.setRepeatMode(1);
            ofFloat2.setStartDelay(this.f60713g * i);
            this.f60718l.add(ofFloat2);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(c17131a, "Alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
            ofFloat3.setRepeatCount(-1);
            ofFloat3.setRepeatMode(1);
            ofFloat3.setStartDelay(this.f60713g * i);
            this.f60718l.add(ofFloat3);
        }
        this.f60717k.playTogether(this.f60718l);
    }

    /* renamed from: a */
    public final void m5866a() {
        if (!this.f60707a) {
            Iterator<C17131a> it2 = this.f60720n.iterator();
            while (it2.hasNext()) {
                it2.next().setVisibility(0);
            }
            this.f60717k.start();
            this.f60707a = true;
        }
    }

    /* renamed from: b */
    public final void m5863b() {
        if (this.f60707a) {
            this.f60717k.end();
            this.f60707a = false;
        }
    }
}
