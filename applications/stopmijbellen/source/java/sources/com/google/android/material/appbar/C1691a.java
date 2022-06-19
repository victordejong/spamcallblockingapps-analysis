package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.google.android.material.appbar.AppBarLayout;
import p029c4.C0822f;
/* renamed from: com.google.android.material.appbar.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/a.class */
public class C1691a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C0822f f6259a;

    /* renamed from: b */
    public final /* synthetic */ AppBarLayout f6260b;

    public C1691a(AppBarLayout appBarLayout, C0822f c0822f) {
        this.f6260b = appBarLayout;
        this.f6259a = c0822f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f6259a.m7315p(floatValue);
        Drawable drawable = this.f6260b.f6241q;
        if (drawable instanceof C0822f) {
            ((C0822f) drawable).m7315p(floatValue);
        }
        for (AppBarLayout.AbstractC1690d abstractC1690d : this.f6260b.f6239o) {
            abstractC1690d.m4767a(floatValue, this.f6259a.f3030u);
        }
    }
}
