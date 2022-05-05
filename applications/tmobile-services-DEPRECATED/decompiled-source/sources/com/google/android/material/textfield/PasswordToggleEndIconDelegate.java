package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.C1027R;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/PasswordToggleEndIconDelegate.class */
public class PasswordToggleEndIconDelegate extends EndIconDelegate {

    /* renamed from: d */
    private final TextWatcher f11500d = new TextWatcher() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = PasswordToggleEndIconDelegate.this;
            passwordToggleEndIconDelegate.f11468c.setChecked(!passwordToggleEndIconDelegate.m8795g());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: e */
    private final TextInputLayout.OnEditTextAttachedListener f11501e = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.2
        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        /* renamed from: a */
        public void mo8715a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = PasswordToggleEndIconDelegate.this;
            passwordToggleEndIconDelegate.f11468c.setChecked(!passwordToggleEndIconDelegate.m8795g());
            editText.removeTextChangedListener(PasswordToggleEndIconDelegate.this.f11500d);
            editText.addTextChangedListener(PasswordToggleEndIconDelegate.this.f11500d);
        }
    };

    /* renamed from: f */
    private final TextInputLayout.OnEndIconChangedListener f11502f = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.3
        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        /* renamed from: a */
        public void mo8714a(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText != null && i == 1) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                editText.removeTextChangedListener(PasswordToggleEndIconDelegate.this.f11500d);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public PasswordToggleEndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public boolean m8795g() {
        EditText editText = this.f11466a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: h */
    private static boolean m8794h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: a */
    public void mo8798a() {
        this.f11466a.setEndIconDrawable(AppCompatResources.m22069d(this.f11467b, C1027R.C1029drawable.design_password_eye));
        TextInputLayout textInputLayout = this.f11466a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1027R.string.password_toggle_content_description));
        this.f11466a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditText editText = PasswordToggleEndIconDelegate.this.f11466a.getEditText();
                if (editText != null) {
                    int selectionEnd = editText.getSelectionEnd();
                    if (PasswordToggleEndIconDelegate.this.m8795g()) {
                        editText.setTransformationMethod(null);
                    } else {
                        editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        editText.setSelection(selectionEnd);
                    }
                }
            }
        });
        this.f11466a.m8758e(this.f11501e);
        this.f11466a.m8756f(this.f11502f);
        EditText editText = this.f11466a.getEditText();
        if (m8794h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
