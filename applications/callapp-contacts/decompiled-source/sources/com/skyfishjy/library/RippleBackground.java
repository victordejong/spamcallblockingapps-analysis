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
import com.skyfishjy.library.a;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/skyfishjy/library/RippleBackground.class */
public class RippleBackground extends RelativeLayout {

    /* renamed from: b  reason: collision with root package name */
    private int f34999b;

    /* renamed from: c  reason: collision with root package name */
    private float f35000c;

    /* renamed from: d  reason: collision with root package name */
    private float f35001d;
    private int e;
    private int f;
    private int g;
    private float h;
    private int i;
    private Paint j;
    private AnimatorSet k;
    private ArrayList<Animator> l;
    private RelativeLayout.LayoutParams m;

    /* renamed from: a  reason: collision with root package name */
    public boolean f34998a = false;
    private ArrayList<a> n = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/skyfishjy/library/RippleBackground$a.class */
    public final class a extends View {
        public a(Context context) {
            super(context);
            setVisibility(4);
        }

        @Override // android.view.View
        protected final void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2;
            canvas.drawCircle(min, min, min - RippleBackground.this.f35000c, RippleBackground.this.j);
        }
    }

    public RippleBackground(Context context) {
        super(context);
    }

    public RippleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public RippleBackground(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.RippleBackground);
                this.f34999b = obtainStyledAttributes.getColor(a.c.RippleBackground_rb_color, getResources().getColor(a.C0554a.rippelColor));
                this.f35000c = obtainStyledAttributes.getDimension(a.c.RippleBackground_rb_strokeWidth, getResources().getDimension(a.b.rippleStrokeWidth));
                this.f35001d = obtainStyledAttributes.getDimension(a.c.RippleBackground_rb_radius, getResources().getDimension(a.b.rippleRadius));
                this.e = obtainStyledAttributes.getInt(a.c.RippleBackground_rb_duration, 3000);
                this.f = obtainStyledAttributes.getInt(a.c.RippleBackground_rb_rippleAmount, 6);
                this.h = obtainStyledAttributes.getFloat(a.c.RippleBackground_rb_scale, 6.0f);
                this.i = obtainStyledAttributes.getInt(a.c.RippleBackground_rb_type, 0);
                obtainStyledAttributes.recycle();
                this.g = this.e / this.f;
                Paint paint = new Paint();
                this.j = paint;
                paint.setAntiAlias(true);
                if (this.i == 0) {
                    this.f35000c = BitmapDescriptorFactory.HUE_RED;
                    this.j.setStyle(Paint.Style.FILL);
                } else {
                    this.j.setStyle(Paint.Style.STROKE);
                }
                this.j.setColor(this.f34999b);
                float f = this.f35001d;
                float f2 = this.f35000c;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) ((f + f2) * 2.0f), (int) ((f + f2) * 2.0f));
                this.m = layoutParams;
                layoutParams.addRule(13, -1);
                AnimatorSet animatorSet = new AnimatorSet();
                this.k = animatorSet;
                animatorSet.setDuration(this.e);
                this.k.setInterpolator(new AccelerateDecelerateInterpolator());
                this.l = new ArrayList<>();
                for (int i = 0; i < this.f; i++) {
                    a aVar = new a(getContext());
                    addView(aVar, this.m);
                    this.n.add(aVar);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(aVar, "ScaleX", 1.0f, this.h);
                    ofFloat.setRepeatCount(-1);
                    ofFloat.setRepeatMode(1);
                    ofFloat.setStartDelay(this.g * i);
                    this.l.add(ofFloat);
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(aVar, "ScaleY", 1.0f, this.h);
                    ofFloat2.setRepeatCount(-1);
                    ofFloat2.setRepeatMode(1);
                    ofFloat2.setStartDelay(this.g * i);
                    this.l.add(ofFloat2);
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(aVar, "Alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
                    ofFloat3.setRepeatCount(-1);
                    ofFloat3.setRepeatMode(1);
                    ofFloat3.setStartDelay(this.g * i);
                    this.l.add(ofFloat3);
                }
                this.k.playTogether(this.l);
                return;
            }
            throw new IllegalArgumentException("Attributes should be provided to this view,");
        }
    }

    public final void a() {
        if (!this.f34998a) {
            Iterator<a> it2 = this.n.iterator();
            while (it2.hasNext()) {
                it2.next().setVisibility(0);
            }
            this.k.start();
            this.f34998a = true;
        }
    }

    public final void b() {
        if (this.f34998a) {
            this.k.end();
            this.f34998a = false;
        }
    }
}
