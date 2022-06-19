package com.truecaller.wizard.internal.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/EditText$b.class */
public class EditText$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ Drawable f16549a;

    /* renamed from: b */
    public final /* synthetic */ EditText f16550b;

    public EditText$b(EditText editText, Drawable drawable) {
        this.f16550b = editText;
        this.f16549a = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f16550b.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, this.f16549a, null);
        EditText editText = this.f16550b;
        Drawable drawable = this.f16549a;
        int i = EditText.i;
        editText.c(drawable, true).start();
    }
}
