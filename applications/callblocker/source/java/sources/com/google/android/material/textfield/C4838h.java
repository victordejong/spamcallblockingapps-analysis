package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.p008a.p009a.C0094a;
import com.google.android.material.C4492a;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/h.class */
public class C4838h extends AbstractC4834e {

    /* renamed from: d */
    private final TextWatcher f20877d = new TextWatcher() { // from class: com.google.android.material.textfield.h.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4838h.this.f20850c.setChecked(!C4838h.this.m2227c());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: e */
    private final TextInputLayout.AbstractC4809b f20878e = new TextInputLayout.AbstractC4809b() { // from class: com.google.android.material.textfield.h.2
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC4809b
        /* renamed from: a */
        public void mo2226a(TextInputLayout textInputLayout) {
            boolean z = true;
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            CheckableImageButton checkableImageButton = C4838h.this.f20850c;
            if (C4838h.this.m2227c()) {
                z = false;
            }
            checkableImageButton.setChecked(z);
            editText.removeTextChangedListener(C4838h.this.f20877d);
            editText.addTextChangedListener(C4838h.this.f20877d);
        }
    };

    /* renamed from: f */
    private final TextInputLayout.AbstractC4810c f20879f = new TextInputLayout.AbstractC4810c() { // from class: com.google.android.material.textfield.h.3
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC4810c
        /* renamed from: a */
        public void mo2225a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    };

    public C4838h(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: c */
    public boolean m2227c() {
        EditText editText = this.f20848a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // com.google.android.material.textfield.AbstractC4834e
    /* renamed from: a */
    public void mo2230a() {
        this.f20848a.setEndIconDrawable(C0094a.m22275b(this.f20849b, C4492a.C4497e.design_password_eye));
        this.f20848a.setEndIconContentDescription(this.f20848a.getResources().getText(C4492a.C4502j.password_toggle_content_description));
        this.f20848a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.h.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditText editText = C4838h.this.f20848a.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (C4838h.this.m2227c()) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd < 0) {
                    return;
                }
                editText.setSelection(selectionEnd);
            }
        });
        this.f20848a.m2357a(this.f20878e);
        this.f20848a.m2356a(this.f20879f);
    }
}
