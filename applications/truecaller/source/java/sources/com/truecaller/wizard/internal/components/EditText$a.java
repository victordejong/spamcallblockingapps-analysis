package com.truecaller.wizard.internal.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/EditText$a.class */
public class EditText$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ EditText f16548a;

    public EditText$a(EditText editText) {
        this.f16548a = editText;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f16548a.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, null, null);
    }
}
