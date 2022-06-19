package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import p090f3.C2727a;
import p091f4.AbstractC2746k;
import p091f4.C2736a;
import p091f4.C2737b;
import p091f4.C2738c;
import p091f4.C2739d;
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a.class */
public class C1808a extends AbstractC2746k {

    /* renamed from: e */
    public final TextWatcher f6848e = new C1809a();

    /* renamed from: f */
    public final View.OnFocusChangeListener f6849f = new View$OnFocusChangeListenerC1810b();

    /* renamed from: g */
    public final TextInputLayout.AbstractC1804f f6850g = new C1811c();

    /* renamed from: h */
    public final TextInputLayout.AbstractC1805g f6851h = new C1812d();

    /* renamed from: i */
    public AnimatorSet f6852i;

    /* renamed from: j */
    public ValueAnimator f6853j;

    /* renamed from: com.google.android.material.textfield.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$a.class */
    public class C1809a implements TextWatcher {
        public C1809a() {
            C1808a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (C1808a.this.f9403a.getSuffixText() != null) {
                return;
            }
            C1808a c1808a = C1808a.this;
            c1808a.m4512e(C1808a.m4513d(c1808a));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$b.class */
    public class View$OnFocusChangeListenerC1810b implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC1810b() {
            C1808a.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C1808a c1808a = C1808a.this;
            c1808a.m4512e(C1808a.m4513d(c1808a));
        }
    }

    /* renamed from: com.google.android.material.textfield.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$c.class */
    public class C1811c implements TextInputLayout.AbstractC1804f {
        public C1811c() {
            C1808a.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1804f
        /* renamed from: a */
        public void mo4504a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(C1808a.m4513d(C1808a.this));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(C1808a.this.f6849f);
            C1808a c1808a = C1808a.this;
            c1808a.f9405c.setOnFocusChangeListener(c1808a.f6849f);
            editText.removeTextChangedListener(C1808a.this.f6848e);
            editText.addTextChangedListener(C1808a.this.f6848e);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$d.class */
    public class C1812d implements TextInputLayout.AbstractC1805g {

        /* renamed from: com.google.android.material.textfield.a$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$d$a.class */
        public class RunnableC1813a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ EditText f6858a;

            public RunnableC1813a(EditText editText) {
                C1812d.this = r4;
                this.f6858a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f6858a.removeTextChangedListener(C1808a.this.f6848e);
            }
        }

        public C1812d() {
            C1808a.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1805g
        /* renamed from: a */
        public void mo4503a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new RunnableC1813a(editText));
            if (editText.getOnFocusChangeListener() == C1808a.this.f6849f) {
                editText.setOnFocusChangeListener(null);
            }
            View.OnFocusChangeListener onFocusChangeListener = C1808a.this.f9405c.getOnFocusChangeListener();
            C1808a c1808a = C1808a.this;
            if (onFocusChangeListener != c1808a.f6849f) {
                return;
            }
            c1808a.f9405c.setOnFocusChangeListener(null);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a$e.class */
    public class View$OnClickListenerC1814e implements View.OnClickListener {
        public View$OnClickListenerC1814e() {
            C1808a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = C1808a.this.f9403a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            C1808a.this.f9403a.m4523q();
        }
    }

    public C1808a(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
    }

    /* renamed from: d */
    public static boolean m4513d(C1808a c1808a) {
        EditText editText = c1808a.f9403a.getEditText();
        return editText != null && (editText.hasFocus() || c1808a.f9405c.hasFocus()) && editText.getText().length() > 0;
    }

    @Override // p091f4.AbstractC2746k
    /* renamed from: a */
    public void mo3168a() {
        TextInputLayout textInputLayout = this.f9403a;
        int i = this.f9406d;
        int i2 = i;
        if (i == 0) {
            i2 = 2131231056;
        }
        textInputLayout.setEndIconDrawable(i2);
        TextInputLayout textInputLayout2 = this.f9403a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(2131820669));
        this.f9403a.setEndIconOnClickListener(new View$OnClickListenerC1814e());
        this.f9403a.m4539a(this.f6850g);
        this.f9403a.f6807k0.add(this.f6851h);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C2727a.f9375d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new C2739d(this));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = C2727a.f9372a;
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(100L);
        ofFloat2.addUpdateListener(new C2738c(this));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f6852i = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f6852i.addListener(new C2736a(this));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(100L);
        ofFloat3.addUpdateListener(new C2738c(this));
        this.f6853j = ofFloat3;
        ofFloat3.addListener(new C2737b(this));
    }

    @Override // p091f4.AbstractC2746k
    /* renamed from: c */
    public void mo3183c(boolean z) {
        if (this.f9403a.getSuffixText() == null) {
            return;
        }
        m4512e(z);
    }

    /* renamed from: e */
    public final void m4512e(boolean z) {
        boolean z2 = this.f9403a.m4527m() == z;
        if (z && !this.f6852i.isRunning()) {
            this.f6853j.cancel();
            this.f6852i.start();
            if (!z2) {
                return;
            }
            this.f6852i.end();
        } else if (z) {
        } else {
            this.f6852i.cancel();
            this.f6853j.start();
            if (!z2) {
                return;
            }
            this.f6853j.end();
        }
    }
}
