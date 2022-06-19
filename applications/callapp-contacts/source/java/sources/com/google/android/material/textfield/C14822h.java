package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.p017a.p018a.C0153a;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14646k;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/h.class */
public final class C14822h extends AbstractC14818e {

    /* renamed from: a */
    final TextWatcher f54149a = new C14646k() { // from class: com.google.android.material.textfield.h.1
        @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C14822h.this.f54122e.setChecked(!C14822h.m9934a(C14822h.this));
        }
    };

    /* renamed from: b */
    private final TextInputLayout.AbstractC14790b f54150b = new TextInputLayout.AbstractC14790b() { // from class: com.google.android.material.textfield.h.2
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14790b
        /* renamed from: a */
        public final void mo9933a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.f54005a;
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            C14822h.this.f54122e.setChecked(true ^ C14822h.m9934a(C14822h.this));
            editText.removeTextChangedListener(C14822h.this.f54149a);
            editText.addTextChangedListener(C14822h.this.f54149a);
        }
    };

    /* renamed from: f */
    private final TextInputLayout.AbstractC14791c f54151f = new TextInputLayout.AbstractC14791c() { // from class: com.google.android.material.textfield.h.3
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14791c
        /* renamed from: a */
        public final void mo9932a(TextInputLayout textInputLayout, int i) {
            final EditText editText = textInputLayout.f54005a;
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new Runnable() { // from class: com.google.android.material.textfield.h.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    editText.removeTextChangedListener(C14822h.this.f54149a);
                }
            });
        }
    };

    public C14822h(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: a */
    static /* synthetic */ boolean m9934a(C14822h c14822h) {
        EditText editText = c14822h.f54120c.f54005a;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: a */
    public final void mo9935a() {
        this.f54120c.setEndIconDrawable(C0153a.m46374b(this.f54121d, C14376a.C14381e.design_password_eye));
        this.f54120c.setEndIconContentDescription(this.f54120c.getResources().getText(C14376a.C14386j.password_toggle_content_description));
        this.f54120c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.h.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditText editText = C14822h.this.f54120c.f54005a;
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (C14822h.m9934a(C14822h.this)) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                }
                C14822h.this.f54120c.m10011f();
            }
        });
        this.f54120c.m10032a(this.f54150b);
        this.f54120c.m10031a(this.f54151f);
        EditText editText = this.f54120c.f54005a;
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
