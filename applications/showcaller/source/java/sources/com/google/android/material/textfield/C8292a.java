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
import com.google.android.material.textfield.TextInputLayout;
import p020b.p021a.p022k.p023a.C1433a;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a.class */
public class C8292a extends AbstractC8318e {

    /* renamed from: d */
    private final TextWatcher f37460d = new C8293a();

    /* renamed from: e */
    private final View.OnFocusChangeListener f37461e = new View$OnFocusChangeListenerC8294b();

    /* renamed from: f */
    private final TextInputLayout.AbstractC8290f f37462f = new C8295c();

    /* renamed from: g */
    private final TextInputLayout.AbstractC8291g f37463g = new C8296d();

    /* renamed from: h */
    private AnimatorSet f37464h;

    /* renamed from: i */
    private ValueAnimator f37465i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$a.class */
    public class C8293a implements TextWatcher {
        C8293a() {
            C8292a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (C8292a.this.f37509a.getSuffixText() != null) {
                return;
            }
            C8292a.this.m3989i(C8292a.m3986l(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$b.class */
    public class View$OnFocusChangeListenerC8294b implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC8294b() {
            C8292a.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C8292a.this.m3989i((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.a$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$c.class */
    public class C8295c implements TextInputLayout.AbstractC8290f {
        C8295c() {
            C8292a.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8290f
        /* renamed from: a */
        public void mo3895a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(editText.hasFocus() && C8292a.m3986l(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(C8292a.this.f37461e);
            editText.removeTextChangedListener(C8292a.this.f37460d);
            editText.addTextChangedListener(C8292a.this.f37460d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.a$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$d.class */
    public class C8296d implements TextInputLayout.AbstractC8291g {

        /* renamed from: com.google.android.material.textfield.a$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$d$a.class */
        class RunnableC8297a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ EditText f37470d;

            RunnableC8297a(EditText editText) {
                C8296d.this = r4;
                this.f37470d = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f37470d.removeTextChangedListener(C8292a.this.f37460d);
            }
        }

        C8296d() {
            C8292a.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8291g
        /* renamed from: a */
        public void mo3894a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new RunnableC8297a(editText));
            if (editText.getOnFocusChangeListener() != C8292a.this.f37461e) {
                return;
            }
            editText.setOnFocusChangeListener(null);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$e.class */
    class View$OnClickListenerC8298e implements View.OnClickListener {
        View$OnClickListenerC8298e() {
            C8292a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = C8292a.this.f37509a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            C8292a.this.f37509a.m4053V();
        }
    }

    /* renamed from: com.google.android.material.textfield.a$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$f.class */
    public class C8299f extends AnimatorListenerAdapter {
        C8299f() {
            C8292a.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C8292a.this.f37509a.setEndIconVisible(true);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$g.class */
    public class C8300g extends AnimatorListenerAdapter {
        C8300g() {
            C8292a.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8292a.this.f37509a.setEndIconVisible(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$h.class */
    public class C8301h implements ValueAnimator.AnimatorUpdateListener {
        C8301h() {
            C8292a.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C8292a.this.f37511c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.a$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/a$i.class */
    public class C8302i implements ValueAnimator.AnimatorUpdateListener {
        C8302i() {
            C8292a.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C8292a.this.f37511c.setScaleX(floatValue);
            C8292a.this.f37511c.setScaleY(floatValue);
        }
    }

    public C8292a(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: i */
    public void m3989i(boolean z) {
        boolean z2 = this.f37509a.m4064K() == z;
        if (z && !this.f37464h.isRunning()) {
            this.f37465i.cancel();
            this.f37464h.start();
            if (!z2) {
                return;
            }
            this.f37464h.end();
        } else if (z) {
        } else {
            this.f37464h.cancel();
            this.f37465i.start();
            if (!z2) {
                return;
            }
            this.f37465i.end();
        }
    }

    /* renamed from: j */
    private ValueAnimator m3988j(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C1897a.f6813a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new C8301h());
        return ofFloat;
    }

    /* renamed from: k */
    private ValueAnimator m3987k() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C1897a.f6816d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new C8302i());
        return ofFloat;
    }

    /* renamed from: l */
    public static boolean m3986l(Editable editable) {
        return editable.length() > 0;
    }

    /* renamed from: m */
    private void m3985m() {
        ValueAnimator m3987k = m3987k();
        ValueAnimator m3988j = m3988j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f37464h = animatorSet;
        animatorSet.playTogether(m3987k, m3988j);
        this.f37464h.addListener(new C8299f());
        ValueAnimator m3988j2 = m3988j(1.0f, 0.0f);
        this.f37465i = m3988j2;
        m3988j2.addListener(new C8300g());
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: a */
    public void mo3900a() {
        this.f37509a.setEndIconDrawable(C1433a.m30126d(this.f37510b, C1889e.mtrl_ic_cancel));
        TextInputLayout textInputLayout = this.f37509a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1894j.clear_text_end_icon_content_description));
        this.f37509a.setEndIconOnClickListener(new View$OnClickListenerC8298e());
        this.f37509a.m4040e(this.f37462f);
        this.f37509a.m4038f(this.f37463g);
        m3985m();
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: c */
    public void mo3943c(boolean z) {
        if (this.f37509a.getSuffixText() == null) {
            return;
        }
        m3989i(z);
    }
}
