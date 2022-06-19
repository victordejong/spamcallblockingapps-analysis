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
import androidx.appcompat.p017a.p018a.C0153a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/a.class */
public final class C14792a extends AbstractC14818e {

    /* renamed from: a */
    final TextWatcher f54071a = new TextWatcher() { // from class: com.google.android.material.textfield.a.1
        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (C14792a.this.f54120c.f54046f != null) {
                return;
            }
            C14792a.this.m9988b(C14792a.m9990a(editable));
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: b */
    final View.OnFocusChangeListener f54072b = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.a.2
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            C14792a.this.m9988b((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z);
        }
    };

    /* renamed from: f */
    private final TextInputLayout.AbstractC14790b f54073f = new TextInputLayout.AbstractC14790b() { // from class: com.google.android.material.textfield.a.3
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14790b
        /* renamed from: a */
        public final void mo9933a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.f54005a;
            textInputLayout.setEndIconVisible(editText.hasFocus() && C14792a.m9990a(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(C14792a.this.f54072b);
            editText.removeTextChangedListener(C14792a.this.f54071a);
            editText.addTextChangedListener(C14792a.this.f54071a);
        }
    };

    /* renamed from: g */
    private final TextInputLayout.AbstractC14791c f54074g = new TextInputLayout.AbstractC14791c() { // from class: com.google.android.material.textfield.a.4
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14791c
        /* renamed from: a */
        public final void mo9932a(TextInputLayout textInputLayout, int i) {
            final EditText editText = textInputLayout.f54005a;
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new Runnable() { // from class: com.google.android.material.textfield.a.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    editText.removeTextChangedListener(C14792a.this.f54071a);
                }
            });
            if (editText.getOnFocusChangeListener() != C14792a.this.f54072b) {
                return;
            }
            editText.setOnFocusChangeListener(null);
        }
    };

    /* renamed from: h */
    private AnimatorSet f54075h;

    /* renamed from: i */
    private ValueAnimator f54076i;

    public C14792a(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: a */
    private ValueAnimator m9989a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C14389a.f52368a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C14792a.this.f54122e.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: a */
    static /* synthetic */ boolean m9990a(Editable editable) {
        return editable.length() > 0;
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: a */
    public final void mo9935a() {
        this.f54120c.setEndIconDrawable(C0153a.m46374b(this.f54121d, C14376a.C14381e.mtrl_ic_cancel));
        this.f54120c.setEndIconContentDescription(this.f54120c.getResources().getText(C14376a.C14386j.clear_text_end_icon_content_description));
        this.f54120c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.a.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Editable text = C14792a.this.f54120c.f54005a.getText();
                if (text != null) {
                    text.clear();
                }
                C14792a.this.f54120c.m10011f();
            }
        });
        this.f54120c.m10032a(this.f54073f);
        this.f54120c.m10031a(this.f54074g);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C14389a.f52371d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C14792a.this.f54122e.setScaleX(floatValue);
                C14792a.this.f54122e.setScaleY(floatValue);
            }
        });
        ValueAnimator m9989a = m9989a(BitmapDescriptorFactory.HUE_RED, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f54075h = animatorSet;
        animatorSet.playTogether(ofFloat, m9989a);
        this.f54075h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C14792a.this.f54120c.setEndIconVisible(true);
            }
        });
        ValueAnimator m9989a2 = m9989a(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f54076i = m9989a2;
        m9989a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C14792a.this.f54120c.setEndIconVisible(false);
            }
        });
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: a */
    public final void mo9960a(boolean z) {
        if (this.f54120c.f54046f == null) {
            return;
        }
        m9988b(z);
    }

    /* renamed from: b */
    final void m9988b(boolean z) {
        boolean z2 = this.f54120c.m10013e() == z;
        if (z && !this.f54075h.isRunning()) {
            this.f54076i.cancel();
            this.f54075h.start();
            if (!z2) {
                return;
            }
            this.f54075h.end();
        } else if (z) {
        } else {
            this.f54075h.cancel();
            this.f54076i.start();
            if (!z2) {
                return;
            }
            this.f54076i.end();
        }
    }
}
