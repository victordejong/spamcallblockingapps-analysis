package com.razorpay;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
/* loaded from: classes3-dex2jar.jar:com/razorpay/M$_3_.class */
public final class M$_3_ {

    /* renamed from: a */
    private Context f9401a;

    /* renamed from: b */
    private ViewGroup f9402b;

    /* renamed from: c */
    private View f9403c;

    /* renamed from: d */
    private float f9404d;

    /* renamed from: e */
    private int f9405e;

    /* renamed from: f */
    private String f9406f;

    public M$_3_(Context context, ViewGroup viewGroup) {
        this(context, viewGroup, null);
    }

    public M$_3_(Context context, ViewGroup viewGroup, String str) {
        int i;
        this.f9406f = str;
        this.f9401a = context;
        this.f9402b = viewGroup;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f9404d = displayMetrics.widthPixels / displayMetrics.density;
        this.f9405e = m36093b(4);
        this.f9403c = new View(this.f9401a);
        this.f9403c.setLayoutParams(new RelativeLayout.LayoutParams(0, this.f9405e));
        if (TextUtils.isEmpty(this.f9406f)) {
            TypedValue typedValue = new TypedValue();
            i = this.f9401a.getTheme().resolveAttribute(16843829, typedValue, true) ? typedValue.data : Color.parseColor(BaseConstants.DEFAULT_PROGRESS_COLOR);
        } else {
            i = Color.parseColor(this.f9406f);
        }
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * 0.8f};
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{i, Color.HSVToColor(fArr)});
        gradientDrawable.setCornerRadius(0.0f);
        this.f9403c.setBackgroundDrawable(gradientDrawable);
        this.f9402b.addView(this.f9403c);
    }

    /* renamed from: a */
    public void m36095a(int i, int i2) {
        X$_8_ x$_8_ = new X$_8_(this.f9403c, m36093b((int) ((this.f9404d * i) / 100.0f)));
        x$_8_.setDuration(i2);
        this.f9403c.startAnimation(x$_8_);
        x$_8_.setAnimationListener(new Animation.AnimationListener(this) { // from class: com.razorpay.i_$z_
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        });
    }

    /* renamed from: b */
    private int m36093b(int i) {
        return (int) TypedValue.applyDimension(1, i, this.f9401a.getResources().getDisplayMetrics());
    }

    /* renamed from: c */
    private void m36092c(int i) {
        X$_8_ x$_8_ = new X$_8_(this.f9403c, m36093b((int) this.f9404d));
        x$_8_.setDuration(200L);
        this.f9403c.startAnimation(x$_8_);
        x$_8_.setAnimationListener(new Animation.AnimationListener() { // from class: com.razorpay.g$$C_
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                M$_3_.this.m36095a(0, 10);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        });
    }

    /* renamed from: a */
    public final void m36097a() {
        m36092c(200);
    }

    /* renamed from: a */
    public final void m36096a(int i) {
        if (i == 100) {
            m36092c(200);
        } else {
            m36095a(i, 500);
        }
    }
}
