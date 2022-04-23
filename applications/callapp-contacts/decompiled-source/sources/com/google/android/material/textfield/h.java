package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.a.a.a;
import com.google.android.material.a;
import com.google.android.material.internal.k;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/h.class */
public final class h extends e {

    /* renamed from: a  reason: collision with root package name */
    final TextWatcher f30932a = new k() { // from class: com.google.android.material.textfield.h.1
        @Override // com.google.android.material.internal.k, android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            h.this.e.setChecked(!h.a(h.this));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final TextInputLayout.b f30933b = new TextInputLayout.b() { // from class: com.google.android.material.textfield.h.2
        @Override // com.google.android.material.textfield.TextInputLayout.b
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.f30880a;
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            h.this.e.setChecked(true ^ h.a(h.this));
            editText.removeTextChangedListener(h.this.f30932a);
            editText.addTextChangedListener(h.this.f30932a);
        }
    };
    private final TextInputLayout.c f = new TextInputLayout.c() { // from class: com.google.android.material.textfield.h.3
        @Override // com.google.android.material.textfield.TextInputLayout.c
        public final void a(TextInputLayout textInputLayout, int i) {
            final EditText editText = textInputLayout.f30880a;
            if (editText != null && i == 1) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                editText.post(new Runnable() { // from class: com.google.android.material.textfield.h.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        editText.removeTextChangedListener(h.this.f30932a);
                    }
                });
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    static /* synthetic */ boolean a(h hVar) {
        EditText editText = hVar.f30922c.f30880a;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final void a() {
        this.f30922c.setEndIconDrawable(a.b(this.f30923d, a.e.design_password_eye));
        this.f30922c.setEndIconContentDescription(this.f30922c.getResources().getText(a.j.password_toggle_content_description));
        this.f30922c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.h.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditText editText = h.this.f30922c.f30880a;
                if (editText != null) {
                    int selectionEnd = editText.getSelectionEnd();
                    if (h.a(h.this)) {
                        editText.setTransformationMethod(null);
                    } else {
                        editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        editText.setSelection(selectionEnd);
                    }
                    h.this.f30922c.f();
                }
            }
        });
        this.f30922c.a(this.f30933b);
        this.f30922c.a(this.f);
        EditText editText = this.f30922c.f30880a;
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
