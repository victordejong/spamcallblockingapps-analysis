package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.C8202k;
import com.google.android.material.textfield.TextInputLayout;
import p020b.p021a.p022k.p023a.C1433a;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1894j;
/* renamed from: com.google.android.material.textfield.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h.class */
public class C8322h extends AbstractC8318e {

    /* renamed from: d */
    private final TextWatcher f37538d = new C8323a();

    /* renamed from: e */
    private final TextInputLayout.AbstractC8290f f37539e = new C8324b();

    /* renamed from: f */
    private final TextInputLayout.AbstractC8291g f37540f = new C8325c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h$a.class */
    public class C8323a extends C8202k {
        C8323a() {
            C8322h.this = r4;
        }

        @Override // com.google.android.material.internal.C8202k, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C8322h c8322h = C8322h.this;
            c8322h.f37511c.setChecked(!c8322h.m3897g());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.h$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h$b.class */
    public class C8324b implements TextInputLayout.AbstractC8290f {
        C8324b() {
            C8322h.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8290f
        /* renamed from: a */
        public void mo3895a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            C8322h c8322h = C8322h.this;
            c8322h.f37511c.setChecked(!c8322h.m3897g());
            editText.removeTextChangedListener(C8322h.this.f37538d);
            editText.addTextChangedListener(C8322h.this.f37538d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.h$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h$c.class */
    public class C8325c implements TextInputLayout.AbstractC8291g {

        /* renamed from: com.google.android.material.textfield.h$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h$c$a.class */
        class RunnableC8326a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ EditText f37544d;

            RunnableC8326a(EditText editText) {
                C8325c.this = r4;
                this.f37544d = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f37544d.removeTextChangedListener(C8322h.this.f37538d);
            }
        }

        C8325c() {
            C8322h.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8291g
        /* renamed from: a */
        public void mo3894a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new RunnableC8326a(editText));
        }
    }

    /* renamed from: com.google.android.material.textfield.h$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/h$d.class */
    class View$OnClickListenerC8327d implements View.OnClickListener {
        View$OnClickListenerC8327d() {
            C8322h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = C8322h.this.f37509a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (C8322h.this.m3897g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            C8322h.this.f37509a.m4053V();
        }
    }

    public C8322h(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: g */
    public boolean m3897g() {
        EditText editText = this.f37509a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: h */
    private static boolean m3896h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: a */
    public void mo3900a() {
        this.f37509a.setEndIconDrawable(C1433a.m30126d(this.f37510b, C1889e.design_password_eye));
        TextInputLayout textInputLayout = this.f37509a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1894j.password_toggle_content_description));
        this.f37509a.setEndIconOnClickListener(new View$OnClickListenerC8327d());
        this.f37509a.m4040e(this.f37539e);
        this.f37509a.m4038f(this.f37540f);
        EditText editText = this.f37509a.getEditText();
        if (m3896h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
