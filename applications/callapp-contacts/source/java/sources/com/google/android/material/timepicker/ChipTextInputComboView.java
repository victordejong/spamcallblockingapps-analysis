package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
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
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.C14646k;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView.class */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: a */
    final TextInputLayout f54160a;

    /* renamed from: b */
    private final Chip f54161b;

    /* renamed from: c */
    private final EditText f54162c;

    /* renamed from: d */
    private TextWatcher f54163d;

    /* renamed from: e */
    private TextView f54164e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView$a.class */
    public final class C14830a extends C14646k {
        private C14830a() {
            ChipTextInputComboView.this = r4;
        }

        @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f54161b.setText(ChipTextInputComboView.this.m9916b("00"));
            } else {
                ChipTextInputComboView.this.f54161b.setText(ChipTextInputComboView.this.m9916b(editable));
            }
        }
    }

    public ChipTextInputComboView(Context context) {
        this(context, null);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(C14376a.C14384h.material_time_chip, (ViewGroup) this, false);
        this.f54161b = chip;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(C14376a.C14384h.material_time_input, (ViewGroup) this, false);
        this.f54160a = textInputLayout;
        EditText editText = textInputLayout.f54005a;
        this.f54162c = editText;
        editText.setVisibility(4);
        C14830a c14830a = new C14830a();
        this.f54163d = c14830a;
        editText.addTextChangedListener(c14830a);
        m9922a();
        addView(chip);
        addView(textInputLayout);
        this.f54164e = (TextView) findViewById(C14376a.C14382f.material_label);
        editText.setSaveEnabled(false);
    }

    /* renamed from: a */
    private void m9922a() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f54162c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    /* renamed from: b */
    public String m9916b(CharSequence charSequence) {
        return TimeModel.formatText(getResources(), charSequence);
    }

    /* renamed from: a */
    public final void m9921a(InputFilter inputFilter) {
        InputFilter[] filters = this.f54162c.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f54162c.setFilters(inputFilterArr);
    }

    /* renamed from: a */
    public final void m9920a(C0865a c0865a) {
        C0926v.m44123a(this.f54161b, c0865a);
    }

    /* renamed from: a */
    public final void m9917a(CharSequence charSequence) {
        this.f54161b.setText(m9916b(charSequence));
        if (!TextUtils.isEmpty(this.f54162c.getText())) {
            this.f54162c.removeTextChangedListener(this.f54163d);
            this.f54162c.setText((CharSequence) null);
            this.f54162c.addTextChangedListener(this.f54163d);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f54161b.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m9922a();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f54161b.setChecked(z);
        this.f54162c.setVisibility(z ? 0 : 4);
        Chip chip = this.f54161b;
        int i = 0;
        if (z) {
            i = 8;
        }
        chip.setVisibility(i);
        if (isChecked()) {
            this.f54162c.requestFocus();
            if (TextUtils.isEmpty(this.f54162c.getText())) {
                return;
            }
            EditText editText = this.f54162c;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f54161b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f54161b.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f54161b.toggle();
    }
}
