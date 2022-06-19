package com.truecaller.flashsdk.p166ui.customviews;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
/* renamed from: com.truecaller.flashsdk.ui.customviews.ArrowView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/ArrowView.class */
public class ArrowView extends AppCompatImageView {

    /* renamed from: c */
    public float f12077c = 0.0f;

    /* renamed from: d */
    public float f12078d = 0.0f;

    /* renamed from: e */
    public float f12079e = 0.0f;

    /* renamed from: f */
    public float f12080f = 0.0f;

    /* renamed from: g */
    public ObjectAnimator f12081g;

    /* renamed from: h */
    public ObjectAnimator f12082h;

    /* renamed from: i */
    public ObjectAnimator f12083i;

    /* renamed from: j */
    public ObjectAnimator f12084j;

    /* renamed from: k */
    public Drawable f12085k;

    /* renamed from: l */
    public Drawable f12086l;

    /* renamed from: m */
    public Drawable f12087m;

    /* renamed from: n */
    public Drawable f12088n;

    public ArrowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("alphaOne", 0.0f, 1.0f);
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("alphaTwo", 0.0f, 1.0f);
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("alphaThree", 0.0f, 1.0f);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("alphaFour", 0.0f, 1.0f));
        this.f12084j = ofPropertyValuesHolder;
        ofPropertyValuesHolder.setDuration(600L);
        this.f12084j.setStartDelay(900L);
        this.f12084j.setRepeatCount(-1);
        this.f12084j.setRepeatMode(2);
        this.f12084j.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this, ofFloat3);
        this.f12083i = ofPropertyValuesHolder2;
        ofPropertyValuesHolder2.setDuration(600L);
        this.f12083i.setStartDelay(800L);
        this.f12083i.setRepeatCount(-1);
        this.f12083i.setRepeatMode(2);
        this.f12083i.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator ofPropertyValuesHolder3 = ObjectAnimator.ofPropertyValuesHolder(this, ofFloat2);
        this.f12082h = ofPropertyValuesHolder3;
        ofPropertyValuesHolder3.setDuration(600L);
        this.f12082h.setStartDelay(700L);
        this.f12082h.setRepeatCount(-1);
        this.f12082h.setRepeatMode(2);
        this.f12082h.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator ofPropertyValuesHolder4 = ObjectAnimator.ofPropertyValuesHolder(this, ofFloat);
        this.f12081g = ofPropertyValuesHolder4;
        ofPropertyValuesHolder4.setDuration(600L);
        this.f12081g.setStartDelay(650L);
        this.f12081g.setRepeatCount(-1);
        this.f12081g.setRepeatMode(2);
        this.f12081g.setInterpolator(new AccelerateInterpolator());
    }

    /* renamed from: d */
    public void m35359d() {
        ObjectAnimator objectAnimator = this.f12081g;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f12081g.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f12082h;
        if (objectAnimator2 != null && objectAnimator2.isRunning()) {
            this.f12082h.cancel();
        }
        ObjectAnimator objectAnimator3 = this.f12083i;
        if (objectAnimator3 != null && objectAnimator3.isRunning()) {
            this.f12083i.cancel();
        }
        ObjectAnimator objectAnimator4 = this.f12084j;
        if (objectAnimator4 == null || !objectAnimator4.isRunning()) {
            return;
        }
        this.f12084j.cancel();
    }

    /* renamed from: e */
    public final void m35358e(Canvas canvas, Drawable drawable, float f) {
        drawable.setAlpha((int) (f * 255.0f));
        drawable.draw(canvas);
    }

    /* renamed from: f */
    public void m35357f() {
        Drawable drawable = getDrawable();
        this.f12085k = drawable;
        if (drawable == null || drawable.getConstantState() == null) {
            return;
        }
        this.f12086l = this.f12085k.getConstantState().newDrawable().mutate();
        this.f12087m = this.f12085k.getConstantState().newDrawable().mutate();
        this.f12088n = this.f12085k.getConstantState().newDrawable().mutate();
        this.f12086l.setBounds(0, this.f12085k.getBounds().bottom, this.f12086l.getIntrinsicWidth(), this.f12086l.getIntrinsicHeight() + this.f12085k.getBounds().bottom);
        this.f12087m.setBounds(0, this.f12086l.getBounds().bottom, this.f12087m.getIntrinsicWidth(), this.f12087m.getIntrinsicHeight() + this.f12086l.getBounds().bottom);
        this.f12088n.setBounds(0, this.f12087m.getBounds().bottom, this.f12088n.getIntrinsicWidth(), this.f12088n.getIntrinsicHeight() + this.f12087m.getBounds().bottom);
        this.f12081g.start();
        this.f12082h.start();
        this.f12083i.start();
        this.f12084j.start();
    }

    public float getAlphaFour() {
        return this.f12077c;
    }

    public float getAlphaOne() {
        return this.f12080f;
    }

    public float getAlphaThree() {
        return this.f12078d;
    }

    public float getAlphaTwo() {
        return this.f12079e;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35359d();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.f12085k;
        if (drawable == null || this.f12086l == null || this.f12087m == null || this.f12088n == null) {
            return;
        }
        m35358e(canvas, drawable, this.f12077c);
        m35358e(canvas, this.f12086l, this.f12078d);
        m35358e(canvas, this.f12087m, this.f12079e);
        m35358e(canvas, this.f12088n, this.f12080f);
    }

    public void setAlphaFour(float f) {
        this.f12077c = Math.round(f * 100.0f) / 100.0f;
        invalidate();
    }

    public void setAlphaOne(float f) {
        this.f12080f = Math.round(f * 100.0f) / 100.0f;
        invalidate();
    }

    public void setAlphaThree(float f) {
        this.f12078d = Math.round(f * 100.0f) / 100.0f;
        invalidate();
    }

    public void setAlphaTwo(float f) {
        this.f12079e = Math.round(f * 100.0f) / 100.0f;
        invalidate();
    }
}
