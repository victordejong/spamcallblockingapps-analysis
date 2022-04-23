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
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.k;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView.class */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: a  reason: collision with root package name */
    final TextInputLayout f30942a;

    /* renamed from: b  reason: collision with root package name */
    private final Chip f30943b;

    /* renamed from: c  reason: collision with root package name */
    private final EditText f30944c;

    /* renamed from: d  reason: collision with root package name */
    private TextWatcher f30945d;
    private TextView e;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView$a.class */
    final class a extends k {
        private a() {
        }

        @Override // com.google.android.material.internal.k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f30943b.setText(ChipTextInputComboView.this.b("00"));
            } else {
                ChipTextInputComboView.this.f30943b.setText(ChipTextInputComboView.this.b(editable));
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
        Chip chip = (Chip) from.inflate(a.h.material_time_chip, (ViewGroup) this, false);
        this.f30943b = chip;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(a.h.material_time_input, (ViewGroup) this, false);
        this.f30942a = textInputLayout;
        EditText editText = textInputLayout.f30880a;
        this.f30944c = editText;
        editText.setVisibility(4);
        a aVar = new a();
        this.f30945d = aVar;
        editText.addTextChangedListener(aVar);
        a();
        addView(chip);
        addView(textInputLayout);
        this.e = (TextView) findViewById(a.f.material_label);
        editText.setSaveEnabled(false);
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f30944c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(CharSequence charSequence) {
        return TimeModel.formatText(getResources(), charSequence);
    }

    public final void a(InputFilter inputFilter) {
        InputFilter[] filters = this.f30944c.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f30944c.setFilters(inputFilterArr);
    }

    public final void a(androidx.core.view.a aVar) {
        v.a(this.f30943b, aVar);
    }

    public final void a(CharSequence charSequence) {
        this.f30943b.setText(b(charSequence));
        if (!TextUtils.isEmpty(this.f30944c.getText())) {
            this.f30944c.removeTextChangedListener(this.f30945d);
            this.f30944c.setText((CharSequence) null);
            this.f30944c.addTextChangedListener(this.f30945d);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f30943b.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f30943b.setChecked(z);
        int i = 0;
        this.f30944c.setVisibility(z ? 0 : 4);
        Chip chip = this.f30943b;
        if (z) {
            i = 8;
        }
        chip.setVisibility(i);
        if (isChecked()) {
            this.f30944c.requestFocus();
            if (!TextUtils.isEmpty(this.f30944c.getText())) {
                EditText editText = this.f30944c;
                editText.setSelection(editText.getText().length());
            }
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f30943b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f30943b.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f30943b.toggle();
    }
}
