package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.p008a.p009a.C0094a;
import com.google.android.material.C4492a;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a.class */
public class C4813a extends AbstractC4834e {

    /* renamed from: d */
    private final TextWatcher f20810d = new TextWatcher() { // from class: com.google.android.material.textfield.a.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!C4813a.m2312b(editable)) {
                C4813a.this.f20812f.cancel();
                C4813a.this.f20813g.start();
            } else if (C4813a.this.f20848a.m2340e()) {
            } else {
                C4813a.this.f20813g.cancel();
                C4813a.this.f20812f.start();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: e */
    private final TextInputLayout.AbstractC4809b f20811e = new TextInputLayout.AbstractC4809b() { // from class: com.google.android.material.textfield.a.2
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC4809b
        /* renamed from: a */
        public void mo2226a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(C4813a.m2312b(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.removeTextChangedListener(C4813a.this.f20810d);
            editText.addTextChangedListener(C4813a.this.f20810d);
        }
    };

    /* renamed from: f */
    private AnimatorSet f20812f;

    /* renamed from: g */
    private ValueAnimator f20813g;

    public C4813a(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: a */
    private ValueAnimator m2313a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C4505a.f19569a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4813a.this.f20850c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: b */
    public static boolean m2312b(Editable editable) {
        return editable.length() > 0;
    }

    /* renamed from: c */
    private void m2310c() {
        ValueAnimator m2308d = m2308d();
        ValueAnimator m2313a = m2313a(0.0f, 1.0f);
        this.f20812f = new AnimatorSet();
        this.f20812f.playTogether(m2308d, m2313a);
        this.f20812f.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C4813a.this.f20848a.setEndIconVisible(true);
            }
        });
        this.f20813g = m2313a(1.0f, 0.0f);
        this.f20813g.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4813a.this.f20848a.setEndIconVisible(false);
            }
        });
    }

    /* renamed from: d */
    private ValueAnimator m2308d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C4505a.f19572d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C4813a.this.f20850c.setScaleX(floatValue);
                C4813a.this.f20850c.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    @Override // com.google.android.material.textfield.AbstractC4834e
    /* renamed from: a */
    public void mo2230a() {
        this.f20848a.setEndIconDrawable(C0094a.m22275b(this.f20849b, C4492a.C4497e.mtrl_ic_cancel));
        this.f20848a.setEndIconContentDescription(this.f20848a.getResources().getText(C4492a.C4502j.clear_text_end_icon_content_description));
        this.f20848a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4813a.this.f20848a.getEditText().setText((CharSequence) null);
            }
        });
        this.f20848a.m2357a(this.f20811e);
        m2310c();
    }
}
