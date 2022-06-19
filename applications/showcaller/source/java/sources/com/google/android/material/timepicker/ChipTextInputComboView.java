package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.C8202k;
import com.google.android.material.textfield.TextInputLayout;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView.class */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: d */
    private final Chip f37549d;

    /* renamed from: e */
    private final TextInputLayout f37550e;

    /* renamed from: f */
    private final EditText f37551f;

    /* renamed from: g */
    private TextWatcher f37552g;

    /* renamed from: h */
    private TextView f37553h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView$b.class */
    public class C8330b extends C8202k {
        private C8330b() {
            ChipTextInputComboView.this = r4;
        }

        @Override // com.google.android.material.internal.C8202k, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f37549d.setText(ChipTextInputComboView.this.m3878c("00"));
            } else {
                ChipTextInputComboView.this.f37549d.setText(ChipTextInputComboView.this.m3878c(editable));
            }
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(C1892h.material_time_chip, (ViewGroup) this, false);
        this.f37549d = chip;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(C1892h.material_time_input, (ViewGroup) this, false);
        this.f37550e = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f37551f = editText;
        editText.setVisibility(4);
        C8330b c8330b = new C8330b();
        this.f37552g = c8330b;
        editText.addTextChangedListener(c8330b);
        m3877d();
        addView(chip);
        addView(textInputLayout);
        this.f37553h = (TextView) findViewById(C1890f.material_label);
        editText.setSaveEnabled(false);
    }

    /* renamed from: c */
    public String m3878c(CharSequence charSequence) {
        return TimeModel.m3847a(getResources(), charSequence);
    }

    /* renamed from: d */
    private void m3877d() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f37551f.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f37549d.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3877d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f37549d.setChecked(z);
        this.f37551f.setVisibility(z ? 0 : 4);
        Chip chip = this.f37549d;
        int i = 0;
        if (z) {
            i = 8;
        }
        chip.setVisibility(i);
        if (isChecked()) {
            this.f37551f.requestFocus();
            if (TextUtils.isEmpty(this.f37551f.getText())) {
                return;
            }
            EditText editText = this.f37551f;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f37549d.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f37549d.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f37549d.toggle();
    }
}
