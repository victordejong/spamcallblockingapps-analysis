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
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/ClearTextEndIconDelegate.class */
public class ClearTextEndIconDelegate extends EndIconDelegate {

    /* renamed from: d */
    private final TextWatcher f11421d = new TextWatcher() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            if (ClearTextEndIconDelegate.this.f11466a.getSuffixText() == null) {
                ClearTextEndIconDelegate.this.m8888i(ClearTextEndIconDelegate.m8885l(editable));
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
    private final View.OnFocusChangeListener f11422e = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.2
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            boolean isEmpty = TextUtils.isEmpty(((EditText) view).getText());
            boolean z2 = true;
            ClearTextEndIconDelegate clearTextEndIconDelegate = ClearTextEndIconDelegate.this;
            if (!(!isEmpty) || !z) {
                z2 = false;
            }
            clearTextEndIconDelegate.m8888i(z2);
        }
    };

    /* renamed from: f */
    private final TextInputLayout.OnEditTextAttachedListener f11423f = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.3
        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        /* renamed from: a */
        public void mo8715a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(editText.hasFocus() && ClearTextEndIconDelegate.m8885l(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(ClearTextEndIconDelegate.this.f11422e);
            editText.removeTextChangedListener(ClearTextEndIconDelegate.this.f11421d);
            editText.addTextChangedListener(ClearTextEndIconDelegate.this.f11421d);
        }
    };

    /* renamed from: g */
    private final TextInputLayout.OnEndIconChangedListener f11424g = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.4
        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        /* renamed from: a */
        public void mo8714a(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText != null && i == 2) {
                editText.removeTextChangedListener(ClearTextEndIconDelegate.this.f11421d);
                if (editText.getOnFocusChangeListener() == ClearTextEndIconDelegate.this.f11422e) {
                    editText.setOnFocusChangeListener(null);
                }
            }
        }
    };

    /* renamed from: h */
    private AnimatorSet f11425h;

    /* renamed from: i */
    private ValueAnimator f11426i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClearTextEndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m8888i(boolean z) {
        boolean z2 = this.f11466a.m8783J() == z;
        if (z) {
            this.f11426i.cancel();
            this.f11425h.start();
            if (z2) {
                this.f11425h.end();
                return;
            }
            return;
        }
        this.f11425h.cancel();
        this.f11426i.start();
        if (z2) {
            this.f11426i.end();
        }
    }

    /* renamed from: j */
    private ValueAnimator m8887j(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(AnimationUtils.f9923a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                ClearTextEndIconDelegate.this.f11468c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: k */
    private ValueAnimator m8886k() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(AnimationUtils.f9926d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ClearTextEndIconDelegate.this.f11468c.setScaleX(floatValue);
                ClearTextEndIconDelegate.this.f11468c.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static boolean m8885l(@NonNull Editable editable) {
        return editable.length() > 0;
    }

    /* renamed from: m */
    private void m8884m() {
        ValueAnimator k = m8886k();
        ValueAnimator j = m8887j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f11425h = animatorSet;
        animatorSet.playTogether(k, j);
        this.f11425h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ClearTextEndIconDelegate.this.f11466a.setEndIconVisible(true);
            }
        });
        ValueAnimator j2 = m8887j(1.0f, 0.0f);
        this.f11426i = j2;
        j2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ClearTextEndIconDelegate.this.f11466a.setEndIconVisible(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: a */
    public void mo8798a() {
        this.f11466a.setEndIconDrawable(AppCompatResources.m22069d(this.f11467b, C1027R.C1029drawable.mtrl_ic_cancel));
        TextInputLayout textInputLayout = this.f11466a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1027R.string.clear_text_end_icon_content_description));
        this.f11466a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Editable text = ClearTextEndIconDelegate.this.f11466a.getEditText().getText();
                if (text != null) {
                    text.clear();
                }
            }
        });
        this.f11466a.m8758e(this.f11423f);
        this.f11466a.m8756f(this.f11424g);
        m8884m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: c */
    public void mo8845c(boolean z) {
        if (this.f11466a.getSuffixText() != null) {
            m8888i(z);
        }
    }
}
