package com.truecaller.wizard.internal.components;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/EditText$c.class */
public class EditText$c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ Drawable f16551a;

    public EditText$c(EditText editText, Drawable drawable) {
        this.f16551a = drawable;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f16551a.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
