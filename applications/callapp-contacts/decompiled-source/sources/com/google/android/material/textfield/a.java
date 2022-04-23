package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/a.class */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    final TextWatcher f30889a = new TextWatcher() { // from class: com.google.android.material.textfield.a.1
        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (a.this.f30922c.f == null) {
                a.this.b(a.a(editable));
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final View.OnFocusChangeListener f30890b = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.a.2
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            boolean isEmpty = TextUtils.isEmpty(((EditText) view).getText());
            boolean z2 = true;
            a aVar = a.this;
            if (!(!isEmpty) || !z) {
                z2 = false;
            }
            aVar.b(z2);
        }
    };
    private final TextInputLayout.b f = new TextInputLayout.b() { // from class: com.google.android.material.textfield.a.3
        @Override // com.google.android.material.textfield.TextInputLayout.b
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.f30880a;
            textInputLayout.setEndIconVisible(editText.hasFocus() && a.a(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(a.this.f30890b);
            editText.removeTextChangedListener(a.this.f30889a);
            editText.addTextChangedListener(a.this.f30889a);
        }
    };
    private final TextInputLayout.c g = new TextInputLayout.c() { // from class: com.google.android.material.textfield.a.4
        @Override // com.google.android.material.textfield.TextInputLayout.c
        public final void a(TextInputLayout textInputLayout, int i) {
            final EditText editText = textInputLayout.f30880a;
            if (editText != null && i == 2) {
                editText.post(new Runnable() { // from class: com.google.android.material.textfield.a.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        editText.removeTextChangedListener(a.this.f30889a);
                    }
                });
                if (editText.getOnFocusChangeListener() == a.this.f30890b) {
                    editText.setOnFocusChangeListener(null);
                }
            }
        }
    };
    private AnimatorSet h;
    private ValueAnimator i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    private ValueAnimator a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30173a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                a.this.e.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    static /* synthetic */ boolean a(Editable editable) {
        return editable.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final void a() {
        this.f30922c.setEndIconDrawable(androidx.appcompat.a.a.a.b(this.f30923d, a.e.mtrl_ic_cancel));
        this.f30922c.setEndIconContentDescription(this.f30922c.getResources().getText(a.j.clear_text_end_icon_content_description));
        this.f30922c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.a.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Editable text = a.this.f30922c.f30880a.getText();
                if (text != null) {
                    text.clear();
                }
                a.this.f30922c.f();
            }
        });
        this.f30922c.a(this.f);
        this.f30922c.a(this.g);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30176d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                a.this.e.setScaleX(floatValue);
                a.this.e.setScaleY(floatValue);
            }
        });
        ValueAnimator a2 = a(BitmapDescriptorFactory.HUE_RED, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.h = animatorSet;
        animatorSet.playTogether(ofFloat, a2);
        this.h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                a.this.f30922c.setEndIconVisible(true);
            }
        });
        ValueAnimator a3 = a(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.i = a3;
        a3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                a.this.f30922c.setEndIconVisible(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final void a(boolean z) {
        if (this.f30922c.f != null) {
            b(z);
        }
    }

    final void b(boolean z) {
        boolean z2 = this.f30922c.e() == z;
        if (z && !this.h.isRunning()) {
            this.i.cancel();
            this.h.start();
            if (z2) {
                this.h.end();
            }
        } else if (!z) {
            this.h.cancel();
            this.i.start();
            if (z2) {
                this.i.end();
            }
        }
    }
}
