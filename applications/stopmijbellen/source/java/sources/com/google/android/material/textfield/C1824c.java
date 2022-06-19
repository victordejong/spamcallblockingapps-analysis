package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import p091f4.AbstractC2746k;
import p262v3.C4633o;
/* renamed from: com.google.android.material.textfield.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c.class */
public class C1824c extends AbstractC2746k {

    /* renamed from: e */
    public final TextWatcher f6884e = new C1825a();

    /* renamed from: f */
    public final TextInputLayout.AbstractC1804f f6885f = new C1826b();

    /* renamed from: g */
    public final TextInputLayout.AbstractC1805g f6886g = new C1827c();

    /* renamed from: com.google.android.material.textfield.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c$a.class */
    public class C1825a extends C4633o {
        public C1825a() {
            C1824c.this = r4;
        }

        @Override // p262v3.C4633o, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1824c c1824c = C1824c.this;
            c1824c.f9405c.setChecked(!C1824c.m4505d(c1824c));
        }
    }

    /* renamed from: com.google.android.material.textfield.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c$b.class */
    public class C1826b implements TextInputLayout.AbstractC1804f {
        public C1826b() {
            C1824c.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1804f
        /* renamed from: a */
        public void mo4504a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            C1824c c1824c = C1824c.this;
            c1824c.f9405c.setChecked(!C1824c.m4505d(c1824c));
            editText.removeTextChangedListener(C1824c.this.f6884e);
            editText.addTextChangedListener(C1824c.this.f6884e);
        }
    }

    /* renamed from: com.google.android.material.textfield.c$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c$c.class */
    public class C1827c implements TextInputLayout.AbstractC1805g {

        /* renamed from: com.google.android.material.textfield.c$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c$c$a.class */
        public class RunnableC1828a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ EditText f6890a;

            public RunnableC1828a(EditText editText) {
                C1827c.this = r4;
                this.f6890a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f6890a.removeTextChangedListener(C1824c.this.f6884e);
            }
        }

        public C1827c() {
            C1824c.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1805g
        /* renamed from: a */
        public void mo4503a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new RunnableC1828a(editText));
        }
    }

    /* renamed from: com.google.android.material.textfield.c$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c$d.class */
    public class View$OnClickListenerC1829d implements View.OnClickListener {
        public View$OnClickListenerC1829d() {
            C1824c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = C1824c.this.f9403a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (C1824c.m4505d(C1824c.this)) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            C1824c.this.f9403a.m4523q();
        }
    }

    public C1824c(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
    }

    /* renamed from: d */
    public static boolean m4505d(C1824c c1824c) {
        EditText editText = c1824c.f9403a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // p091f4.AbstractC2746k
    /* renamed from: a */
    public void mo3168a() {
        TextInputLayout textInputLayout = this.f9403a;
        int i = this.f9406d;
        int i2 = i;
        if (i == 0) {
            i2 = 2131230895;
        }
        textInputLayout.setEndIconDrawable(i2);
        TextInputLayout textInputLayout2 = this.f9403a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(2131820944));
        this.f9403a.setEndIconOnClickListener(new View$OnClickListenerC1829d());
        this.f9403a.m4539a(this.f6885f);
        this.f9403a.f6807k0.add(this.f6886g);
        EditText editText = this.f9403a.getEditText();
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
